create PROC [dbo].[Proc_EmailRecomendacaoInserir] 
    @idRecomendacao int,
    @Email varchar(MAX)
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[EmailRecomendacao] ([idRecomendacao], [Email])
	SELECT @idRecomendacao, @Email
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
