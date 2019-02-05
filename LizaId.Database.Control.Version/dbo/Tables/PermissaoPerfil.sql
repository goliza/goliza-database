CREATE TABLE [dbo].[PermissaoPerfil] (
    [idPerfil]    INT NOT NULL,
    [idPermissao] INT NOT NULL,
    CONSTRAINT [PK_PermissaoPerfil] PRIMARY KEY CLUSTERED ([idPerfil] ASC, [idPermissao] ASC),
    CONSTRAINT [FK_PermissaoPerfil_Perfil] FOREIGN KEY ([idPerfil]) REFERENCES [dbo].[Perfil] ([idPerfil]),
    CONSTRAINT [FK_PermissaoPerfil_Permissao] FOREIGN KEY ([idPermissao]) REFERENCES [dbo].[Permissao] ([idPermissao])
);

