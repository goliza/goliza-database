


	
CREATE PROC [dbo].[Proc_TokenAlterar] 
    @idToken int,
    @CodigoSimplificadoToken char(5) = NULL,
	@DataExpiracaoToken datetime,
	@idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 

	UPDATE [dbo].[Token]
	SET    
	[DataExpiracaoToken] = @DataExpiracaoToken, 
	[CodigoSimplificadoToken] = @CodigoSimplificadoToken, 
	[idTokenStatus] = 3,
	[idUsuarioUltimaAlteracao] = @idUsuarioUltimaAlteracao,
    [DataUltimaAlteracao] = @DataUltimaAlteracao
	WHERE  [idToken] = @idToken
