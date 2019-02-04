CREATE PROC [dbo].[Proc_CompartilhamentoListar] 
	@idUsuario int,
	@idEmpresa int,
	@textoPesquisa varchar(100)
AS 
BEGIN
	SELECT 
		ep.idEmpresaReceptora, 
		ep.NomeFantasiaEmpresa as NomeFantasiaReceptora, 
		ep.CNPJEmpresa as CNPJEmpresaReceptora, 
		ep.RazaoSocialEmpresa as RazaoSocialReceptora
	FROM UsuarioEmpresa AS ue
	INNER JOIN EmpresaReceptora AS er ON er.idEmpresaReceptora = ue.idEmpresa
	INNER JOIN Compartilhamento AS c ON c.CNPJEmpresaReceptora = er.CNPJEmpresa
	INNER JOIN EmpresaReceptora AS ep ON ep.idEmpresaReceptora = c.idEmpresaProvedora
	WHERE
		ue.idUsuario = @idUsuario
		and ue.idEmpresa = @idEmpresa
		and (ep.CNPJEmpresa like @textoPesquisa or ep.RazaoSocialEmpresa like @textoPesquisa)
END
