CREATE TABLE [Empresas].[RecomendacoesNegocioTelefones] (
    [Id]                    UNIQUEIDENTIFIER NOT NULL,
    [RecomendacaoNegocioId] UNIQUEIDENTIFIER NOT NULL,
    [CodigoPais]            VARCHAR (2)      NOT NULL,
    [CodigoArea]            VARCHAR (2)      NOT NULL,
    [Numero]                VARCHAR (9)      NOT NULL,
    [Ramal]                 VARCHAR (10)     NULL,
    [Tipo]                  SMALLINT         DEFAULT (CONVERT([smallint],(0))) NOT NULL,
    CONSTRAINT [PK_RecomendacoesNegocioTelefones] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RecomendacoesNegocioTelefones_RecomendacoesNegocio_RecomendacaoNegocioId] FOREIGN KEY ([RecomendacaoNegocioId]) REFERENCES [Empresas].[RecomendacoesNegocio] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_RecomendacoesNegocioTelefones_RecomendacaoNegocioId]
    ON [Empresas].[RecomendacoesNegocioTelefones]([RecomendacaoNegocioId] ASC);

