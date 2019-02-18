CREATE PROCEDURE [dbo].[Proc_PendenciaExcluir]
	 @idPendencia int
AS 
BEGIN
	DELETE
	FROM   [dbo].[Pendencia]
	WHERE  [idPendencia] = @idPendencia
END
