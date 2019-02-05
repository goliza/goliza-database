CREATE PROC [dbo].[Proc_ProspectInserir] 
    @NomeProspect varchar(MAX),
    @EmailProspect varchar(MAX),
    @EmpresaProspect varchar(MAX) = NULL,
    @TelefoneProspect varchar(MAX) = NULL,
    @MensagemProspect varchar(MAX) = NULL
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[Prospect] ([NomeProspect], [EmailProspect], [EmpresaProspect], [TelefoneProspect], [MensagemProspect])
	SELECT @NomeProspect, @EmailProspect, @EmpresaProspect, @TelefoneProspect, @MensagemProspect
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
