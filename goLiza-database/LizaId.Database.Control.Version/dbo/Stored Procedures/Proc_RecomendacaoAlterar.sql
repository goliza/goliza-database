CREATE PROC [dbo].[Proc_RecomendacaoAlterar] 
    @idRecomendacao int,
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
	UPDATE [dbo].[Recomendacao]
	SET    [NomeRecomendacao] = @NomeRecomendacao, [SobrenomeRecomendacao] = @SobrenomeRecomendacao, [RelacionamentoRecomendacao] = @RelacionamentoRecomendacao, [CargoRecomendacao] = @CargoRecomendacao, [EmpresaRecomendacao] = @EmpresaRecomendacao, [NomeDocumento] = @NomeDocumento, [ComentariosRecomendacao] = @ComentariosRecomendacao, [idUsuario] = @idUsuario, [DataCriacao] = @DataCriacao, [DataAlteracao] = @DataAlteracao
	WHERE  [idRecomendacao] = @idRecomendacao

	DELETE FROM TelefoneRecomendacao WHERE [IdRecomendacaoTelefone] = @idRecomendacao
	DELETE FROM EmailRecomendacao WHERE [idRecomendacao] = @idRecomendacao
	
	RETURN (@idRecomendacao)
END
