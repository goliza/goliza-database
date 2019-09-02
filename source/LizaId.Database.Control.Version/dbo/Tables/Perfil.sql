CREATE TABLE [dbo].[Perfil] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [Nome]           VARCHAR (100) NOT NULL,
    [GrupoEmpresaId] INT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Perfil_EmpresaGrupo_GrupoEmpresaId] FOREIGN KEY ([GrupoEmpresaId]) REFERENCES [dbo].[EmpresaGrupo] ([idEmpresaGrupo]) ON DELETE CASCADE
);






GO
CREATE NONCLUSTERED INDEX [IX_Perfil_GrupoEmpresaId]
    ON [dbo].[Perfil]([GrupoEmpresaId] ASC);

