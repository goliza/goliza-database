CREATE PROC [dbo].[Proc_EmpresaAlterar] 
    @idEmpresaReceptora int,
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
	UPDATE [dbo].[EmpresaReceptora]
	SET    [NomeFantasiaEmpresa] = @NomeFantasiaEmpresa, [CNPJEmpresa] = @CNPJEmpresa, [CNAEAtividadePrincipalEmpresa] = @CNAEAtividadePrincipalEmpresa, [CodigoOperacionalCVMEmpresa] = @CodigoOperacionalCVMEmpresa, [CEPEmpresa] = @CEPEmpresa, [LogradouroEmpresa] = @LogradouroEmpresa, [NumeroEmpresa] = @NumeroEmpresa, [ComplementoEmpresa] = @ComplementoEmpresa, [BairroEmpresa] = @BairroEmpresa, [CidadeEmpresa] = @CidadeEmpresa, [UFEmpresa] = @UFEmpresa, [DataConstituicaoEmpresa] = @DataConstituicaoEmpresa, [DataSituacaoCadastralEmpresa] = @DataSituacaoCadastralEmpresa, [DataSituacaoEspecialEmpresa] = @DataSituacaoEspecialEmpresa, [GrupoEconomicoEmpresa] = @GrupoEconomicoEmpresa, [InscricaoEstadualEmpresa] = @InscricaoEstadualEmpresa, [InscricaoMunicipalEmpresa] = @InscricaoMunicipalEmpresa, [NaturezaJuridicaEmpresa] = @NaturezaJuridicaEmpresa, [PaisConstituicaoEmpresaEmpresa] = @PaisConstituicaoEmpresaEmpresa, [PaisResidenciaFiscalEmpresa] = @PaisResidenciaFiscalEmpresa, [PJDireitoPublicoEmpresa] = @PJDireitoPublicoEmpresa, [PossuiPaisResidenciaFiscalEmpresa] = @PossuiPaisResidenciaFiscalEmpresa, [PrincipalAtividadeEconomicaEmpresa] = @PrincipalAtividadeEconomicaEmpresa, [RazaoSocialEmpresa] = @RazaoSocialEmpresa, [RegimeTributarioEmpresa] = @RegimeTributarioEmpresa, [SituacaoCadastralEmpresa] = @SituacaoCadastralEmpresa, [SituacaoEspecialEmpresa] = @SituacaoEspecialEmpresa, [SituacaoInscricaoEstadualEmpresa] = @SituacaoInscricaoEstadualEmpresa, [SituacaoInscricaoMunicipalEmpresa] = @SituacaoInscricaoMunicipalEmpresa, [TipoCapitalEmpresa] = @TipoCapitalEmpresa, [ValorCapitalSocialEmpresa] = @ValorCapitalSocialEmpresa
	WHERE  [idEmpresaReceptora] = @idEmpresaReceptora
	
	RETURN (@idEmpresaReceptora)
END
