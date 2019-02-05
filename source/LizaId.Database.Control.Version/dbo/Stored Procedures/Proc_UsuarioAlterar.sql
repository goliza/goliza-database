CREATE PROC [dbo].[Proc_UsuarioAlterar] 
    @idUsuario int,
    @NomeUsuario varchar(MAX),
    @EmailUsuario varchar(MAX),
    @LoginUsuario varchar(MAX),
    @HashSenhaUsuario varchar(MAX),
    @IdEmpresaGrupo int,
    @idUsuarioStatus int,
    @idToken int = NULL
AS 

	UPDATE [dbo].[Usuario]
	SET    [NomeUsuario] = @NomeUsuario, [EmailUsuario] = @EmailUsuario, [LoginUsuario] = @LoginUsuario, [HashSenhaUsuario] = @HashSenhaUsuario, [IdEmpresaGrupo] = @IdEmpresaGrupo, [idUsuarioStatus] = @idUsuarioStatus, [idToken] = @idToken
	WHERE  [idUsuario] = @idUsuario
	
	RETURN (@idUsuario)

