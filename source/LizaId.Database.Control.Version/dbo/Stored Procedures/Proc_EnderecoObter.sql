CREATE PROC [dbo].[Proc_EnderecoObter] 
    @idEndereco int
AS 
BEGIN
	SELECT 
		[idEndereco]
		,[idEmpresa]
		,[DescricaoEndereco]
		,[idPaisEndereco]
		,[CEPEndereco]
		,[CaixaPostalEndereco]
		,[UFEndereco]
		,[LogradouroEndereco]
		,[NumeroEndereco]
		,[ComplementoEndereco]
		,[BairroEndereco]
		,[CidadeEndereco]
		,[Cnpj]
	FROM   [dbo].[Endereco] 
	WHERE  ([idEndereco] = @idEndereco) 
END
