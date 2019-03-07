CREATE PROCEDURE [dbo].[Proc_PendenciaAlterar]
	@idPendencia int,
    @EmailDestinatario varchar(MAX),
    @AssuntoPendencia varchar(MAX),
	@IdGrupoInformacao int, 
	@DescricaoPendencia varchar(max),
	@idUsuarioUltimaAlteracao int,
	@DataUltimaAlteracao datetime,
	@StatusPendencia varchar(max)
AS 
BEGIN
	UPDATE [dbo].[Pendencia]
	SET    [EmailDestinatario] = @EmailDestinatario, [AssuntoPendencia] = @AssuntoPendencia, [IdGrupoInformacao] = @IdGrupoInformacao, [DescricaoPendencia] = @DescricaoPendencia, [idUsuarioUltimaAlteracao] = @idUsuarioUltimaAlteracao, [DataUltimaAlteracao] = @DataUltimaAlteracao, [StatusPendencia] = @StatusPendencia
	WHERE  [idPendencia] = @idPendencia
	
	RETURN (@idPendencia)
END
