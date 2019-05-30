CREATE TABLE [dbo].[Perfil] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [Nome]      VARCHAR (100) NOT NULL,
    [EmpresaId] INT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Perfil_EmpresaReceptora_EmpresaId] FOREIGN KEY ([EmpresaId]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_Perfil_EmpresaId]
    ON [dbo].[Perfil]([EmpresaId] ASC);

