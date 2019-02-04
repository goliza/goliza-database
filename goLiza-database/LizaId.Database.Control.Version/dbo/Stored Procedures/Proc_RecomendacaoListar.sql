CREATE PROCEDURE [dbo].[Proc_RecomendacaoListar]
	@IdEmpresa int,
	@Inicio INT = 0, 
	@Total INT = 1
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
	ORDER BY [idRecomendacao] DESC
	OFFSET @Inicio ROW
	FETCH NEXT @Total ROWS ONLY
END






