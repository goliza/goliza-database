CREATE PROCEDURE [dbo].[Proc_PendenciaExiste]
	 @idPendencia int
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idPendencia]) FROM [dbo].[Pendencia] WHERE [idPendencia] = @idPendencia

	RETURN (@Qtd)
END
