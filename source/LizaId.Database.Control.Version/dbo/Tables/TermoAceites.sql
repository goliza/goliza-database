CREATE TABLE [dbo].[TermoAceites] (
    [DataCriacao]        DATETIME2 (7)    NULL,
    [UsuarioCriacaoId]   INT              NULL,
    [DataAlteracao]      DATETIME2 (7)    NULL,
    [UsuarioAlteracaoId] INT              NULL,
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [Ip]                 NVARCHAR (MAX)   NULL,
    [TokenEmail]         NVARCHAR (MAX)   NULL,
    [DataAceite]         DATETIME2 (7)    NOT NULL,
    [UsuarioId]          INT              NULL,
    CONSTRAINT [PK_TermoAceites] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TermoAceites_Usuario_UsuarioId] FOREIGN KEY ([UsuarioId]) REFERENCES [dbo].[Usuario] ([idUsuario])
);


GO
CREATE NONCLUSTERED INDEX [IX_TermoAceites_UsuarioId]
    ON [dbo].[TermoAceites]([UsuarioId] ASC);

