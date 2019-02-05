create PROC [dbo].[Proc_CompartilhamentoExistePorCNPJ] 
	@cnpj varchar(max)
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idCompartilhamento]) FROM [dbo].[Compartilhamento]	
	WHERE [CNPJEmpresaReceptora] = @cnpj

	RETURN (@Qtd)
END
