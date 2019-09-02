
CREATE PROCEDURE [dbo].[Proc_PendenciaListar_DoSistema] -- [dbo].[Proc_PendenciaListar_DoSistema] 2
	@idUsuario int, 
	@statusPendencia bit = 1,
	@mesAno varchar(10) = '',
	@dataInicio datetime = NULL, 
	@dataFim datetime = NULL,
	@subgrupo int = 0, 
	@Inicio INT = 0, 
	@Total INT = 10,
	@isSistema bit = 1,
	@idEmpresaDestino INT = 0
AS 
BEGIN

	set dateformat dmy

	if(ISNULL(@mesAno, '') = '')
	set @mesAno = ''
	else
	set @mesAno = CONCAT('01/', @mesAno)

	SELECT 
		p.idPendencia
		,p.idUsuarioEmpresa
		,p.idEmpresaDestinataria
		,p.EmailDestinatario
		,p.AssuntoPendencia
		,p.idGrupoInformacao
		,p.DescricaoPendencia
		,p.StatusPendencia
		,p.idUsuarioCriacao
		,p.DataCriacao
		,p.idUsuarioUltimaAlteracao
		,UsuarioEmailUltimaInteracao = (select u.NomeUsuario + ' (' + u.EmailUsuario + ')'  from Usuario u where u.idUsuario = @idUsuario)
		,p.DataUltimaAlteracao
		,gi.NomeGrupoInformacao
		,RazaoSocial = er.RazaoSocialEmpresa
		,dataVencimentoDocumento = d.ExpirationDate
		,p.DescricaoEncerramento
	FROM [dbo].[Pendencia] p
	INNER JOIN [dbo].EmpresaReceptora er ON er.idEmpresaReceptora = p.idEmpresaDestinataria
	INNER JOIN [dbo].GrupoInformacao gi ON gi.idGrupoInformacao = p.idGrupoInformacao
	LEFT JOIN [Companies].CompanyDocuments d ON p.CompanyDocumentId = d.Id
	WHERE 
	--existe comp para a empresa do @idUsuario e email reg na table UsuarioReceptorCompartilhamento?
	EXISTS(
		SELECT 1 FROM Conexoes c
		INNER JOIN EmpresaReceptora er on er.idEmpresaReceptora = c.EmpresaConectadaId 
		INNER JOIN UsuarioEmpresa ue on ue.idEmpresa = er.idEmpresaReceptora
		INNER JOIN Usuario u ON u.idUsuario = ue.idUsuario
		inner join EmpresaGrupo as eg on eg.idEmpresaGrupo = er.idEmpresaGrupo 
		WHERE u.idUsuario = @idUsuario
		AND (eg.idPlano is not null or 
		EXISTS(
			select 1 from ConexoesEmpresasUsuarios surc 
			inner join ConexoesEmpresas x on x.Id = surc.ConexaoEmpresaId
			where surc.Email = U.EmailUsuario
		))
	)
	--status
	AND p.StatusPendencia = @statusPendencia
	--mes ano
	AND	(Month(@mesAno) =
		case when len(@mesAno) > 0
		then MONTH(p.DataCriacao)
		else Month(@mesAno)
		end)
	AND (Year(@mesAno) =
		case when len(@mesAno) > 0
		then YEAR(p.DataCriacao)
		else Year(@mesAno)
		end)
	--periodo
	AND ((p.DataCriacao between @dataInicio AND @dataFim) OR (@dataInicio IS NULL AND @dataFim IS NULL))
	--subgrupo
	AND (@subgrupo =
		case when @subgrupo > 0
		then p.idGrupoInformacao
		else @subgrupo
		end)
	--gerada pelo sistema?
	AND (case when @isSistema = 1
		then p.DescricaoPendencia
		else 'true'
		end) =
		(case when @isSistema = 1
		then 'Pendência gerada automaticamente.'
		else 'true'
		end) 
	AND (case when @isSistema != 1
		then p.DescricaoPendencia
		else 'true'
		end) !=
		(case when @isSistema != 1
		then 'Pendência gerada automaticamente.'
		else 'false'
		end)
	--id empresa destino
	AND	(@IdEmpresaDestino = 
		case when @IdEmpresaDestino > 0
		then p.[idEmpresaDestinataria]
		else @IdEmpresaDestino
		end)

		ORDER BY [idPendencia] DESC
		OFFSET @Inicio ROW
		FETCH NEXT @Total ROWS ONLY

END
