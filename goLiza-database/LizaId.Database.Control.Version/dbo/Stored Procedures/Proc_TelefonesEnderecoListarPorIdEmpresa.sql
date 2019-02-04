create PROC [dbo].[Proc_TelefonesEnderecoListarPorIdEmpresa] 
    @idEmpresa int
AS 
BEGIN
	SELECT        
		t.idTelefone, 
		t.IdEnderecoTelefone as Id, 
		t.IdTipoTelefone, 
		t.NumeroTelefone, 
		t.RamalTelefone, 
		t.DDITelefone
	FROM TelefoneEndereco AS t 
	INNER JOIN Endereco AS e ON t.IdEnderecoTelefone = e.idEndereco
	WHERE (e.idEmpresa = @idEmpresa)

END
