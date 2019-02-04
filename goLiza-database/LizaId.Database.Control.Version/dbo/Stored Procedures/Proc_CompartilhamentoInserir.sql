CREATE PROC [dbo].[Proc_CompartilhamentoInserir] 
    @idEmpresaProvedora int,
    @CNPJEmpresaReceptora char(18),
    @idUsuarioCriacao int,
    @DataCriacao datetime,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Compartilhamento] ([idEmpresaProvedora], [CNPJEmpresaReceptora], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao])
	SELECT @idEmpresaProvedora, @CNPJEmpresaReceptora, @idUsuarioCriacao, @DataCriacao, @idUsuarioUltimaAlteracao, @DataUltimaAlteracao
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
