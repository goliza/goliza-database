CREATE TABLE [dbo].[RepresentantesLegaisArquivos] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [RepresentanteLegalId] UNIQUEIDENTIFIER NOT NULL,
    [Nome]                 VARCHAR (150)    NULL,
    [Tipo]                 VARCHAR (100)    NULL,
    [Tamanho]              BIGINT           NOT NULL,
    [DataCriacao]          DATETIME2 (7)    NULL,
    [UsuarioCriacaoId]     INT              NULL,
    [DataAlteracao]        DATETIME2 (7)    NULL,
    [UsuarioAlteracaoId]   INT              NULL,
    CONSTRAINT [PK_RepresentantesLegaisArquivos] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RepresentantesLegaisArquivos_RepresentantesLegais_RepresentanteLegalId] FOREIGN KEY ([RepresentanteLegalId]) REFERENCES [dbo].[RepresentantesLegais] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_RepresentantesLegaisArquivos_RepresentanteLegalId]
    ON [dbo].[RepresentantesLegaisArquivos]([RepresentanteLegalId] ASC);

