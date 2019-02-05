CREATE PROC [dbo].[Proc_EmailAlterar] 
    @idEmail int,
    @idContato int,
    @Email varchar(MAX)
AS 
BEGIN
	UPDATE [dbo].[Email]
	SET    [idContato] = @idContato, [Email] = @Email
	WHERE  [idEmail] = @idEmail
	
	RETURN (@idEmail)
END
