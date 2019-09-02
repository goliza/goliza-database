CREATE PROCEDURE [dbo].[Proc_PendenciaListar_DirecionadasAMim]
	@statusPendencia bit = 1,
	@mesAno varchar(10) = '',
	@dataInicio datetime = NULL, 
	@dataFim datetime = NULL,
	@subgrupo int = 0, 
	@isSistema bit = 1,
	@Inicio INT = 0, 
	@Total INT = 10,
	@idEmpresaRemetente INT = 0,
	--@idUsuarioDestino int = 0
	@idEmpresaDestinataria int = 0
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
		,EmailDestinatario = (select su.LoginUsuario from Usuario su where su.idUsuario = p.idUsuarioCriacao)
		,p.AssuntoPendencia
		,p.idGrupoInformacao
		,p.DescricaoPendencia
		,p.StatusPendencia
		,p.idUsuarioCriacao
		,p.DataCriacao
		,p.idUsuarioUltimaAlteracao
		,UsuarioEmailUltimaInteracao = (select u.NomeUsuario + ' (' + u.EmailUsuario + ')'  from Usuario u where u.idUsuario = ue.idUsuario)
		,p.DataUltimaAlteracao
		,gi.NomeGrupoInformacao
		,RazaoSocial = er.RazaoSocialEmpresa
		,p.DescricaoEncerramento
	FROM [dbo].[Pendencia] p
	--INNER JOIN [dbo].Usuario u on p.EmailDestinatario = u.LoginUsuario
	INNER JOIN UsuarioEmpresa ue on p.idUsuarioEmpresa = ue.idUsuarioEmpresa
	INNER JOIN EmpresaReceptora er on er.idEmpresaReceptora = ue.idEmpresa
	INNER JOIN [dbo].GrupoInformacao gi ON gi.idGrupoInformacao = p.idGrupoInformacao
	WHERE 
	--status
	--p.StatusPendencia = @statusPendencia
	(@statusPendencia =
		case when @statusPendencia >= 0
		then p.StatusPendencia
		else @statusPendencia
		end)
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
	--id empresa rementente
	AND	(@IdEmpresaRemetente = 
		case when @IdEmpresaRemetente > 0
		then er.idEmpresaReceptora
		else @IdEmpresaRemetente
		end)
	--id usuario destino
	--AND	(@idUsuarioDestino = 
	--	case when @idUsuarioDestino > 0
	--	then u.idUsuario
	--	else @idUsuarioDestino
	--	end)

	--id empresa destinataria
	AND	(@idEmpresaDestinataria = 
		case when @idEmpresaDestinataria > 0
		then p.idEmpresaDestinataria
		else @idEmpresaDestinataria
		end)
	
		ORDER BY [idPendencia] DESC
		OFFSET @Inicio ROW
		FETCH NEXT @Total ROWS ONLY

END
