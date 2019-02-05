create PROC [dbo].[Proc_DocumentoFiltrar] 
    @IdEmpresa int,
	@idTipo int,
	@Nome varchar(max), 
	@vencimentoIncial datetime,
	@vencimentoFinal datetime
AS 
BEGIN
	SELECT [idDocumento], [idEmpresa], [idTipoDocumento], [idArquivo], [NomeDocumento], [DataEmissaoDocumento], [DataVencimentoDocumento], [ComentariosDocumento] 
	FROM   [dbo].[Documento] 
	WHERE ([idEmpresa] = @IdEmpresa) 
	AND ([idTipoDocumento] = @idTipo)
	AND ([DataVencimentoDocumento] BETWEEN @vencimentoIncial AND @vencimentoFinal)
	AND (
		lower([NomeDocumento]) like '%' + lower(@Nome) + '%'
	)
END
