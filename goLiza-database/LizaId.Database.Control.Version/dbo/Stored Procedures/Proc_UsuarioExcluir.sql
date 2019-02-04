CREATE PROC [dbo].[Proc_UsuarioExcluir] 
    @idUsuario int
AS 

	DELETE
	FROM   [dbo].[Usuario]
	WHERE  [idUsuario] = @idUsuario

