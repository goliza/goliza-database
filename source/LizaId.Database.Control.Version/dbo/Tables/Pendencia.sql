CREATE TABLE [dbo].[Pendencia] (
    [DataCriacao]              DATETIME2 (7)    NOT NULL,
    [idUsuarioCriacao]         INT              NULL,
    [DataUltimaAlteracao]      DATETIME2 (7)    NULL,
    [idUsuarioUltimaAlteracao] INT              NULL,
    [idPendencia]              INT              IDENTITY (1, 1) NOT NULL,
    [idUsuarioEmpresa]         INT              NULL,
    [idEmpresaDestinataria]    INT              NOT NULL,
    [EmailDestinatario]        VARCHAR (100)    NOT NULL,
    [AssuntoPendencia]         VARCHAR (200)    NOT NULL,
    [idGrupoInformacao]        INT              NULL,
    [DescricaoPendencia]       NVARCHAR (MAX)   NULL,
    [StatusPendencia]          BIT              NOT NULL,
    [IdTipoPendencia]          INT              NOT NULL,
    [DescricaoEncerramento]    NVARCHAR (MAX)   NULL,
    [CompanyDocumentId]        UNIQUEIDENTIFIER NULL,
    [DataPrevisaoConclusao]    DATETIME2 (7)    NULL,
    [MotivoPendencia]          INT              DEFAULT ((0)) NOT NULL,
    [idDestinatario]           INT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Pendencia] PRIMARY KEY CLUSTERED ([idPendencia] ASC),
    CONSTRAINT [FK_Pendencia_CompanyDocuments_CompanyDocumentId] FOREIGN KEY ([CompanyDocumentId]) REFERENCES [Companies].[CompanyDocuments] ([Id]),
    CONSTRAINT [FK_Pendencia_TipoPendencia_IdTipoPendencia] FOREIGN KEY ([IdTipoPendencia]) REFERENCES [dbo].[TipoPendencia] ([IdTipoPendencia]) ON DELETE CASCADE
);










GO
CREATE NONCLUSTERED INDEX [IX_Pendencia_IdTipoPendencia]
    ON [dbo].[Pendencia]([IdTipoPendencia] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Pendencia_CompanyDocumentId]
    ON [dbo].[Pendencia]([CompanyDocumentId] ASC);

