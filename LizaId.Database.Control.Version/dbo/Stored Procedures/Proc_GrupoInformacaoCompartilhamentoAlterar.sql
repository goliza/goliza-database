CREATE PROC [dbo].[Proc_GrupoInformacaoCompartilhamentoAlterar] 
    @idGrupoInformacaoCompartilhamento int,
    @idCompartilhamento int,
    @idGrupoInformacao int,
    @idUsuarioCriacao int,
    @DataCriacao datetime,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[GrupoInformacaoCompartilhamento]
	SET    [idCompartilhamento] = @idCompartilhamento, [idGrupoInformacao] = @idGrupoInformacao, [idUsuarioCriacao] = @idUsuarioCriacao, [DataCriacao] = @DataCriacao, [idUsuarioUltimaAlteracao] = @idUsuarioUltimaAlteracao, [DataUltimaAlteracao] = @DataUltimaAlteracao
	WHERE  [idGrupoInformacaoCompartilhamento] = @idGrupoInformacaoCompartilhamento
	
	RETURN (@idGrupoInformacaoCompartilhamento)

	COMMIT
