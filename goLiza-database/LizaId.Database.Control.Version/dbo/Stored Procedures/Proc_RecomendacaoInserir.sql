CREATE PROC [dbo].[Proc_RecomendacaoInserir] 
    @idEmpresa int,
    @NomeRecomendacao varchar(MAX),
    @SobrenomeRecomendacao varchar(MAX) = NULL,
    @RelacionamentoRecomendacao int,
    @idArquivo uniqueidentifier,
    @CargoRecomendacao varchar(MAX),
    @EmpresaRecomendacao varchar(MAX),
    @NomeDocumento varchar(MAX),
    @ComentariosRecomendacao varchar(MAX) = NULL,
    @idUsuario int = NULL,
    @DataCriacao datetime = NULL,
    @DataAlteracao datetime = NULL
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Recomendacao] ([idEmpresa], [NomeRecomendacao], [SobrenomeRecomendacao], [RelacionamentoRecomendacao], [idArquivo], [CargoRecomendacao], [EmpresaRecomendacao], [NomeDocumento], [ComentariosRecomendacao], [idUsuario], [DataCriacao], [DataAlteracao])
	SELECT @idEmpresa, @NomeRecomendacao, @SobrenomeRecomendacao, @RelacionamentoRecomendacao, @idArquivo, @CargoRecomendacao, @EmpresaRecomendacao, @NomeDocumento, @ComentariosRecomendacao, @idUsuario, @DataCriacao, @DataAlteracao
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
