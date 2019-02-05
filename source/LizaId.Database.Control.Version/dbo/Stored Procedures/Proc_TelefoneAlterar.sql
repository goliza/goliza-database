CREATE PROC [dbo].[Proc_TelefoneAlterar] 
    @idTelefone int,
    @IdContatoTelefone int,
    @IdTipoTelefone int,
    @NumeroTelefone varchar(30),
	@RamalTelefone varchar(15),
	@DDITelefone char(3)
AS 
BEGIN
	UPDATE [dbo].[Telefone]
	SET    [IdContatoTelefone] = @IdContatoTelefone, [IdTipoTelefone] = @IdTipoTelefone, [NumeroTelefone] = @NumeroTelefone, [RamalTelefone] = @RamalTelefone, [DDITelefone] = @DDITelefone
	WHERE  [idTelefone] = @idTelefone
	
	RETURN (@idTelefone)
END
