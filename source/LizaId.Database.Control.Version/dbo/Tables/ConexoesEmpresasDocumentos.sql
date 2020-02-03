CREATE TABLE [dbo].[ConexoesEmpresasDocumentos] (
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [DocumentoId]      UNIQUEIDENTIFIER NOT NULL,
    [ConexaoEmpresaId] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_ConexoesEmpresasDocumentos] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConexoesEmpresasDocumentos_CompanyDocuments_DocumentoId] FOREIGN KEY ([DocumentoId]) REFERENCES [Companies].[CompanyDocuments] ([Id]),
    CONSTRAINT [FK_ConexoesEmpresasDocumentos_ConexoesEmpresas_ConexaoEmpresaId] FOREIGN KEY ([ConexaoEmpresaId]) REFERENCES [dbo].[ConexoesEmpresas] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ConexoesEmpresasDocumentos_DocumentoId]
    ON [dbo].[ConexoesEmpresasDocumentos]([DocumentoId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConexoesEmpresasDocumentos_ConexaoEmpresaId]
    ON [dbo].[ConexoesEmpresasDocumentos]([ConexaoEmpresaId] ASC);

