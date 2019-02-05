CREATE PROC [dbo].[Proc_EmpresaListarCompartilhadas] --[dbo].[Proc_EmpresaListarCompartilhadas] 7
    @idUsuario int
AS 
BEGIN
	
	SELECT 
		tb.idEmpresaReceptora, 
		tb.idEmpresaGrupo, 
		tb.CNPJEmpresa, 
		tb.RazaoSocialEmpresa 
	FROM EmpresaReceptora tb
	WHERE 
	tb.idEmpresaReceptora in (
		SELECT c.idEmpresaProvedora FROM Compartilhamento c
		INNER JOIN EmpresaReceptora er on er.CNPJEmpresa = c.CNPJEmpresaReceptora 
		INNER JOIN UsuarioEmpresa ue on ue.idEmpresa = er.idEmpresaReceptora
		INNER JOIN Usuario u ON u.idUsuario = ue.idUsuario
		WHERE u.idUsuario = @idUsuario
	)

END
















