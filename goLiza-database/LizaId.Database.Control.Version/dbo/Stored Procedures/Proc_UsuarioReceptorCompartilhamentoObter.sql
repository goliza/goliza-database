CREATE PROC [dbo].[Proc_UsuarioReceptorCompartilhamentoObter] 
    @idUsuarioReceptorCompartilhamento int
AS 


	SELECT [idUsuarioReceptorCompartilhamento], [EmailUsuarioReceptorCompartilhamento], [CPFUsuarioReceptorCompartilhamento], [NomeUsuarioReceptorCompartilhamento], [idCompartilhamento], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao] 
	FROM   [dbo].[UsuarioReceptorCompartilhamento] 
	WHERE  ([idUsuarioReceptorCompartilhamento] = @idUsuarioReceptorCompartilhamento OR @idUsuarioReceptorCompartilhamento IS NULL) 


