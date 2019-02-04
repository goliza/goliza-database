CREATE PROC [dbo].[Proc_DocumentoAlterar] 
    @idDocumento int,
    @NomeDocumento varchar(MAX),
    @ComentariosDocumento varchar(MAX) = NULL
AS 
BEGIN
	UPDATE [dbo].[Documento]
	SET    [NomeDocumento] = @NomeDocumento, [DataVencimentoDocumento] = GETDATE(), [ComentariosDocumento] = @ComentariosDocumento
	WHERE  [idDocumento] = @idDocumento
	
	RETURN (@idDocumento)
END
