CREATE PROC [dbo].[Proc_CompartilhamentoAlterar] 
    @idCompartilhamento int,
    @idUsuarioUltimaAlteracao int,
    @DataUltimaAlteracao datetime
AS 
BEGIN
	UPDATE [dbo].[Compartilhamento]
	SET    [idUsuarioUltimaAlteracao] = @idUsuarioUltimaAlteracao, [DataUltimaAlteracao] = @DataUltimaAlteracao
	WHERE  [idCompartilhamento] = @idCompartilhamento

	SELECT [idEmpresaProvedora]
	FROM [dbo].[Compartilhamento]
	WHERE  [idCompartilhamento] = @idCompartilhamento
END