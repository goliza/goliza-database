create PROC [dbo].[Proc_TelefonesRecomendacaoListar] 
    @idRecomendacao int
AS 
BEGIN
SELECT [idTelefone]
      ,[IdRecomendacaoTelefone] AS Id
      ,[IdTipoTelefone]
      ,[NumeroTelefone]
	  ,[RamalTelefone]
      ,[DDITelefone]
  FROM [dbo].[TelefoneRecomendacao]
	WHERE (IdRecomendacaoTelefone = @idRecomendacao)
END
