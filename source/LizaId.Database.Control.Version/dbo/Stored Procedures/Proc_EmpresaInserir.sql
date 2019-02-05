CREATE PROC [dbo].[Proc_EmpresaInserir] 
    @idEmpresaGrupo int,
    @DataUltimaAtualizacaoOficial datetime = NULL,
    @NomeFantasiaEmpresa varchar(MAX) = NULL,
    @CNPJEmpresa char(18),
    @CNAEAtividadePrincipalEmpresa varchar(MAX) = NULL,
    @CodigoOperacionalCVMEmpresa varchar(MAX) = NULL,
    @CEPEmpresa varchar(MAX) = NULL,
    @LogradouroEmpresa varchar(MAX) = NULL,
    @NumeroEmpresa varchar(MAX) = NULL,
    @ComplementoEmpresa varchar(MAX) = NULL,
    @BairroEmpresa varchar(MAX) = NULL,
    @CidadeEmpresa varchar(MAX) = NULL,
    @UFEmpresa varchar(MAX) = NULL,
    @DataConstituicaoEmpresa datetime = NULL,
    @DataSituacaoCadastralEmpresa datetime = NULL,
    @DataSituacaoEspecialEmpresa datetime = NULL,
    @GrupoEconomicoEmpresa varchar(MAX) = NULL,
    @InscricaoEstadualEmpresa varchar(MAX) = NULL,
    @InscricaoMunicipalEmpresa varchar(MAX) = NULL,
    @NaturezaJuridicaEmpresa varchar(MAX) = NULL,
    @PaisConstituicaoEmpresaEmpresa int = NULL,
    @PaisResidenciaFiscalEmpresa int = NULL,
    @PJDireitoPublicoEmpresa bit = NULL,
    @PossuiPaisResidenciaFiscalEmpresa bit = NULL,
    @PrincipalAtividadeEconomicaEmpresa int = NULL,
    @RazaoSocialEmpresa varchar(MAX) = NULL,
    @RegimeTributarioEmpresa int = NULL,
    @SituacaoCadastralEmpresa varchar(MAX) = NULL,
    @SituacaoEspecialEmpresa varchar(MAX) = NULL,
    @SituacaoInscricaoEstadualEmpresa varchar(MAX) = NULL,
    @SituacaoInscricaoMunicipalEmpresa varchar(MAX) = NULL,
    @TipoCapitalEmpresa int = NULL,
    @ValorCapitalSocialEmpresa decimal(18, 2) = NULL
AS 
BEGIN
	DECLARE @NewId INTEGER;
	
	INSERT INTO [dbo].[EmpresaReceptora] ([idEmpresaGrupo], [DataUltimaAtualizacaoOficial], [NomeFantasiaEmpresa], [CNPJEmpresa], [CNAEAtividadePrincipalEmpresa], [CodigoOperacionalCVMEmpresa], [CEPEmpresa], [LogradouroEmpresa], [NumeroEmpresa], [ComplementoEmpresa], [BairroEmpresa], [CidadeEmpresa], [UFEmpresa], [DataConstituicaoEmpresa], [DataSituacaoCadastralEmpresa], [DataSituacaoEspecialEmpresa], [GrupoEconomicoEmpresa], [InscricaoEstadualEmpresa], [InscricaoMunicipalEmpresa], [NaturezaJuridicaEmpresa], [PaisConstituicaoEmpresaEmpresa], [PaisResidenciaFiscalEmpresa], [PJDireitoPublicoEmpresa], [PossuiPaisResidenciaFiscalEmpresa], [PrincipalAtividadeEconomicaEmpresa], [RazaoSocialEmpresa], [RegimeTributarioEmpresa], [SituacaoCadastralEmpresa], [SituacaoEspecialEmpresa], [SituacaoInscricaoEstadualEmpresa], [SituacaoInscricaoMunicipalEmpresa], [TipoCapitalEmpresa], [ValorCapitalSocialEmpresa])
	SELECT @idEmpresaGrupo, @DataUltimaAtualizacaoOficial, @NomeFantasiaEmpresa, @CNPJEmpresa, @CNAEAtividadePrincipalEmpresa, @CodigoOperacionalCVMEmpresa, @CEPEmpresa, @LogradouroEmpresa, @NumeroEmpresa, @ComplementoEmpresa, @BairroEmpresa, @CidadeEmpresa, @UFEmpresa, @DataConstituicaoEmpresa, @DataSituacaoCadastralEmpresa, @DataSituacaoEspecialEmpresa, @GrupoEconomicoEmpresa, @InscricaoEstadualEmpresa, @InscricaoMunicipalEmpresa, @NaturezaJuridicaEmpresa, @PaisConstituicaoEmpresaEmpresa, @PaisResidenciaFiscalEmpresa, @PJDireitoPublicoEmpresa, @PossuiPaisResidenciaFiscalEmpresa, @PrincipalAtividadeEconomicaEmpresa, @RazaoSocialEmpresa, @RegimeTributarioEmpresa, @SituacaoCadastralEmpresa, @SituacaoEspecialEmpresa, @SituacaoInscricaoEstadualEmpresa, @SituacaoInscricaoMunicipalEmpresa, @TipoCapitalEmpresa, @ValorCapitalSocialEmpresa
	
	SELECT @NewId = SCOPE_IDENTITY()
	RETURN (@NewId)
END
