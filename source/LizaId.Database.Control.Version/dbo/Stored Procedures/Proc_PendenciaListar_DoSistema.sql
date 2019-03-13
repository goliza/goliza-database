CREATE PROCEDURE [dbo].[Proc_PendenciaListar_DoSistema]
	@statusPendencia bit = 1,
	@mesAno varchar(10) = '',
	@dataInicio datetime, 
	@dataFim datetime,
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

	if len(@dataInicio)>0
	set @dataInicio = CONCAT(CONVERT(varchar(10), @dataInicio, 103), ' 00:00:00')
	else
	set @dataInicio = CONCAT(CONVERT(varchar(10), dateadd(DAY,-30, GETDATE()), 103), ' 00:00:00')

	if len(@dataFim)>0
	set @dataFim = CONCAT(CONVERT(varchar(10),@dataFim,103), ' 23:59:59')
	else
	set @dataFim = getdate()

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
	FROM [dbo].[Pendencia] p
	INNER JOIN [dbo].EmpresaReceptora er ON er.idEmpresaReceptora = p.idEmpresaDestinataria
	INNER JOIN [dbo].GrupoInformacao gi ON gi.idGrupoInformacao = p.idGrupoInformacao
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
	AND p.DataCriacao between @dataInicio AND @dataFim
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
