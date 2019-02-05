CREATE PROC [dbo].[Proc_CompartilhamentoExcluir] 
    @idCompartilhamento int
AS 
BEGIN
	DELETE FROM [dbo].[UsuarioReceptorCompartilhamento] WHERE [idCompartilhamento] = @idCompartilhamento
	DELETE FROM [dbo].[GrupoInformacaoCompartilhamento] WHERE [idCompartilhamento] = @idCompartilhamento

	DELETE FROM [dbo].[Compartilhamento] WHERE [idCompartilhamento] = @idCompartilhamento
END
