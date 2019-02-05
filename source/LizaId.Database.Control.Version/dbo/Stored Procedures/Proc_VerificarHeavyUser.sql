CREATE PROC [dbo].[Proc_VerificarHeavyUser] 
    @cnpj char(18)
AS 
BEGIN
	SELECT        
		r.idEmpresaReceptora
	FROM            
		EmpresaReceptora AS r 
	INNER JOIN EmpresaGrupo AS g ON g.idEmpresaGrupo = r.idEmpresaGrupo
	WHERE
		(r.CNPJEmpresa = @cnpj) 
	AND 
		(g.idPlano IS NOT NULL)
END
