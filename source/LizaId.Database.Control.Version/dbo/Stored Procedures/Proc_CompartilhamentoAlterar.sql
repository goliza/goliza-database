CREATE PROC [dbo].[Proc_CompartilhamentoAlterar] 
    @idCompartilhamento int,
    @idUsuarioUltimaAlteracao int,
    @DataUltimaAlteracao datetime
AS 
BEGIN
	
	DECLARE @IdEmpresaProvedora INTEGER;
	
	UPDATE [dbo].[Compartilhamento]
	SET    [idUsuarioUltimaAlteracao] = @idUsuarioUltimaAlteracao, [DataUltimaAlteracao] = @DataUltimaAlteracao
	WHERE  [idCompartilhamento] = @idCompartilhamento

	SELECT @IdEmpresaProvedora = 
	[idEmpresaProvedora]
	FROM [dbo].[Compartilhamento]
	WHERE  [idCompartilhamento] = @idCompartilhamento

	RETURN(@IdEmpresaProvedora)
END