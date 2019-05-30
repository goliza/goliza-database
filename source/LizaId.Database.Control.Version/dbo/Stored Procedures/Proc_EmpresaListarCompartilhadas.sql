CREATE PROC [dbo].[Proc_EmpresaListarCompartilhadas] --[dbo].[Proc_EmpresaListarCompartilhadas] 27, 48
	@idUsuario int,
	@idEmpresaReceptora int
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
		inner join EmpresaGrupo as eg on eg.idEmpresaGrupo = er.idEmpresaGrupo
		WHERE u.idUsuario = @idUsuario
		and ue.idEmpresa = @idEmpresaReceptora
		AND (eg.idPlano is not null or 
		EXISTS(
			select 1 from UsuarioReceptorCompartilhamento surc 
			where surc.EmailUsuarioReceptorCompartilhamento = U.EmailUsuario
			and surc.idCompartilhamento = c.idCompartilhamento
		))
	)

END
















