CREATE PROC [dbo].[Proc_VerificarUsuarioExiste] 
    @email varchar(max)
AS 
BEGIN
	SELECT [idUsuario] FROM [dbo].[Usuario] WHERE EmailUsuario = @email and idUsuarioStatus = 1
END
