CREATE PROC [dbo].[Proc_CompartilhamentoObter] 
    @cnpj char(18),
	@idEmpresaProvedora int
AS 
BEGIN
	SELECT 
		C.idCompartilhamento, 
		C.idEmpresaProvedora, 
		C.CNPJEmpresaReceptora, 
		C.idUsuarioCriacao, 
		C.DataCriacao, 
		C.idUsuarioUltimaAlteracao, 
		C.DataUltimaAlteracao, 
		R.NomeFantasiaEmpresa AS NomeFantasiaReceptora, 
		R.RazaoSocialEmpresa AS RazaoSocialReceptora
	FROM Compartilhamento AS C 
	LEFT OUTER JOIN EmpresaReceptora AS R ON C.CNPJEmpresaReceptora = R.CNPJEmpresa
	WHERE (C.CNPJEmpresaReceptora = @cnpj)
	AND C.idEmpresaProvedora = @idEmpresaProvedora
END





