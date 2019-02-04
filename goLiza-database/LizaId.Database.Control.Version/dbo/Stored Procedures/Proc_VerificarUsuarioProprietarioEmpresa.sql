CREATE PROC [dbo].[Proc_VerificarUsuarioProprietarioEmpresa]
    @idUsuario int,
	@idEmpresa int
AS 
BEGIN

	DECLARE @isTrue bit;

	IF exists (
		SELECT UE.idUsuario
		FROM UsuarioEmpresa UE
		WHERE idUsuario = @idUsuario
		AND idEmpresa = @idEmpresa
	)
		SET @isTrue = 1
	ELSE 
		SET @isTrue = 0

	RETURN (@isTrue)
END



