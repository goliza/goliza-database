create PROC [dbo].[Proc_UsuarioCompartilhamentoListar] 
    @idCompartilhamento int
AS 
BEGIN
	SELECT        
		idUsuarioReceptorCompartilhamento, EmailUsuarioReceptorCompartilhamento, CPFUsuarioReceptorCompartilhamento, NomeUsuarioReceptorCompartilhamento, idCompartilhamento
	FROM            
		UsuarioReceptorCompartilhamento
	WHERE        
		(idCompartilhamento = @idCompartilhamento)
END
