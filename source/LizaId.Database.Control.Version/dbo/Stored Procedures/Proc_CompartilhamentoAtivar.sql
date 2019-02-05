CREATE PROC [dbo].[Proc_CompartilhamentoAtivar] 
    @idUsuario varchar(max),
	@token varchar(max)
AS 
BEGIN
	UPDATE c set c.status = 0
	from Compartilhamento c
	join UsuarioReceptorCompartilhamento urc on c.idCompartilhamento = urc.idCompartilhamento
	join Usuario u on u.LoginUsuario = urc.EmailUsuarioReceptorCompartilhamento
	join Token t on urc.idToken = t.idToken
	WHERE u.idUsuario = @idUsuario
	AND t.CodigoSimplificadoToken = @token
END