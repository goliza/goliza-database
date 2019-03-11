CREATE PROCEDURE [dbo].[Proc_PendenciaListar]
	@IdEmpresa INT = 0,
	@cnpj varchar(max) = '',
	@statusPendencia bit = 1,
	@mesAno varchar(10) = '',
	@dataInicio varchar(20), 
	@dataFim varchar(20),
	@subgrupo int = 0, 
	@idUsuarioEmpresa int = 0,
	@Inicio INT = 0, 
	@Total INT = 10,
	@isSistema bit = 1
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
		idPendencia
		,idUsuarioEmpresa
		,idEmpresaDestinataria
		,EmailDestinatario
		,AssuntoPendencia
		,p.idGrupoInformacao
		,DescricaoPendencia
		,StatusPendencia
		,idUsuarioCriacao
		,DataCriacao
		,idUsuarioUltimaAlteracao
		,DataUltimaAlteracao
		,gi.NomeGrupoInformacao
		,RazaoSocial = er.RazaoSocialEmpresa
	FROM [dbo].[Pendencia] p
	INNER JOIN [dbo].EmpresaReceptora er ON er.idEmpresaReceptora = p.idEmpresaDestinataria
	INNER JOIN [dbo].GrupoInformacao gi ON gi.idGrupoInformacao = p.idGrupoInformacao
	WHERE 
		(@IdEmpresa = 
		case when @IdEmpresa > 0
		then p.[idEmpresaDestinataria]
		else @IdEmpresa
		end)
	AND (@cnpj = 
		case when len(@cnpj) > 0
		then er.CNPJEmpresa
		else @cnpj
		end)
	AND (Month(@mesAno) =
		case when len(@mesAno) > 0
		then MONTH(p.DataCriacao)
		else Month(@mesAno)
		end)
	AND (Year(@mesAno) =
		case when len(@mesAno) > 0
		then YEAR(p.DataCriacao)
		else Year(@mesAno)
		end)
	AND p.StatusPendencia = @statusPendencia
	AND p.DataCriacao between @dataInicio AND @dataFim
	AND (@subgrupo =
		case when @subgrupo > 0
		then p.idGrupoInformacao
		else @subgrupo
		end)
	AND (@idUsuarioEmpresa =
		case when @idUsuarioEmpresa > 0
		then p.idUsuarioEmpresa
		else @idUsuarioEmpresa
		end)

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

		ORDER BY [idPendencia] DESC
		OFFSET @Inicio ROW
		FETCH NEXT @Total ROWS ONLY
END
