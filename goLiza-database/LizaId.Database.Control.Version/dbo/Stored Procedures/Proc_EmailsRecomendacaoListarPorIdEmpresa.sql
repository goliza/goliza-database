create PROC [dbo].[Proc_EmailsRecomendacaoListarPorIdEmpresa] 
    @idEmpresa int
AS 
BEGIN
	SELECT
		t.idEmail,
		t.idRecomendacao as Id, 
		t.Email
	FROM EmailRecomendacao AS t 
	INNER JOIN Recomendacao AS e ON t.idRecomendacao = e.idRecomendacao
	WHERE (e.idEmpresa = @idEmpresa)

END
