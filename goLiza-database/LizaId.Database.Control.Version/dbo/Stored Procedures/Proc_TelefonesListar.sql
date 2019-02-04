CREATE PROC [dbo].[Proc_TelefonesListar] 
    @idContato int
AS 
BEGIN
SELECT [idTelefone]
      ,[IdContatoTelefone]
      ,[IdTipoTelefone]
      ,[NumeroTelefone]
	  ,[RamalTelefone]
      ,[DDITelefone]
  FROM [dbo].[Telefone]
	WHERE (IdContatoTelefone = @idContato)
END
