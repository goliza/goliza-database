CREATE PROCEDURE [dbo].[Proc_PendenciaListar]
	@IdEmpresa INT,
	@Inicio INT = 0, 
	@Total INT = 1
AS 
BEGIN
	SELECT 
		idPendencia
		,idUsuarioEmpresa
		,idEmpresaDestinataria
		,EmailDestinatario
		,AssuntoPendencia
		,idGrupoInformacao
		,DescricaoPendencia
		,StatusPendencia
		,idUsuarioCriacao
		,DataCriacao
		,idUsuarioUltimaAlteracao
		,DataUltimaAlteracao
	FROM [dbo].[Pendencia]
	WHERE [idEmpresaDestinataria] = @IdEmpresa
	ORDER BY [idPendencia] DESC
	OFFSET @Inicio ROW
	FETCH NEXT @Total ROWS ONLY
END
