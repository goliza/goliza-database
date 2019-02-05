create PROC [dbo].[Proc_TelefonesEnderecoListar] 
    @idEndereco int
AS 
BEGIN
SELECT [idTelefone]
      ,[IdEnderecoTelefone] AS Id
      ,[IdTipoTelefone]
      ,[NumeroTelefone]
	  ,[RamalTelefone]
      ,[DDITelefone]
  FROM [dbo].[TelefoneEndereco]
	WHERE (IdEnderecoTelefone = @idEndereco)
END
