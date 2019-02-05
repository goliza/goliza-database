CREATE PROC [dbo].[Proc_DocumentoExcluir] 
    @idDocumento int
AS 
BEGIN
	DELETE
	FROM   [dbo].[Documento]
	WHERE  [idDocumento] = @idDocumento
END
