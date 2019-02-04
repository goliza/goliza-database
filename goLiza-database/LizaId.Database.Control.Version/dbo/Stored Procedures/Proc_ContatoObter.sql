CREATE PROC [dbo].[Proc_ContatoObter] 
    @idContato int
AS 
BEGIN
	SELECT [idContato], [idEmpresa], [NomeContato], [SobrenomeContato], [CargoContato], [idTipoContato] 
	FROM   [dbo].[Contato] 
	WHERE  ([idContato] = @idContato OR @idContato IS NULL) 
END
