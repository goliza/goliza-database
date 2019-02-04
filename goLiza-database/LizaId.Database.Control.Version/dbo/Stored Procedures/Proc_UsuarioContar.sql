CREATE PROC [dbo].[Proc_UsuarioContar] 
    @LoginUsuario varchar(max)
AS 
BEGIN

	SELECT COUNT([idUsuario])
	FROM [dbo].[Usuario]
	WHERE [LoginUsuario] = @LoginUsuario

END