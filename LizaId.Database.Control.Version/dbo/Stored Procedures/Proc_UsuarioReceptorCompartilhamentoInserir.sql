CREATE PROC [dbo].[Proc_UsuarioReceptorCompartilhamentoInserir] 
    @EmailUsuarioReceptorCompartilhamento varchar(150),
    @CPFUsuarioReceptorCompartilhamento char(14) = NULL,
    @NomeUsuarioReceptorCompartilhamento varchar(200),
    @idCompartilhamento int,
    @idUsuarioCriacao int,
    @DataCriacao datetime,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 

	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[UsuarioReceptorCompartilhamento] ([EmailUsuarioReceptorCompartilhamento], [CPFUsuarioReceptorCompartilhamento], [NomeUsuarioReceptorCompartilhamento], [idCompartilhamento], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao])
	SELECT @EmailUsuarioReceptorCompartilhamento, @CPFUsuarioReceptorCompartilhamento, @NomeUsuarioReceptorCompartilhamento, @idCompartilhamento, @idUsuarioCriacao, @DataCriacao, @idUsuarioUltimaAlteracao, @DataUltimaAlteracao
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)

