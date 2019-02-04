CREATE PROC [dbo].[Proc_DocumentoInserir] 
    @idEmpresa int,
    @idTipoDocumento int,
    @NomeDocumento varchar(MAX),
    @DataEmissaoDocumento datetime,
    @DataVencimentoDocumento datetime = NULL,
    @ComentariosDocumento varchar(MAX) = NULL,
	@idArquivo uniqueidentifier
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Documento] ([idEmpresa], [idTipoDocumento], [NomeDocumento], [DataEmissaoDocumento], [DataVencimentoDocumento], [ComentariosDocumento], [idArquivo])
	SELECT @idEmpresa, @idTipoDocumento, @NomeDocumento, @DataEmissaoDocumento, @DataVencimentoDocumento, @ComentariosDocumento, @idArquivo
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
