﻿CREATE PROCEDURE [dbo].[Proc_EmpresaListarIncluindoRelacionadas]
	@idEmpresaReceptora int,
	@idUsuario int,
	@incluirComQuemCompartilhei bit = 1
AS
BEGIN

	--EMPRESAS QUE COMPARTILHARAM COMIGO
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
		and ue.idEmpresa = @idEmpresaReceptora
	)
	UNION 
	--MINHAS EMPRESAS
	SELECT 
		er.idEmpresaReceptora, 
		er.idEmpresaGrupo, 
		er.CNPJEmpresa, 
		er.RazaoSocialEmpresa
	FROM EmpresaReceptora AS er 
	INNER JOIN UsuarioEmpresa AS ue ON ue.idEmpresa = er.idEmpresaReceptora
	WHERE (ue.idUsuario = @idUsuario)
	UNION
	--EMPRESAS COM QUEM COMPARTILHEI
	SELECT 
	er.idEmpresaReceptora, 
	er.idEmpresaGrupo, 
	er.CNPJEmpresa, 
	er.RazaoSocialEmpresa
	FROM Compartilhamento c
	INNER JOIN EmpresaReceptora er ON c.CNPJEmpresaReceptora = er.CNPJEmpresa
	INNER JOIN UsuarioEmpresa ue ON c.idEmpresaProvedora = ue.idEmpresa
	WHERE c.idEmpresaProvedora = @idEmpresaReceptora
	and 1 = @incluirComQuemCompartilhei

END