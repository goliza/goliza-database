CREATE PROCEDURE [dbo].[Proc_EmpresaObterPorCnpj]
	@cnpj varchar(max),
	@idUsuario int
AS 
BEGIN
	SELECT 
	[idEmpresaReceptora], 
	er.idEmpresaGrupo, 
	[DataUltimaAtualizacaoOficial], 
	[NomeFantasiaEmpresa], 
	[CNPJEmpresa], 
	[CNAEAtividadePrincipalEmpresa], 
	[CodigoOperacionalCVMEmpresa], 
	[CEPEmpresa], 
	[LogradouroEmpresa], 
	[NumeroEmpresa], 
	[ComplementoEmpresa], 
	[BairroEmpresa], 
	[CidadeEmpresa], 
	[UFEmpresa], 
	[DataConstituicaoEmpresa], 
	[DataSituacaoCadastralEmpresa], 
	[DataSituacaoEspecialEmpresa], 
	[GrupoEconomicoEmpresa], 
	[InscricaoEstadualEmpresa], 
	[InscricaoMunicipalEmpresa], 
	[NaturezaJuridicaEmpresa], 
	[PaisConstituicaoEmpresaEmpresa], 
	[PaisResidenciaFiscalEmpresa], 
	[PJDireitoPublicoEmpresa], 
	[PossuiPaisResidenciaFiscalEmpresa], 
	[PrincipalAtividadeEconomicaEmpresa], 
	[RazaoSocialEmpresa], 
	[RegimeTributarioEmpresa], 
	[SituacaoCadastralEmpresa], 
	[SituacaoEspecialEmpresa], 
	[SituacaoInscricaoEstadualEmpresa], 
	[SituacaoInscricaoMunicipalEmpresa], 
	[TipoCapitalEmpresa], 
	[ValorCapitalSocialEmpresa] 
	FROM   [dbo].[EmpresaReceptora] er
	INNER JOIN	[UsuarioEmpresa] ue on ue.idEmpresa = er.idEmpresaReceptora
	INNER JOIN	[Usuario] u on u.idUsuario = ue.idUsuario
	WHERE  ([CNPJEmpresa] = @cnpj) 
	AND u.idUsuario = @idUsuario
	
END
