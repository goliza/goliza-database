create PROC [dbo].[Proc_DocumentoExiste] 
    @idDocumento int
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idDocumento]) FROM [dbo].[Documento] WHERE [idDocumento] = @idDocumento

	RETURN (@Qtd)
END
