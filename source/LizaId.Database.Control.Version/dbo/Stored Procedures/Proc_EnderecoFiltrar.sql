CREATE PROCEDURE [dbo].[Proc_EnderecoFiltrar]
	@IdEmpresa INT,
	@Logradouro VARCHAR(MAX), 
	@Cidade VARCHAR(MAX)
AS 
BEGIN
IF (@Logradouro IS NULL AND @Cidade IS NULL)
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
		FROM [dbo].[Endereco]
		WHERE [idEmpresa] = @IdEmpresa
		ORDER BY [idEndereco] desc
	END
ELSE IF (@Logradouro IS NULL)
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
		FROM [dbo].[Endereco]
		WHERE [idEmpresa] = @IdEmpresa
		AND (
			lower([CidadeEndereco]) like '%' + lower(@Cidade) + '%'
		)
		ORDER BY [idEndereco] desc
	END
ELSE IF (@Cidade IS NULL)
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
		FROM [dbo].[Endereco]
		WHERE [idEmpresa] = @IdEmpresa
		AND (
			lower([LogradouroEndereco]) like '%' + lower(@Logradouro) + '%'
		)
		ORDER BY [idEndereco] desc
	END
ELSE
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
		FROM [dbo].[Endereco]
		WHERE [idEmpresa] = @IdEmpresa
		AND (
		lower([LogradouroEndereco]) like '%' + lower(@Logradouro) + '%'
		OR lower([CidadeEndereco]) like '%' + lower(@Cidade) + '%'
		)
		ORDER BY [idEndereco] desc
	END
END






