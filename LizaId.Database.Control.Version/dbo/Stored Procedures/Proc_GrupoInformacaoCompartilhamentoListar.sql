create PROC [dbo].[Proc_GrupoInformacaoCompartilhamentoListar] 
    @idCompartilhamento int
AS 
BEGIN
		SELECT
		gic.idGrupoInformacaoCompartilhamento, gic.idCompartilhamento, gic.idGrupoInformacao, gi.NomeGrupoInformacao
		FROM
		GrupoInformacaoCompartilhamento AS gic INNER JOIN
		GrupoInformacao AS gi ON gi.idGrupoInformacao = gic.idGrupoInformacao
		WHERE
		(gic.idCompartilhamento = @idCompartilhamento) AND (gi.idGrupoInformacaoPai IS NOT NULL)
END
