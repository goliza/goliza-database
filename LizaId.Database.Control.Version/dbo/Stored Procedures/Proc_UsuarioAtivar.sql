CREATE PROC [dbo].[Proc_UsuarioAtivar] 
    @Login varchar(MAX)
AS 

BEGIN

	DECLARE @idUsuario AS INT

	UPDATE [dbo].[Usuario]
	SET    [idUsuarioStatus] = 1
	WHERE  [LoginUsuario] = @Login
	
	SELECT TOP 1 @idUsuario = idUsuario FROM [dbo].[Usuario] WHERE  [LoginUsuario] = @Login

	RETURN (@idUsuario)

END