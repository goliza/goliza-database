create PROC [dbo].[Proc_TelefonesRecomendacaoListarPorIdEmpresa] 
    @idEmpresa int
AS 
BEGIN
	SELECT        
		t.idTelefone, 
		t.IdRecomendacaoTelefone as Id, 
		t.IdTipoTelefone, 
		t.NumeroTelefone, 
		t.RamalTelefone, 
		t.DDITelefone
	FROM TelefoneRecomendacao AS t 
	INNER JOIN Recomendacao AS e ON t.IdRecomendacaoTelefone = e.idRecomendacao
	WHERE (e.idEmpresa = @idEmpresa)

END
