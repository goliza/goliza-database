CREATE PROC [dbo].[Proc_RecomendacaoExcluir] 
    @idRecomendacao int
AS 
BEGIN
	DELETE FROM TelefoneRecomendacao WHERE [IdRecomendacaoTelefone] = @idRecomendacao
	DELETE FROM EmailRecomendacao WHERE [idRecomendacao] = @idRecomendacao

	DELETE FROM [dbo].[Recomendacao] WHERE [idRecomendacao] = @idRecomendacao
END
