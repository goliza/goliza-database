CREATE PROC [dbo].[Proc_UsuarioReceptorCompartilhamentoAlterar] 
    @idUsuarioReceptorCompartilhamento int,
    @EmailUsuarioReceptorCompartilhamento varchar(150),
    @CPFUsuarioReceptorCompartilhamento char(14) = NULL,
    @NomeUsuarioReceptorCompartilhamento varchar(200),
    @idCompartilhamento int,
    @idUsuarioCriacao int,
    @DataCriacao datetime,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 


	UPDATE [dbo].[UsuarioReceptorCompartilhamento]
	SET    [EmailUsuarioReceptorCompartilhamento] = @EmailUsuarioReceptorCompartilhamento, [CPFUsuarioReceptorCompartilhamento] = @CPFUsuarioReceptorCompartilhamento, [NomeUsuarioReceptorCompartilhamento] = @NomeUsuarioReceptorCompartilhamento, [idCompartilhamento] = @idCompartilhamento, [idUsuarioCriacao] = @idUsuarioCriacao, [DataCriacao] = @DataCriacao, [idUsuarioUltimaAlteracao] = @idUsuarioUltimaAlteracao, [DataUltimaAlteracao] = @DataUltimaAlteracao
	WHERE  [idUsuarioReceptorCompartilhamento] = @idUsuarioReceptorCompartilhamento
	
	RETURN (@idUsuarioReceptorCompartilhamento)


