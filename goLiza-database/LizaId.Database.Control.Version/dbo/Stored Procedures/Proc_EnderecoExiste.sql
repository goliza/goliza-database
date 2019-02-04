create PROC [dbo].[Proc_EnderecoExiste] 
    @idEndereco int
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idEndereco]) FROM [dbo].[Endereco]	WHERE  [idEndereco] = @idEndereco

	RETURN (@Qtd)
END
