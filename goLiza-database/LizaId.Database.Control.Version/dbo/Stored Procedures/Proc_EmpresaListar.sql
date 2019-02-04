CREATE PROC [dbo].[Proc_EmpresaListar] 
    @idUsuario int
AS 
BEGIN
	SELECT er.idEmpresaReceptora, er.idEmpresaGrupo, er.CNPJEmpresa, er.RazaoSocialEmpresa
	FROM EmpresaReceptora AS er 
	INNER JOIN UsuarioEmpresa AS ue ON ue.idEmpresa = er.idEmpresaReceptora
	WHERE (ue.idUsuario = @idUsuario)
	ORDER BY er.idEmpresaReceptora DESC
END

