CREATE PROCEDURE [dbo].[Proc_UsuarioObterPorEmail]
	@Email varchar(max)
AS 

	SELECT [idUsuario], [NomeUsuario], [EmailUsuario], [LoginUsuario], [HashSenhaUsuario], [IdEmpresaGrupo], [idUsuarioStatus], [idToken] 
	FROM   [dbo].[Usuario] 
	WHERE  ([LoginUsuario] = @Email OR @Email IS NULL)