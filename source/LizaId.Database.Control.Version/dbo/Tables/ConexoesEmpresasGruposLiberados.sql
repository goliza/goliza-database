CREATE TABLE [dbo].[ConexoesEmpresasGruposLiberados] (
    [ConexaoEmpresaId]  UNIQUEIDENTIFIER NOT NULL,
    [GrupoInformacaoId] INT              NOT NULL,
    CONSTRAINT [PK_ConexoesEmpresasGruposLiberados] PRIMARY KEY CLUSTERED ([ConexaoEmpresaId] ASC, [GrupoInformacaoId] ASC),
    CONSTRAINT [FK_ConexoesEmpresasGruposLiberados_ConexoesEmpresas_ConexaoEmpresaId] FOREIGN KEY ([ConexaoEmpresaId]) REFERENCES [dbo].[ConexoesEmpresas] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ConexoesEmpresasGruposLiberados_GrupoInformacao_GrupoInformacaoId] FOREIGN KEY ([GrupoInformacaoId]) REFERENCES [dbo].[GrupoInformacao] ([idGrupoInformacao]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ConexoesEmpresasGruposLiberados_GrupoInformacaoId]
    ON [dbo].[ConexoesEmpresasGruposLiberados]([GrupoInformacaoId] ASC);

