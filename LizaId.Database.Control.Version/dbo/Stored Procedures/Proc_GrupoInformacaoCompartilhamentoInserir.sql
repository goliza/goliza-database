CREATE PROC [dbo].[Proc_GrupoInformacaoCompartilhamentoInserir] 
    @idCompartilhamento int,
    @idGrupoInformacao int,
    @idUsuarioCriacao int,
    @DataCriacao datetime,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[GrupoInformacaoCompartilhamento] ([idCompartilhamento], [idGrupoInformacao], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao])
	SELECT @idCompartilhamento, @idGrupoInformacao, @idUsuarioCriacao, @DataCriacao, @idUsuarioUltimaAlteracao, @DataUltimaAlteracao
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)

