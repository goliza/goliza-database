
CREATE PROC [dbo].[Proc_GrupoInformacaoCompartilhamentoExcluir] 
    @idCompartilhamento int,
	@idGrupoInformacao int
AS 

	DELETE
	FROM   [dbo].[GrupoInformacaoCompartilhamento]
	WHERE  [idGrupoInformacao] = @idGrupoInformacao
	AND [idCompartilhamento] = @idCompartilhamento

