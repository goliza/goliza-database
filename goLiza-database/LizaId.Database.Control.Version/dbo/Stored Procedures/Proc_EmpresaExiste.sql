CREATE PROC [dbo].[Proc_EmpresaExiste] 
    @idEmpresaReceptora int
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idEmpresaReceptora]) FROM [dbo].[EmpresaReceptora]	WHERE  [idEmpresaReceptora] = @idEmpresaReceptora

	RETURN (@Qtd)
END
