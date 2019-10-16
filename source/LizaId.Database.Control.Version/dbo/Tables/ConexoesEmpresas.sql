CREATE TABLE [dbo].[ConexoesEmpresas] (
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [ConexaoId]          UNIQUEIDENTIFIER NOT NULL,
    [EmpresaId]          INT              NOT NULL,
    [EmpresaConectadaId] INT              NOT NULL,
    CONSTRAINT [PK_ConexoesEmpresas] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConexoesEmpresas_Conexoes_ConexaoId] FOREIGN KEY ([ConexaoId]) REFERENCES [dbo].[Conexoes] ([Id]) ON DELETE CASCADE
);




GO



GO



GO
CREATE NONCLUSTERED INDEX [IX_ConexoesEmpresas_ConexaoId]
    ON [dbo].[ConexoesEmpresas]([ConexaoId] ASC);

