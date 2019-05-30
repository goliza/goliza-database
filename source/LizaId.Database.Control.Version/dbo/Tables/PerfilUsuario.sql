CREATE TABLE [dbo].[PerfilUsuario] (
    [idPerfil]  INT NOT NULL,
    [idUsuario] INT NOT NULL,
    CONSTRAINT [PK_PerfilUsuario] PRIMARY KEY CLUSTERED ([idPerfil] ASC, [idUsuario] ASC),
    CONSTRAINT [FK_PerfilUsuario_Perfil_idPerfil] FOREIGN KEY ([idPerfil]) REFERENCES [dbo].[Perfil] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_PerfilUsuario_Usuario_idUsuario] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[Usuario] ([idUsuario]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_PerfilUsuario_idUsuario]
    ON [dbo].[PerfilUsuario]([idUsuario] ASC);

