CREATE PROCEDURE [dbo].[Proc_ContatoFiltrar]
	@IdEmpresa INT,
	@Nome VARCHAR(MAX), 
	@Cargo VARCHAR(MAX)
AS 
BEGIN

IF (@Nome IS NULL AND @Cargo IS NULL)
	BEGIN
		SELECT 
			[idContato]
			,[idEmpresa]
			,[NomeContato]
			,[SobrenomeContato]
			,[CargoContato]
			,[idTipoContato]
		FROM [dbo].[Contato]
		WHERE [idEmpresa] = @IdEmpresa
		ORDER BY [idContato]
	END
ELSE IF (@Nome IS NULL)
	BEGIN
		SELECT 
			[idContato]
			,[idEmpresa]
			,[NomeContato]
			,[SobrenomeContato]
			,[CargoContato]
			,[idTipoContato]
		FROM [dbo].[Contato]
		WHERE [idEmpresa] = @IdEmpresa
		AND (
			lower([CargoContato]) like '%' + lower(@Cargo) + '%'
		)
		ORDER BY [idContato]
	END
ELSE IF (@Cargo IS NULL)
	BEGIN
		SELECT 
			[idContato]
			,[idEmpresa]
			,[NomeContato]
			,[SobrenomeContato]
			,[CargoContato]
			,[idTipoContato]
		FROM [dbo].[Contato]
		WHERE [idEmpresa] = @IdEmpresa
		AND (
			lower([NomeContato]) like '%' + lower(@Nome) + '%'
		)
		ORDER BY [idContato]
	END
ELSE
	BEGIN
		SELECT 
			[idContato]
			,[idEmpresa]
			,[NomeContato]
			,[SobrenomeContato]
			,[CargoContato]
			,[idTipoContato]
		FROM [dbo].[Contato]
		WHERE [idEmpresa] = @IdEmpresa
		AND (
		lower([NomeContato]) like '%' + lower(@Nome) + '%'
		OR lower([CargoContato]) like '%' + lower(@Cargo) + '%'
		)
		ORDER BY [idContato]
	END
END
