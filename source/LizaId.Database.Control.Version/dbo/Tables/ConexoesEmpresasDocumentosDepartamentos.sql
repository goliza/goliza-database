CREATE TABLE [dbo].[ConexoesEmpresasDocumentosDepartamentos] (
    [Id]                        UNIQUEIDENTIFIER NOT NULL,
    [ConexaoEmpresaDocumentoId] UNIQUEIDENTIFIER NOT NULL,
    [DepartamentoId]            INT              NOT NULL,
    CONSTRAINT [PK_ConexoesEmpresasDocumentosDepartamentos] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConexoesEmpresasDocumentosDepartamentos_ConexoesEmpresasDocumentos_ConexaoEmpresaDocumentoId] FOREIGN KEY ([ConexaoEmpresaDocumentoId]) REFERENCES [dbo].[ConexoesEmpresasDocumentos] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ConexoesEmpresasDocumentosDepartamentos_Departamentos_DepartamentoId] FOREIGN KEY ([DepartamentoId]) REFERENCES [dbo].[Departamentos] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ConexoesEmpresasDocumentosDepartamentos_DepartamentoId]
    ON [dbo].[ConexoesEmpresasDocumentosDepartamentos]([DepartamentoId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ConexoesEmpresasDocumentosDepartamentos_ConexaoEmpresaDocumentoId]
    ON [dbo].[ConexoesEmpresasDocumentosDepartamentos]([ConexaoEmpresaDocumentoId] ASC);

