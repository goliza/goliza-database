CREATE PROC [dbo].[Proc_EnderecoExcluir] 
    @idEndereco int
AS 
BEGIN
	DELETE FROM TelefoneEndereco WHERE [IdEnderecoTelefone] = @idEndereco
	DELETE FROM [dbo].[Endereco] WHERE  [idEndereco] = @idEndereco
END
