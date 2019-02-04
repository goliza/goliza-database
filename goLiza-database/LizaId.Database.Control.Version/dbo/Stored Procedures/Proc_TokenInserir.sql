CREATE PROC [dbo].[Proc_TokenInserir] 
    @EmailToken varchar(150),
    @DataExpiracaoToken datetime,
    @CodigoToken uniqueidentifier = NULL,
    @CodigoSimplificadoToken char(5) = NULL,
    @idUsuarioCriacao int,
    @DataCriacao datetime,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL,
    @idTokenStatus int
AS 

	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Token] ([EmailToken], [DataExpiracaoToken], [CodigoToken], [CodigoSimplificadoToken], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao], [idTokenStatus])
	SELECT @EmailToken, @DataExpiracaoToken, @CodigoToken, @CodigoSimplificadoToken, @idUsuarioCriacao, @DataCriacao, @idUsuarioUltimaAlteracao, @DataUltimaAlteracao, @idTokenStatus
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)

