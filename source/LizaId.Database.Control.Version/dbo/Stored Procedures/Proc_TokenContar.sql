Create PROC [dbo].[Proc_TokenContar] 
    @Login varchar(max),
	@Token varchar(max)
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idToken])
	FROM [dbo].[Token]
	WHERE [CodigoToken] = @Token
	AND [EmailToken] = @Login
	AND [DataExpiracaoToken] > GETDATE()
	AND [idTokenStatus] = 1

	RETURN (@Qtd)
END
