﻿CREATE PROC [dbo].[Proc_VerificarCompartilhamento] --[dbo].[Proc_VerificarCompartilhamento] 21, 101, 1
    @idUsuario int,
	@codigoGrupoInformacao int=0,
	@idEmpresaProvedora int
AS 
BEGIN
	SELECT UE.idUsuario
	FROM UsuarioEmpresa ue
	INNER JOIN EmpresaReceptora AS E ON E.idEmpresaReceptora = UE.IDEMPRESA
	INNER JOIN Compartilhamento AS C ON C.CNPJEmpresaReceptora = E.CNPJEmpresa and c.idEmpresaProvedora = @idEmpresaProvedora
	INNER JOIN GrupoInformacaoCompartilhamento AS G ON C.idCompartilhamento = G.idCompartilhamento
	WHERE
	(@codigoGrupoInformacao = 
		case when @codigoGrupoInformacao > 0
		then G.idGrupoInformacao
		else @codigoGrupoInformacao
		end)
	AND UE.idUsuario = @idUsuario
END



   