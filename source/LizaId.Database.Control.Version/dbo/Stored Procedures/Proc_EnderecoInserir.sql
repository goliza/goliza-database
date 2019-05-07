CREATE PROC [dbo].[Proc_EnderecoInserir] 
    @idEmpresa int,
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
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Endereco] ([idEmpresa], [DescricaoEndereco], [idPaisEndereco], [CEPEndereco], [CaixaPostalEndereco], [UFEndereco], [LogradouroEndereco], [NumeroEndereco], [ComplementoEndereco], [BairroEndereco], [CidadeEndereco], [Cnpj])
	SELECT @idEmpresa, @DescricaoEndereco, @idPaisEndereco, @CEPEndereco, @CaixaPostalEndereco, @UFEndereco, @LogradouroEndereco, @NumeroEndereco, @ComplementoEndereco, @BairroEndereco, @CidadeEndereco, @Cnpj
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
