CREATE PROC [dbo].[Proc_ContatoAlterar] 
    @idContato int,
    @NomeContato varchar(MAX),
	@SobrenomeContato varchar(MAX),
    @CargoContato varchar(MAX),
    @TipoContato int
AS 
BEGIN
	UPDATE [dbo].[Contato]
	SET    [NomeContato] = @NomeContato, [CargoContato] = @CargoContato, [idTipoContato] = @TipoContato, [SobrenomeContato] = @SobrenomeContato
	WHERE  [idContato] = @idContato
	
	DELETE FROM Telefone WHERE [IdContatoTelefone] = @idContato
	DELETE FROM Email WHERE [idContato] = @idContato

	RETURN (@idContato)
END
