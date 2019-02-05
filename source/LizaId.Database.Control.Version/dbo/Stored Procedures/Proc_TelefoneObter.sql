CREATE PROC [dbo].[Proc_TelefoneObter] 
    @idTelefone int
AS 
BEGIN
	SELECT [idTelefone], [IdContatoTelefone], [IdTipoTelefone], [NumeroTelefone], [RamalTelefone], [DDITelefone]
	FROM   [dbo].[Telefone] 
	WHERE  ([idTelefone] = @idTelefone OR @idTelefone IS NULL) 
END
