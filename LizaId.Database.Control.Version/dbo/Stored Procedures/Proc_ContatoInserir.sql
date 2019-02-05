CREATE PROC [dbo].[Proc_ContatoInserir] 
    @idEmpresa int,
    @NomeContato varchar(MAX),
	@SobrenomeContato varchar(MAX),
    @CargoContato varchar(MAX),
    @TipoContato int
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Contato] ([idEmpresa],[NomeContato],[SobrenomeContato],[CargoContato],[idTipoContato])
	SELECT @idEmpresa, @NomeContato, @SobrenomeContato, @CargoContato, @TipoContato
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
