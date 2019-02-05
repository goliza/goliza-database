CREATE TABLE [dbo].[EmpresaGrupo] (
    [idEmpresaGrupo]   INT           IDENTITY (1, 1) NOT NULL,
    [NomeEmpresaGrupo] VARCHAR (MAX) NULL,
    [idPlano]          INT           NULL,
    [StatusValidada]   BIT           CONSTRAINT [DF_EmpresaGrupo_StatusValidada] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Empresa_1] PRIMARY KEY CLUSTERED ([idEmpresaGrupo] ASC),
    CONSTRAINT [FK_EmpresaGrupo_Plano] FOREIGN KEY ([idPlano]) REFERENCES [dbo].[Plano] ([idPlano])
);

