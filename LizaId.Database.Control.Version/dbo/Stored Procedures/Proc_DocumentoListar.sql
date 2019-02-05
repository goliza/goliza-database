CREATE PROC [dbo].[Proc_DocumentoListar] 
    @IdEmpresa int,
	@idTipo int,
	@Inicio INT = 0, 
	@Total INT = 1
AS 
BEGIN
	SELECT [idDocumento], [idEmpresa], [idTipoDocumento], [idArquivo], [NomeDocumento], [DataEmissaoDocumento], [DataVencimentoDocumento], [ComentariosDocumento] 
	FROM   [dbo].[Documento] 
	WHERE [idEmpresa] = @IdEmpresa AND [idTipoDocumento] = @idTipo
	ORDER BY [idDocumento] DESC
	OFFSET @Inicio ROW
	FETCH NEXT @Total ROWS ONLY
END
