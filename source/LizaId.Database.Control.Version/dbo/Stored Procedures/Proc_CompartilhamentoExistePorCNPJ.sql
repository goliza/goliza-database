create PROC [dbo].[Proc_CompartilhamentoExistePorCNPJ] 
	@cnpj varchar(max),
	@idEmpresaProvedora int
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idCompartilhamento]) FROM [dbo].[Compartilhamento]	c
	LEFT OUTER JOIN EmpresaReceptora AS R ON C.CNPJEmpresaReceptora = R.CNPJEmpresa
	WHERE (C.CNPJEmpresaReceptora = @cnpj)
	AND C.idEmpresaProvedora = @idEmpresaProvedora

	RETURN (@Qtd)
END
