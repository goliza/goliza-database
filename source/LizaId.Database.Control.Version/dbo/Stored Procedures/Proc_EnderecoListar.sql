CREATE PROCEDURE [dbo].[Proc_EnderecoListar]
	@IdEmpresa INT,
	@Inicio INT = 0, 
	@Total INT = 1
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
	FROM [dbo].[Endereco]
	WHERE [idEmpresa] = @IdEmpresa
	ORDER BY [idEndereco] DESC
	OFFSET @Inicio ROW
	FETCH NEXT @Total ROWS ONLY
END