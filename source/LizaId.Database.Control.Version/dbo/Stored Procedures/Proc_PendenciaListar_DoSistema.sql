CREATE PROCEDURE [dbo].[Proc_PendenciaListar_DoSistema]
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
		,p.DataUltimaAlteracao
		,gi.NomeGrupoInformacao
		,RazaoSocial = er.RazaoSocialEmpresa
		,d.DataVencimentoDocumento
	FROM [dbo].[Pendencia] p
	INNER JOIN [dbo].EmpresaReceptora er ON er.idEmpresaReceptora = p.idEmpresaDestinataria
	INNER JOIN [dbo].GrupoInformacao gi ON gi.idGrupoInformacao = p.idGrupoInformacao
	LEFT JOIN [dbo].Documento d ON p.idDocumento = d.idDocumento
	WHERE 
	--status
	p.StatusPendencia = @statusPendencia
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
