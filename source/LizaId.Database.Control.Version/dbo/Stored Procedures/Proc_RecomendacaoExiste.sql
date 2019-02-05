create PROC [dbo].[Proc_RecomendacaoExiste] 
    @idRecomendacao int
AS 
BEGIN
	DECLARE @Qtd INTEGER;

	SELECT @Qtd = COUNT([idRecomendacao]) FROM [dbo].[Recomendacao] WHERE [idRecomendacao] = @idRecomendacao

	RETURN (@Qtd)
END
