﻿CREATE TABLE [dbo].[EmpresaReceptora] (
    [idEmpresaReceptora]                 INT             IDENTITY (1, 1) NOT NULL,
    [idEmpresaGrupo]                     INT             NULL,
    [DataUltimaAtualizacaoOficial]       DATETIME        NULL,
    [NomeFantasiaEmpresa]                VARCHAR (MAX)   NULL,
    [CNPJEmpresa]                        CHAR (18)       NOT NULL,
    [CNAEAtividadePrincipalEmpresa]      VARCHAR (MAX)   NULL,
    [CodigoOperacionalCVMEmpresa]        VARCHAR (MAX)   NULL,
    [CEPEmpresa]                         VARCHAR (MAX)   NULL,
    [LogradouroEmpresa]                  VARCHAR (MAX)   NULL,
    [NumeroEmpresa]                      VARCHAR (MAX)   NULL,
    [ComplementoEmpresa]                 VARCHAR (MAX)   NULL,
    [BairroEmpresa]                      VARCHAR (MAX)   NULL,
    [CidadeEmpresa]                      VARCHAR (MAX)   NULL,
    [UFEmpresa]                          VARCHAR (MAX)   NULL,
    [DataConstituicaoEmpresa]            DATETIME        NULL,
    [DataSituacaoCadastralEmpresa]       DATETIME        NULL,
    [DataSituacaoEspecialEmpresa]        DATETIME        NULL,
    [GrupoEconomicoEmpresa]              VARCHAR (MAX)   NULL,
    [InscricaoEstadualEmpresa]           VARCHAR (MAX)   NULL,
    [InscricaoMunicipalEmpresa]          VARCHAR (MAX)   NULL,
    [NaturezaJuridicaEmpresa]            VARCHAR (MAX)   NULL,
    [PaisConstituicaoEmpresaEmpresa]     INT             NULL,
    [PaisResidenciaFiscalEmpresa]        INT             NULL,
    [PJDireitoPublicoEmpresa]            BIT             NULL,
    [PossuiPaisResidenciaFiscalEmpresa]  BIT             NULL,
    [PrincipalAtividadeEconomicaEmpresa] INT             NULL,
    [RazaoSocialEmpresa]                 VARCHAR (MAX)   NULL,
    [RegimeTributarioEmpresa]            INT             NULL,
    [SituacaoCadastralEmpresa]           VARCHAR (MAX)   NULL,
    [SituacaoEspecialEmpresa]            VARCHAR (MAX)   NULL,
    [SituacaoInscricaoEstadualEmpresa]   VARCHAR (MAX)   NULL,
    [SituacaoInscricaoMunicipalEmpresa]  VARCHAR (MAX)   NULL,
    [TipoCapitalEmpresa]                 INT             NULL,
    [ValorCapitalSocialEmpresa]          DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED ([idEmpresaReceptora] ASC),
    CONSTRAINT [FK_EmpresaReceptora_Empresa] FOREIGN KEY ([idEmpresaGrupo]) REFERENCES [dbo].[EmpresaGrupo] ([idEmpresaGrupo])
);
