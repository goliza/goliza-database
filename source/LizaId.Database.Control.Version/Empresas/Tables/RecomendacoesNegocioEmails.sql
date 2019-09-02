CREATE TABLE [Empresas].[RecomendacoesNegocioEmails] (
    [UsuarioCriacaoId]      INT              NULL,
    [UsuarioAlteracaoId]    INT              NULL,
    [Id]                    UNIQUEIDENTIFIER NOT NULL,
    [RecomendacaoNegocioId] UNIQUEIDENTIFIER NOT NULL,
    [Endereco]              VARCHAR (150)    NOT NULL,
    CONSTRAINT [PK_RecomendacoesNegocioEmails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RecomendacoesNegocioEmails_RecomendacoesNegocio_RecomendacaoNegocioId] FOREIGN KEY ([RecomendacaoNegocioId]) REFERENCES [Empresas].[RecomendacoesNegocio] ([Id]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_RecomendacoesNegocioEmails_RecomendacaoNegocioId]
    ON [Empresas].[RecomendacoesNegocioEmails]([RecomendacaoNegocioId] ASC);

