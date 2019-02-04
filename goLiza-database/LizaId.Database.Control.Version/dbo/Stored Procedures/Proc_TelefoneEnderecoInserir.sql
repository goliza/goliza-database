create PROC [dbo].[Proc_TelefoneEnderecoInserir]
    @IdEnderecoTelefone int,
    @IdTipoTelefone int,
    @NumeroTelefone varchar(30),
	@RamalTelefone varchar(15),
    @DDITelefone int
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[TelefoneEndereco] ([IdEnderecoTelefone], [IdTipoTelefone], [NumeroTelefone], [RamalTelefone], [DDITelefone])
	SELECT @IdEnderecoTelefone, @IdTipoTelefone, @NumeroTelefone, @RamalTelefone ,@DDITelefone
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
