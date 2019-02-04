create PROCEDURE [dbo].[Proc_RecomendacaoFiltrar]
	@IdEmpresa INT,
	@Nome VARCHAR(MAX), 
	@Cargo VARCHAR(MAX)
AS 
BEGIN
	SELECT 
		[idRecomendacao], 
		[idEmpresa], 
		[NomeRecomendacao], 
		[SobrenomeRecomendacao], 
		[RelacionamentoRecomendacao], 
		[idArquivo], 
		[CargoRecomendacao], 
		[EmpresaRecomendacao], 
		[NomeDocumento], 
		[ComentariosRecomendacao], 
		[idUsuario], 
		[DataCriacao], 
		[DataAlteracao] 
	FROM   [dbo].[Recomendacao] 
	WHERE [idEmpresa] = @IdEmpresa
	AND (
	lower([NomeRecomendacao]) like '%' + lower(@Nome) + '%'
	OR lower([CargoRecomendacao]) like '%' + lower(@Cargo) + '%'
	)
	ORDER BY [idRecomendacao]
END






