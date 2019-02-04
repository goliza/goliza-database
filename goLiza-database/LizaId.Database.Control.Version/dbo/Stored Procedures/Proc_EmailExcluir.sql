CREATE PROC [dbo].[Proc_EmailExcluir] 
    @idEmail int
AS 
BEGIN
	DELETE
	FROM   [dbo].[Email]
	WHERE  [idEmail] = @idEmail
END
