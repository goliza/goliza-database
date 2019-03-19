create PROC [dbo].[Proc_DocumentoFiltrar] 
    @IdEmpresa int,
	@idTipo int,
	@Nome varchar(max), 
	@vencimentoIncial datetime = '',
	@vencimentoFinal datetime = ''
AS 
BEGIN

	set dateformat dmy

	set @vencimentoIncial = isnull(@vencimentoIncial,'')
	set @vencimentoFinal = isnull(@vencimentoFinal,'')
	set @Nome = isnull(@Nome,'')


	SELECT [idDocumento], [idEmpresa], [idTipoDocumento], [idArquivo], [NomeDocumento], [DataEmissaoDocumento], [DataVencimentoDocumento], [ComentariosDocumento] 
	FROM   [dbo].[Documento] 
	WHERE ([idEmpresa] = @IdEmpresa) 
	AND ([idTipoDocumento] = @idTipo)
	
	AND
	(case when @vencimentoIncial != '1900-01-01 00:00:00.000'
	then [DataVencimentoDocumento]
	else @vencimentoIncial
	end) >= @vencimentoIncial
	AND 
	(case when @vencimentoFinal != '1900-01-01 00:00:00.000'
	then [DataVencimentoDocumento]
	else @vencimentoFinal
	end) <= @vencimentoFinal

	AND (
		lower([NomeDocumento]) like '%' + lower(@Nome) + '%'
	)
END
