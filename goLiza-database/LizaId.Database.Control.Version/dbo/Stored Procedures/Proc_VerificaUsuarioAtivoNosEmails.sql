
CREATE PROC [dbo].[Proc_VerificaUsuarioAtivoNosEmails] 
    @Emails varchar(max),
	@CNPJEmpresa varchar(20)
AS 
BEGIN
	      SELECT COUNT(u.idUsuario) 
	        FROM Usuario u
	  INNER JOIN UsuarioEmpresa ue on ue.idUsuario = u.idUsuario
	  INNER JOIN EmpresaReceptora e on e.idEmpresaReceptora = ue.idEmpresa
	       WHERE u.EmailUsuario IN (@Emails) 
	         AND e.CNPJEmpresa = @CNPJEmpresa
	         AND u.idUsuarioStatus = 1
END

