CREATE TABLE [dbo].[PermissaoPerfil] (
    [idPerfil]    INT NOT NULL,
    [idPermissao] INT NOT NULL,
    CONSTRAINT [PK_PermissaoPerfil] PRIMARY KEY CLUSTERED ([idPerfil] ASC, [idPermissao] ASC),
    CONSTRAINT [FK_PermissaoPerfil_Perfil_idPerfil] FOREIGN KEY ([idPerfil]) REFERENCES [dbo].[Perfil] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_PermissaoPerfil_Permissao_idPermissao] FOREIGN KEY ([idPermissao]) REFERENCES [dbo].[Permissao] ([Id]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_PermissaoPerfil_idPermissao]
    ON [dbo].[PermissaoPerfil]([idPermissao] ASC);

