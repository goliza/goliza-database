CREATE PROCEDURE [dbo].[Proc_PendenciaListar] --[dbo].[Proc_PendenciaListar] null,null,null,null,null,null,null,null,null,null,1,null,1,0,10, 29
	@idEmpresaRemetente int, 
	@idEmpresaDestinatario int, 
	@inicioPeriodoCriacao varchar (15), 
	@fimPeriodoCriacao varchar (15), 
	@inicioPeriodoVencimento varchar (15), 
	@fimPeriodoVencimento varchar (15),
	@email varchar (200),
	@assunto varchar (200),
	@motivoPendencia int,
	@subgrupo int,
	@status int,
	@ordenarPor int,
	@idUsuario int,
	@page int = 0, 
	@pageSize int = 10,
	@idEmpresaSelecionada int
AS 
BEGIN
	
	set dateformat dmy
	
	if len(@inicioPeriodoCriacao) > 0
	set @inicioPeriodoCriacao = CONCAT(CONVERT(varchar(10), @inicioPeriodoCriacao, 103), ' 00:00:00')

	if len(@inicioPeriodoVencimento) > 0
	set @inicioPeriodoVencimento = CONCAT(CONVERT(varchar(10), @inicioPeriodoVencimento, 103), ' 00:00:00')

	if len(@fimPeriodoCriacao) > 0
	set @fimPeriodoCriacao = CONCAT(CONVERT(varchar(10),@fimPeriodoCriacao, 103), ' 23:59:59')

	if len(@fimPeriodoVencimento) > 0
	set @fimPeriodoVencimento = CONCAT(CONVERT(varchar(10),@fimPeriodoVencimento, 103), ' 23:59:59')
	
	SELECT 
		idPendencia,
		AssuntoPendencia,
		MotivoPendencia, --CAMPO NOVO
		IdGrupoInformacao,
		StatusPendencia,
		CnpjRemetente,
		RazaoRemetente,
		CnpjDestinatario,
		RazaoDestinatario,
		DataCriacao,
		DataUltimaAlteracao,
		DataPrevisaoConclusao, --CAMPO NOVO
		emailRemetente,
		EmailDestinatario,
		DescricaoPendencia, --Observacao
		DescricaoEncerramento, --Resolucao
		idTipoPendencia,
		emailEncerramento
	FROM (
		SELECT
			p.idPendencia,
			p.AssuntoPendencia,
			p.MotivoPendencia, --CAMPO NOVO
			p.IdGrupoInformacao,
			p.StatusPendencia,
			CnpjRemetente = remetente.cnpjEmpresa,
			RazaoRemetente = 
				iif(isnull(remetente.NomeFantasiaEmpresa,'') = '', 
					remetente.RazaoSocialEmpresa, 
					remetente.NomeFantasiaEmpresa),
			CnpjDestinatario = destinatario.cnpjEmpresa,
			RazaoDestinatario = 
				iif(isnull(destinatario.NomeFantasiaEmpresa,'') = '', 
					destinatario.RazaoSocialEmpresa, 
					destinatario.NomeFantasiaEmpresa),
			p.DataCriacao,
			p.DataUltimaAlteracao,
			p.DataPrevisaoConclusao, --CAMPO NOVO
			emailRemetente = remetente.EmailUsuario,
			p.EmailDestinatario,
			p.DescricaoPendencia, --Observacao
			p.DescricaoEncerramento, --Resolucao
			p.idTipoPendencia ,
			emailEncerramento = (select _u.LoginUsuario from usuario _u where p.idUsuarioUltimaAlteracao = _u.idUsuario)
		FROM pendencia p
		OUTER APPLY (
			select 
				_er.idEmpresaReceptora,
				_er.CNPJEmpresa,
				_er.RazaoSocialEmpresa,
				_er.NomeFantasiaEmpresa,
				_u.EmailUsuario,
				_ue.idUsuarioEmpresa
				,_u.idUsuario
			from EmpresaReceptora _er 
			inner join UsuarioEmpresa _ue on _er.idEmpresaReceptora = _ue.idEmpresa
			inner join usuario _u on _ue.idUsuario = _u.idUsuario
			where _ue.idUsuarioEmpresa = p.idUsuarioEmpresa
			--and _u.idUsuario = @idUsuario
		) remetente
		OUTER APPLY (
			select 
				_er.idEmpresaReceptora,
				_er.CNPJEmpresa,
				_er.RazaoSocialEmpresa,
				_er.NomeFantasiaEmpresa
				,_u.idUsuario
				from EmpresaReceptora _er
				inner join UsuarioEmpresa _ue on _er.idEmpresaReceptora = _ue.idEmpresa
				inner join usuario _u on _ue.idUsuario = _u.idUsuario
			where _er.idEmpresaReceptora = p.idEmpresaDestinataria
			--and _u.idUsuario = @idUsuario
			--and (@idEmpresaDestinatario IS NOT NULL OR _uE.idUsuario = @idUsuario)
		) destinatario
		WHERE 1=1
		AND (remetente.idUsuario = @idUsuario or (@idEmpresaDestinatario IS NOT NULL OR destinatario.idUsuario = @idUsuario))
		AND 
		(
			(
				(
					-- A EMPRESA SELECIONADA É REMETENTE OU É DESTINATARIA?
					remetente.idEmpresaReceptora = @idEmpresaSelecionada or destinatario.idEmpresaReceptora = @idEmpresaSelecionada
				)
				--[OU] EXISTE OU EXISTIU (CHECAGEM POR DATA E STATUS), CONEXÃO PARA A EMPRESA SELECIONADA
				or p.IdTipoPendencia = 2 and p.idEmpresaDestinataria in (
					select c.EmpresaConectadaId from Conexoes c 
					where c.EmpresaId = @idEmpresaSelecionada
						and (c.Status = 2 or (c.Status in (1,3) and p.DataCriacao <= c.DataAlteracao))
						and c.Valida = 1
					union
					select c.EmpresaId from Conexoes c 
					where c.EmpresaConectadaId = @idEmpresaSelecionada
						and (c.Status = 2 or (c.Status in (1,3) and p.DataCriacao <= c.DataAlteracao))
						and c.Valida = 1
				)
			)
		)
	
		--EMPRESA REMETENTE
		AND (isnull(@idEmpresaRemetente, 0) = 
			case when @idEmpresaRemetente > 0
			then remetente.idEmpresaReceptora
			else 0
			end)

		--EMPRESA DESTINATARIA
		AND (isnull(@idEmpresaDestinatario, 0) = 
			case when @idEmpresaDestinatario > 0
			then destinatario.idEmpresaReceptora
			else 0
			end)

		--PERÍODO CRIAÇÃO PENDENCIA
		AND ((p.DataCriacao between @inicioPeriodoCriacao AND @fimPeriodoCriacao) OR (@inicioPeriodoCriacao IS NULL AND @fimPeriodoCriacao IS NULL))

		--PERÍODO VENCIMENTO DOCUMENTO
		AND ((p.DataPrevisaoConclusao between @inicioPeriodoVencimento AND @fimPeriodoVencimento) OR (@inicioPeriodoVencimento IS NULL AND @fimPeriodoVencimento IS NULL))

		--EMAIL DESTINATÁRIO
		AND (@email = '' or p.EmailDestinatario like concat('%',@email, '%'))

		--ASSUNTO
		AND (@assunto = '' or p.AssuntoPendencia like concat('%',@assunto, '%'))

		--MOTIVO PENDENCIA
		AND	(isnull(@motivoPendencia, 0) = 
			case when @motivoPendencia > 0
			then p.MotivoPendencia
			else 0
			end)

		--SUBGRUPO
		AND	(isnull(@subgrupo, 0) = 
			case when @subgrupo > 0
			then p.idGrupoInformacao
			else 0
			end)

		--STATUS
		AND	(isnull(@status, 2) = 
			case when @status >= 0
			then p.StatusPendencia
			else 2
			end)

	) as tb

	GROUP BY
		idPendencia,
		AssuntoPendencia,
		MotivoPendencia, --CAMPO NOVO
		IdGrupoInformacao,
		StatusPendencia,
		CnpjRemetente,
		RazaoRemetente,
		CnpjDestinatario,
		RazaoDestinatario,
		DataCriacao,
		DataUltimaAlteracao,
		DataPrevisaoConclusao, --CAMPO NOVO
		emailRemetente,
		EmailDestinatario,
		DescricaoPendencia, --Observacao
		DescricaoEncerramento, --Resolucao
		idTipoPendencia,
		emailEncerramento

	ORDER BY
		CASE 
		WHEN @ordenarPor = 1 THEN tb.DataCriacao -- MAIS RECENTES
		WHEN @ordenarPor = 3 THEN tb.DataPrevisaoConclusao -- VENCIMENTO PROXIMO
		WHEN @ordenarPor = 4 THEN tb.DataUltimaAlteracao --RESOLUÇÃO PRÓXIMA
		END DESC,
		CASE
		WHEN @ordenarPor = 2 THEN tb.DataCriacao -- MAIS ANTIGAS
		END ASC

	OFFSET (@page * @pageSize) ROW
	FETCH NEXT @pageSize ROWS ONLY
END