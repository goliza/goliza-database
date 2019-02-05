CREATE PROC [dbo].[Proc_TelefoneRecomendacaoInserir]
    @IdRecomendacaoTelefone int,
    @IdTipoTelefone int,
    @NumeroTelefone varchar(30),
	@RamalTelefone varchar(15),
    @DDITelefone int
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[TelefoneRecomendacao] ([IdRecomendacaoTelefone], [IdTipoTelefone], [NumeroTelefone], [RamalTelefone], [DDITelefone])
	SELECT @IdRecomendacaoTelefone, @IdTipoTelefone, @NumeroTelefone, @RamalTelefone ,@DDITelefone
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
