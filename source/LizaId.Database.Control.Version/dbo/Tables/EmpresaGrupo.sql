CREATE TABLE [dbo].[EmpresaGrupo] (
    [idEmpresaGrupo]   INT            IDENTITY (1, 1) NOT NULL,
    [NomeEmpresaGrupo] NVARCHAR (MAX) NOT NULL,
    [idPlano]          INT            NOT NULL,
    [StatusValidada]   BIT            NOT NULL,
    CONSTRAINT [PK_EmpresaGrupo] PRIMARY KEY CLUSTERED ([idEmpresaGrupo] ASC),
    CONSTRAINT [FK_EmpresaGrupo_Plano_idPlano] FOREIGN KEY ([idPlano]) REFERENCES [dbo].[Plano] ([idPlano]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_EmpresaGrupo_idPlano]
    ON [dbo].[EmpresaGrupo]([idPlano] ASC);

