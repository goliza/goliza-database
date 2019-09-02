CREATE TABLE [dbo].[ComposicoesAcionariasArquivos] (
    [Id]                    UNIQUEIDENTIFIER NOT NULL,
    [ComposicaoAcionariaId] UNIQUEIDENTIFIER NOT NULL,
    [Nome]                  VARCHAR (150)    NULL,
    [Tipo]                  VARCHAR (100)    NULL,
    [Tamanho]               BIGINT           NOT NULL,
    [DataCriacao]           DATETIME2 (7)    NULL,
    [UsuarioCriacaoId]      INT              NULL,
    [DataAlteracao]         DATETIME2 (7)    NULL,
    [UsuarioAlteracaoId]    INT              NULL,
    CONSTRAINT [PK_ComposicoesAcionariasArquivos] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ComposicoesAcionariasArquivos_ComposicoesAcionarias_ComposicaoAcionariaId] FOREIGN KEY ([ComposicaoAcionariaId]) REFERENCES [dbo].[ComposicoesAcionarias] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ComposicoesAcionariasArquivos_ComposicaoAcionariaId]
    ON [dbo].[ComposicoesAcionariasArquivos]([ComposicaoAcionariaId] ASC);

