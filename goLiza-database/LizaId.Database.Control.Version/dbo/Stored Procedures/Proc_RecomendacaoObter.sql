CREATE PROC [dbo].[Proc_RecomendacaoObter] 
    @idRecomendacao int
AS 
BEGIN
	SELECT [idRecomendacao], [idEmpresa], [NomeRecomendacao], [SobrenomeRecomendacao], [RelacionamentoRecomendacao], [idArquivo], [CargoRecomendacao], [EmpresaRecomendacao], [NomeDocumento], [ComentariosRecomendacao], [idUsuario], [DataCriacao], [DataAlteracao] 
	FROM   [dbo].[Recomendacao] 
	WHERE  ([idRecomendacao] = @idRecomendacao OR @idRecomendacao IS NULL) 
END
