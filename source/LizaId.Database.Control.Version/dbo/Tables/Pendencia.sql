CREATE TABLE [dbo].[Pendencia] (
    [idPendencia]              INT           IDENTITY (1, 1) NOT NULL,
    [idUsuarioEmpresa]         INT           NULL,
    [idEmpresaDestinataria]    INT           NOT NULL,
    [EmailDestinatario]        VARCHAR (100) NOT NULL,
    [AssuntoPendencia]         VARCHAR (200) NOT NULL,
    [idGrupoInformacao]        INT           NULL,
    [DescricaoPendencia]       VARCHAR (MAX) NULL,
    [StatusPendencia]          BIT           NOT NULL,
    [idUsuarioCriacao]         INT           NULL,
    [DataCriacao]              DATETIME      NOT NULL,
    [idUsuarioUltimaAlteracao] INT           NULL,
    [DataUltimaAlteracao]      DATETIME      NULL,
    [IdTipoPendencia]          INT           DEFAULT ((1)) NOT NULL,
    [DescricaoEncerramento]    VARCHAR (MAX) NULL,
    [CompanyDocumentId] UNIQUEIDENTIFIER NULL, 
    CONSTRAINT [PK_Pendencia] PRIMARY KEY CLUSTERED ([idPendencia] ASC),
    CONSTRAINT [FK_Pendencia_EmpresaReceptora] FOREIGN KEY ([idEmpresaDestinataria]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora]),
    CONSTRAINT [FK_Pendencia_GrupoInformacao] FOREIGN KEY ([idGrupoInformacao]) REFERENCES [dbo].[GrupoInformacao] ([idGrupoInformacao]),
    CONSTRAINT [FK_Pendencia_TipoPendencia] FOREIGN KEY ([IdTipoPendencia]) REFERENCES [dbo].[TipoPendencia] ([IdTipoPendencia]),
    CONSTRAINT [FK_Pendencia_UsuarioEmpresa] FOREIGN KEY ([idUsuarioEmpresa]) REFERENCES [dbo].[UsuarioEmpresa] ([idUsuarioEmpresa])
);



