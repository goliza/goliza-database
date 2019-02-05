CREATE PROC [dbo].[Proc_EmailInserir] 
    @idContato int,
    @Email varchar(MAX)
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Email] ([idContato], [Email])
	SELECT @idContato, @Email
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
