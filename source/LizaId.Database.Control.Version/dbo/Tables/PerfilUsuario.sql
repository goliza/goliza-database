CREATE TABLE [dbo].[PerfilUsuario] (
    [idPerfil]  INT NOT NULL,
    [idUsuario] INT NOT NULL,
    CONSTRAINT [PK_PerfilUsuario] PRIMARY KEY CLUSTERED ([idPerfil] ASC, [idUsuario] ASC),
    CONSTRAINT [FK_PerfilUsuario_Perfil] FOREIGN KEY ([idPerfil]) REFERENCES [dbo].[Perfil] ([idPerfil]),
    CONSTRAINT [FK_PerfilUsuario_Usuario] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[Usuario] ([idUsuario])
);

