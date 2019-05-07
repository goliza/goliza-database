CREATE PROC [dbo].[Proc_EnderecoAlterar] 
    @idEndereco int,
    @DescricaoEndereco varchar(MAX),
    @idPaisEndereco int,
    @CEPEndereco varchar(20) = NULL,
    @CaixaPostalEndereco varchar(20) = NULL,
    @UFEndereco char(2) = NULL,
    @LogradouroEndereco varchar(MAX) = NULL,
    @NumeroEndereco varchar(20) = NULL,
    @ComplementoEndereco varchar(20) = NULL,
    @BairroEndereco varchar(MAX) = NULL,
    @CidadeEndereco varchar(MAX) = NULL,
	@Cnpj varchar(20) = NULL
AS 
BEGIN
	UPDATE [dbo].[Endereco]
	SET    [Cnpj] = @Cnpj, [DescricaoEndereco] = @DescricaoEndereco, [idPaisEndereco] = @idPaisEndereco, [CEPEndereco] = @CEPEndereco, [CaixaPostalEndereco] = @CaixaPostalEndereco, [UFEndereco] = @UFEndereco, [LogradouroEndereco] = @LogradouroEndereco, [NumeroEndereco] = @NumeroEndereco, [ComplementoEndereco] = @ComplementoEndereco, [BairroEndereco] = @BairroEndereco, [CidadeEndereco] = @CidadeEndereco
	WHERE  [idEndereco] = @idEndereco

	DELETE FROM TelefoneEndereco WHERE [IdEnderecoTelefone] = @idEndereco
	
	RETURN (@idEndereco)
END
