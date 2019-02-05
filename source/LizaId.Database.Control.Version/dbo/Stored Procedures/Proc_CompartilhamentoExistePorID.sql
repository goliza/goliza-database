create PROC [dbo].[Proc_CompartilhamentoExistePorID] 
    @idCompartilhamento int
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idCompartilhamento]) FROM [dbo].[Compartilhamento]	
	WHERE [idCompartilhamento] = @idCompartilhamento

	RETURN (@Qtd)
END
