CREATE PROC [dbo].[Proc_GrupoInformacaoCompartilhamentoObter] 
    @idGrupoInformacaoCompartilhamento int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [idGrupoInformacaoCompartilhamento], [idCompartilhamento], [idGrupoInformacao], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao] 
	FROM   [dbo].[GrupoInformacaoCompartilhamento] 
	WHERE  ([idGrupoInformacaoCompartilhamento] = @idGrupoInformacaoCompartilhamento OR @idGrupoInformacaoCompartilhamento IS NULL) 

	COMMIT
