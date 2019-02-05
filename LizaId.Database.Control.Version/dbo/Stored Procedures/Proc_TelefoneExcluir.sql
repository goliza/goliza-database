CREATE PROC [dbo].[Proc_TelefoneExcluir] 
    @idTelefone int
AS 
BEGIN
	DELETE
	FROM   [dbo].[Telefone]
	WHERE  [idTelefone] = @idTelefone
END
