CREATE TABLE [dbo].[UsuarioEmpresa] (
    [DataCriacao]              DATETIME NULL,
    [idUsuarioCriacao]         INT      NULL,
    [DataUltimaAlteracao]      DATETIME NULL,
    [idUsuarioUltimaAlteracao] INT      NULL,
    [idUsuarioEmpresa]         INT      IDENTITY (1, 1) NOT NULL,
    [idUsuario]                INT      NOT NULL,
    [idEmpresa]                INT      NOT NULL,
    CONSTRAINT [PK_UsuarioEmpresa] PRIMARY KEY CLUSTERED ([idUsuarioEmpresa] ASC),
    CONSTRAINT [FK_UsuarioEmpresa_EmpresaReceptora_idEmpresa] FOREIGN KEY ([idEmpresa]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora]) ON DELETE CASCADE,
    CONSTRAINT [FK_UsuarioEmpresa_Usuario_idUsuario] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[Usuario] ([idUsuario]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_UsuarioEmpresa_idUsuario]
    ON [dbo].[UsuarioEmpresa]([idUsuario] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UsuarioEmpresa_idEmpresa]
    ON [dbo].[UsuarioEmpresa]([idEmpresa] ASC);

