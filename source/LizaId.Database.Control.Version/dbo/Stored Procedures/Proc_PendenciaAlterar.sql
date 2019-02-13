CREATE PROCEDURE [dbo].[Proc_PendenciaAlterar]
	@idPendencia int,
    @EmailDestinatario varchar(MAX),
    @AssuntoPendencia varchar(MAX),
	@IdGrupoInformacao int, 
	@DescricaoPendencia int,
	@idUsuarioUltimaAlteracao int,
	@DataUltimaAlteracao datetime
AS 
BEGIN
	UPDATE [dbo].[Pendencia]
	SET    [EmailDestinatario] = @EmailDestinatario, [AssuntoPendencia] = @AssuntoPendencia, [IdGrupoInformacao] = @IdGrupoInformacao, [DescricaoPendencia] = @DescricaoPendencia, [idUsuarioUltimaAlteracao] = @idUsuarioUltimaAlteracao, [DataUltimaAlteracao] = @DataUltimaAlteracao
	WHERE  [idPendencia] = @idPendencia
	
	RETURN (@idPendencia)
END
