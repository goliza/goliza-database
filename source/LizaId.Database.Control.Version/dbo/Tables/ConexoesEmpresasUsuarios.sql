CREATE TABLE [dbo].[ConexoesEmpresasUsuarios] (
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [ConexaoEmpresaId] UNIQUEIDENTIFIER NOT NULL,
    [Email]            VARCHAR (200)    NOT NULL,
    [Nome]             VARCHAR (200)    NOT NULL,
    CONSTRAINT [PK_ConexoesEmpresasUsuarios] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ConexoesEmpresasUsuarios_ConexoesEmpresas_ConexaoEmpresaId] FOREIGN KEY ([ConexaoEmpresaId]) REFERENCES [dbo].[ConexoesEmpresas] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ConexoesEmpresasUsuarios_ConexaoEmpresaId]
    ON [dbo].[ConexoesEmpresasUsuarios]([ConexaoEmpresaId] ASC);

