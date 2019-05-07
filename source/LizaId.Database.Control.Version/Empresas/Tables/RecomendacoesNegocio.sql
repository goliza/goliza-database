CREATE TABLE [Empresas].[RecomendacoesNegocio] (
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [DataCriacao]         DATETIME2 (7)    NOT NULL,
    [DataAtualizacao]     DATETIME2 (7)    NULL,
    [Nome]                VARCHAR (100)    NOT NULL,
    [Sobrenome]           VARCHAR (200)    NOT NULL,
    [Cargo]               VARCHAR (250)    NOT NULL,
    [RelacionamentoId]    INT              NOT NULL,
    [EmpresaNomeFantasia] VARCHAR (250)    NOT NULL,
    [EmpresaId]           INT              NOT NULL,
    CONSTRAINT [PK_RecomendacoesNegocio] PRIMARY KEY CLUSTERED ([Id] ASC)
);

