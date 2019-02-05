CREATE PROC [dbo].[Proc_EmailObter] 
    @idEmail int
AS 
BEGIN
	SELECT [idEmail], [idContato], [Email] 
	FROM   [dbo].[Email] 
	WHERE  ([idEmail] = @idEmail OR @idEmail IS NULL) 
END
