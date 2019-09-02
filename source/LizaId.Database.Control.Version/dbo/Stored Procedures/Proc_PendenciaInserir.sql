CREATE PROCEDURE [dbo].[Proc_PendenciaInserir] @idUsuarioEmpresa int,
    @idEmpresaDestinataria int,
    @EmailDestinatario varchar(MAX),
	@AssuntoPendencia varchar(MAX),
	@idGrupoInformacao int,
	@DescricaoPendencia varchar(MAX),
	@StatusPendencia bit,
	@idUsuarioCriacao int,
	@DataCriacao datetime,
	@idUsuarioUltimaAlteracao int,
	@DataUltimaAlteracao datetime,
	@dataPrevisaoConclusao datetime,
	@motivoPendencia int
	
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Pendencia]([idUsuarioEmpresa], [idEmpresaDestinataria], [EmailDestinatario], [AssuntoPendencia], [idGrupoInformacao], [DescricaoPendencia], [StatusPendencia], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao],[DataPrevisaoConclusao],[MotivoPendencia],[idTipoPendencia] )
	SELECT @idUsuarioEmpresa, @idEmpresaDestinataria, @EmailDestinatario, @AssuntoPendencia, @idGrupoInformacao, @DescricaoPendencia, @StatusPendencia, @idUsuarioCriacao, @DataCriacao, @idUsuarioUltimaAlteracao, @DataUltimaAlteracao,@dataPrevisaoConclusao,@motivoPendencia,1
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
