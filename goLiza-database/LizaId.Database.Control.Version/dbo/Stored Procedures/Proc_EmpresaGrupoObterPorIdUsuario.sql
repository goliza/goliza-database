Create PROC [dbo].[Proc_EmpresaGrupoObterPorIdUsuario] 
    @idUsuario int
AS 
BEGIN
SELECT [IdEmpresaGrupo] FROM [dbo].[Usuario]
	WHERE  ([idUsuario] = @idUsuario) 
END
