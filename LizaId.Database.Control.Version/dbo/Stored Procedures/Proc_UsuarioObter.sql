CREATE PROC [dbo].[Proc_UsuarioObter] 
    @idUsuario int
AS 

	SELECT [idUsuario], [NomeUsuario], [EmailUsuario], [LoginUsuario], [HashSenhaUsuario], [IdEmpresaGrupo], [idUsuarioStatus], [idToken] 
	FROM   [dbo].[Usuario] 
	WHERE  ([idUsuario] = @idUsuario OR @idUsuario IS NULL) 

