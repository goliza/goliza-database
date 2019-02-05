create PROC [dbo].[Proc_EmailsRecomendacaoListar] 
    @idRecomendacao int
AS 
BEGIN
SELECT [idEmail]
      ,[IdRecomendacao]
      ,[Email]
  FROM [dbo].[EmailRecomendacao]
	WHERE (IdRecomendacao = @idRecomendacao)
END
