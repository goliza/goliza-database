CREATE TABLE [dbo].[ConexoesEmpresas] (
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [ConexaoId]          UNIQUEIDENTIFIER NOT NULL,
    [EmpresaId]          INT              NOT NULL,
    [EmpresaConectadaId] INT              NOT NULL,
    CONSTRAINT [PK_ConexoesEmpresas] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConexoesEmpresas_Conexoes_ConexaoId] FOREIGN KEY ([ConexaoId]) REFERENCES [dbo].[Conexoes] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ConexoesEmpresas_EmpresaReceptora_EmpresaConectadaId] FOREIGN KEY ([EmpresaConectadaId]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora]),
    CONSTRAINT [FK_ConexoesEmpresas_EmpresaReceptora_EmpresaId] FOREIGN KEY ([EmpresaId]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora])
);


GO
CREATE NONCLUSTERED INDEX [IX_ConexoesEmpresas_EmpresaId]
    ON [dbo].[ConexoesEmpresas]([EmpresaId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConexoesEmpresas_EmpresaConectadaId]
    ON [dbo].[ConexoesEmpresas]([EmpresaConectadaId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConexoesEmpresas_ConexaoId]
    ON [dbo].[ConexoesEmpresas]([ConexaoId] ASC);

