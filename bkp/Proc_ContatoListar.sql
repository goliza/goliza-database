CREATE PROCEDURE [dbo].[Proc_ContatoListar] @IdEmpresa INT,
	@Inicio INT = 0, 
	@Total INT = 1
AS 
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
	ORDER BY [DataAlteracao] DESC
	OFFSET @Inicio ROW
	FETCH NEXT @Total ROWS ONLY
END
