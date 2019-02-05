create PROC [dbo].[Proc_TokenObter] 
    @Login varchar(max),
	@Token varchar(max)
AS 
BEGIN
	SELECT TOP 1 [idToken]
	FROM [dbo].[Token]
	WHERE [CodigoToken] = @Token
	AND [EmailToken] = @Login
	AND [DataExpiracaoToken] > GETDATE()
	AND [idTokenStatus] = 1
END
