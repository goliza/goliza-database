CREATE TABLE [dbo].[Conexoes] (
    [DataCriacao]                DATETIME2 (7)    NOT NULL,
    [UsuarioCriacaoId]           INT              NOT NULL,
    [DataAlteracao]              DATETIME2 (7)    NULL,
    [UsuarioAlteracaoId]         INT              NULL,
    [Id]                         UNIQUEIDENTIFIER NOT NULL,
    [EmpresaId]                  INT              NOT NULL,
    [EmpresaConectadaId]         INT              NOT NULL,
    [Status]                     SMALLINT         NOT NULL,
    [Valida]                     BIT              DEFAULT ((0)) NOT NULL,
    [EmpresaPendenteAprovacaoId] INT              NULL,
    CONSTRAINT [PK_Conexoes] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Conexoes_EmpresaReceptora_EmpresaId] FOREIGN KEY ([EmpresaId]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_Conexoes_EmpresaId]
    ON [dbo].[Conexoes]([EmpresaId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Conexoes_EmpresaPendenteAprovacaoId]
    ON [dbo].[Conexoes]([EmpresaPendenteAprovacaoId] ASC);

