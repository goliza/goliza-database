CREATE PROC [dbo].[Proc_DocumentoObter] 
    @idDocumento int
AS 
BEGIN
	SELECT [idDocumento], [idEmpresa], [idTipoDocumento], [idArquivo], [NomeDocumento], [DataEmissaoDocumento], [DataVencimentoDocumento], [ComentariosDocumento] 
	FROM   [dbo].[Documento] 
	WHERE  ([idDocumento] = @idDocumento OR @idDocumento IS NULL) 
END
