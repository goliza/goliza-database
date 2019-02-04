CREATE PROC [dbo].[Proc_EmpresaExcluir] 
    @idEmpresa int
AS 
BEGIN
	DELETE
	FROM   [dbo].[Empresa]
	WHERE  [idEmpresa] = @idEmpresa
END
