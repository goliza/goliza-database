create PROC [dbo].[CompartilhamentoExiste] 
    @idCompartilhamento int = NULL,
	@cnpj varchar(max) = NULL
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idCompartilhamento]) FROM [dbo].[Compartilhamento]	
	WHERE [idCompartilhamento] = @idCompartilhamento
	OR [CNPJEmpresaReceptora] = @cnpj

	RETURN (@Qtd)
END
