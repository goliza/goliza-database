CREATE PROC [dbo].[Proc_UsuarioReceptorCompartilhamentoExcluir] 
    @idCompartilhamento int,
    @idUsuarioReceptorCompartilhamento int
AS 


	DELETE
	FROM   [dbo].[UsuarioReceptorCompartilhamento]
	WHERE  [idUsuarioReceptorCompartilhamento] = @idUsuarioReceptorCompartilhamento
	AND [idCompartilhamento] = @idCompartilhamento


