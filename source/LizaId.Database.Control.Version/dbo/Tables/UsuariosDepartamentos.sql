CREATE TABLE [dbo].[UsuariosDepartamentos] (
    [Id]             INT IDENTITY (1, 1) NOT NULL,
    [UsuarioId]      INT NOT NULL,
    [DepartamentoId] INT NOT NULL,
    CONSTRAINT [PK_UsuariosDepartamentos] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UsuariosDepartamentos_Departamentos_DepartamentoId] FOREIGN KEY ([DepartamentoId]) REFERENCES [dbo].[Departamentos] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_UsuariosDepartamentos_Usuario_UsuarioId] FOREIGN KEY ([UsuarioId]) REFERENCES [dbo].[Usuario] ([idUsuario]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_UsuariosDepartamentos_UsuarioId]
    ON [dbo].[UsuariosDepartamentos]([UsuarioId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_UsuariosDepartamentos_DepartamentoId]
    ON [dbo].[UsuariosDepartamentos]([DepartamentoId] ASC);

