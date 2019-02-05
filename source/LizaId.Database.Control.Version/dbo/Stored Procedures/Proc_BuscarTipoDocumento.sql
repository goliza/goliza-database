create PROC [dbo].[Proc_BuscarTipoDocumento] 
	@idDocumento int
AS 
BEGIN
	SELECT idTipoDocumento
	FROM Documento
	WHERE (idDocumento = @idDocumento)
END
