CREATE TABLE [dbo].[ConexoesEmpresasGruposSolicitados] (
    [ConexaoEmpresaId]  UNIQUEIDENTIFIER NOT NULL,
    [GrupoInformacaoId] INT              NOT NULL,
    CONSTRAINT [PK_ConexoesEmpresasGruposSolicitados] PRIMARY KEY CLUSTERED ([ConexaoEmpresaId] ASC, [GrupoInformacaoId] ASC),
    CONSTRAINT [FK_ConexoesEmpresasGruposSolicitados_ConexoesEmpresas_ConexaoEmpresaId] FOREIGN KEY ([ConexaoEmpresaId]) REFERENCES [dbo].[ConexoesEmpresas] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ConexoesEmpresasGruposSolicitados_GrupoInformacao_GrupoInformacaoId] FOREIGN KEY ([GrupoInformacaoId]) REFERENCES [dbo].[GrupoInformacao] ([idGrupoInformacao]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ConexoesEmpresasGruposSolicitados_GrupoInformacaoId]
    ON [dbo].[ConexoesEmpresasGruposSolicitados]([GrupoInformacaoId] ASC);

