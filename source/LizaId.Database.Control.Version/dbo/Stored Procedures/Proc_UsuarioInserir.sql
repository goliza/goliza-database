CREATE PROC [dbo].[Proc_UsuarioInserir] 
    @NomeUsuario varchar(MAX),
    @EmailUsuario varchar(MAX),
    @LoginUsuario varchar(MAX),

	@CPFUsuario char(14),
	@TelefoneUsuario varchar(30),
	@TermosUsoUsuario bit,
	@PoliticaPrivacidadeUsuario bit,

    @HashSenhaUsuario varchar(MAX),
	@idToken int,

    @idUsuarioCriacao int = NULL,
    @DataCriacao datetime = NULL,
    @idUsuarioUltimaAlteracao int = NULL,
    @DataUltimaAlteracao datetime = NULL
AS 
	
	DECLARE @IdEmpresaGrupo INTEGER;
	DECLARE @NewId INTEGER;

	INSERT INTO [dbo].[EmpresaGrupo] ([NomeEmpresaGrupo], [idPlano]) VALUES (null, null)
	SELECT @IdEmpresaGrupo = SCOPE_IDENTITY()
	
	INSERT INTO [dbo].[Usuario] ([NomeUsuario], [EmailUsuario], [LoginUsuario], [CPFUsuario], [TelefoneUsuario], [HashSenhaUsuario], [IdEmpresaGrupo], [idUsuarioStatus], [idToken], [TermosUsoUsuario], [PoliticaPrivacidadeUsuario], [idUsuarioCriacao], [DataCriacao], [idUsuarioUltimaAlteracao], [DataUltimaAlteracao])
	SELECT @NomeUsuario, @EmailUsuario, @LoginUsuario, @CPFUsuario, @TelefoneUsuario, @HashSenhaUsuario, @IdEmpresaGrupo, 2, @idToken, @TermosUsoUsuario, @PoliticaPrivacidadeUsuario, @idUsuarioCriacao, @DataCriacao, @idUsuarioUltimaAlteracao, @DataUltimaAlteracao

	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)

