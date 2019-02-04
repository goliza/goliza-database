CREATE PROC [dbo].[Proc_TelefoneInserir] 
    @IdContatoTelefone int,
    @IdTipoTelefone int,
    @NumeroTelefone varchar(30),
	@RamalTelefone varchar(15),
    @DDITelefone int
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Telefone] ([IdContatoTelefone], [IdTipoTelefone], [NumeroTelefone], [RamalTelefone], [DDITelefone])
	SELECT @IdContatoTelefone, @IdTipoTelefone, @NumeroTelefone, @RamalTelefone ,@DDITelefone
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
