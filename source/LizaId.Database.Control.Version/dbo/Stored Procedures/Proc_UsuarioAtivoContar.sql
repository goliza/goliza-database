create PROC [dbo].[Proc_UsuarioAtivoContar] 
    @LoginUsuario varchar(max)
AS 
BEGIN

	SELECT COUNT([idUsuario])
	FROM [dbo].[Usuario]
	WHERE [LoginUsuario] = @LoginUsuario
	AND [idUsuarioStatus] = 1

END