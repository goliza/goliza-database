CREATE PROC [dbo].[Proc_TokenReduzidoContar] 
    @Login varchar(max),
	@Token varchar(max)
AS 
BEGIN
	SELECT COUNT([idToken])
	FROM [dbo].[Token]
	WHERE [CodigoSimplificadoToken] = @Token
	AND [EmailToken] = @Login
	AND [DataExpiracaoToken] > GETDATE()
	AND [idTokenStatus] = 3
END
