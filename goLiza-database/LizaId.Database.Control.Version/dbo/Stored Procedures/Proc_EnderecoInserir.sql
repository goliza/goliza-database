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
    @CidadeEndereco varchar(MAX) = NULL
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Endereco] ([idEmpresa], [DescricaoEndereco], [idPaisEndereco], [CEPEndereco], [CaixaPostalEndereco], [UFEndereco], [LogradouroEndereco], [NumeroEndereco], [ComplementoEndereco], [BairroEndereco], [CidadeEndereco])
	SELECT @idEmpresa, @DescricaoEndereco, @idPaisEndereco, @CEPEndereco, @CaixaPostalEndereco, @UFEndereco, @LogradouroEndereco, @NumeroEndereco, @ComplementoEndereco, @BairroEndereco, @CidadeEndereco
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
