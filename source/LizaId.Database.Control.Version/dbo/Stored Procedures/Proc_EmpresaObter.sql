CREATE PROC [dbo].[Proc_EmpresaObter] 
    @idEmpresaReceptora int
AS 
BEGIN
	SELECT 
	[idEmpresaReceptora], 
	[idEmpresaGrupo], 
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
	FROM   [dbo].[EmpresaReceptora] 
	WHERE  ([idEmpresaReceptora] = @idEmpresaReceptora) 
END
