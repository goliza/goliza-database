CREATE TABLE [dbo].[EmpresaReceptora] (
    [idEmpresaReceptora]                 INT             IDENTITY (1, 1) NOT NULL,
    [idEmpresaGrupo]                     INT             NOT NULL,
    [DataUltimaAtualizacaoOficial]       DATETIME        NULL,
    [CNPJEmpresa]                        CHAR (18)       NOT NULL,
    [RazaoSocialEmpresa]                 NVARCHAR (MAX)  NULL,
    [NomeFantasiaEmpresa]                NVARCHAR (MAX)  NULL,
    [CNAEAtividadePrincipalEmpresa]      NVARCHAR (MAX)  NULL,
    [CodigoOperacionalCVMEmpresa]        NVARCHAR (MAX)  NULL,
    [CEPEmpresa]                         NVARCHAR (MAX)  NULL,
    [LogradouroEmpresa]                  NVARCHAR (MAX)  NULL,
    [NumeroEmpresa]                      NVARCHAR (MAX)  NULL,
    [ComplementoEmpresa]                 NVARCHAR (MAX)  NULL,
    [BairroEmpresa]                      NVARCHAR (MAX)  NULL,
    [CidadeEmpresa]                      NVARCHAR (MAX)  NULL,
    [UFEmpresa]                          NVARCHAR (MAX)  NULL,
    [DataConstituicaoEmpresa]            DATETIME        NULL,
    [DataSituacaoCadastralEmpresa]       DATETIME        NULL,
    [DataSituacaoEspecialEmpresa]        DATETIME        NULL,
    [GrupoEconomicoEmpresa]              NVARCHAR (MAX)  NULL,
    [InscricaoEstadualEmpresa]           NVARCHAR (MAX)  NULL,
    [InscricaoMunicipalEmpresa]          NVARCHAR (MAX)  NULL,
    [NaturezaJuridicaEmpresa]            NVARCHAR (MAX)  NULL,
    [PaisConstituicaoEmpresaEmpresa]     INT             NULL,
    [PaisResidenciaFiscalEmpresa]        INT             NULL,
    [PJDireitoPublicoEmpresa]            BIT             NULL,
    [PossuiPaisResidenciaFiscalEmpresa]  BIT             NULL,
    [PrincipalAtividadeEconomicaEmpresa] INT             NULL,
    [RegimeTributarioEmpresa]            INT             NULL,
    [SituacaoCadastralEmpresa]           NVARCHAR (MAX)  NULL,
    [SituacaoEspecialEmpresa]            NVARCHAR (MAX)  NULL,
    [SituacaoInscricaoEstadualEmpresa]   NVARCHAR (MAX)  NULL,
    [SituacaoInscricaoMunicipalEmpresa]  NVARCHAR (MAX)  NULL,
    [TipoCapitalEmpresa]                 INT             NULL,
    [ValorCapitalSocialEmpresa]          DECIMAL (30, 2) NOT NULL,
    [Anonima]                            BIT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_EmpresaReceptora] PRIMARY KEY CLUSTERED ([idEmpresaReceptora] ASC),
    CONSTRAINT [FK_EmpresaReceptora_EmpresaGrupo_idEmpresaGrupo] FOREIGN KEY ([idEmpresaGrupo]) REFERENCES [dbo].[EmpresaGrupo] ([idEmpresaGrupo]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_EmpresaReceptora_idEmpresaGrupo]
    ON [dbo].[EmpresaReceptora]([idEmpresaGrupo] ASC);

