CREATE PROC [dbo].[Proc_ContatoExcluir] 
    @idContato int
AS 
BEGIN

	DELETE FROM Telefone WHERE [IdContatoTelefone] = @idContato
	DELETE FROM Email WHERE [idContato] = @idContato

	DELETE FROM [dbo].[Contato] WHERE [idContato] = @idContato
END
