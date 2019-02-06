CREATE TABLE [dbo].[UsuarioEmpresa] (
    [idUsuarioEmpresa]         INT      NOT NULL IDENTITY,
    [idEmpresa]                INT      NOT NULL,
    [idUsuario]                INT      NOT NULL,
    [idUsuarioCriacao]         INT      NOT NULL,
    [DataCriacao]              DATETIME NOT NULL,
    [idUsuarioUltimaAlteracao] INT      NULL,
    [DataUltimaAlteracao]      DATETIME NULL,
    CONSTRAINT [PK_UsuarioEmpresa] PRIMARY KEY CLUSTERED ([idUsuarioEmpresa] ASC),
    CONSTRAINT [FK_UsuarioEmpresa_EmpresaReceptora] FOREIGN KEY ([idEmpresa]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora]),
    CONSTRAINT [FK_UsuarioEmpresa_Usuario] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[Usuario] ([idUsuario]),
    CONSTRAINT [FK_UsuarioEmpresa_Usuario1] FOREIGN KEY ([idUsuarioCriacao]) REFERENCES [dbo].[Usuario] ([idUsuario]),
    CONSTRAINT [FK_UsuarioEmpresa_Usuario2] FOREIGN KEY ([idUsuarioUltimaAlteracao]) REFERENCES [dbo].[Usuario] ([idUsuario])
);

