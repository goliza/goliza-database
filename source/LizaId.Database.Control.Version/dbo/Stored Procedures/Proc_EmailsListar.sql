create PROC [dbo].[Proc_EmailsListar] 
    @idContato int
AS 
BEGIN
SELECT [idEmail]
      ,[idContato]
      ,[Email]
  FROM [dbo].[Email]
	WHERE (IdContato = @idContato)
END
