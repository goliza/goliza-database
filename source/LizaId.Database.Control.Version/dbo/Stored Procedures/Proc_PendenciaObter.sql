CREATE PROCEDURE [dbo].[Proc_PendenciaObter]
	@idPendencia int = 0
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
		,IdTipoPendencia
		,DescricaoEncerramento
		,MotivoPendencia
	FROM Pendencia  p
	WHERE p.idPendencia = @idPendencia
END

