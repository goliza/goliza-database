CREATE TABLE [dbo].[Permissao] (
    [Id]          INT           NOT NULL,
    [Tipo]        VARCHAR (200) NOT NULL,
    [Nome]        VARCHAR (200) NOT NULL,
    [Descricao]   VARCHAR (500) NOT NULL,
    [EmpresaTipo] SMALLINT      DEFAULT (CONVERT([smallint],(0))) NOT NULL,
    [Grupo]       VARCHAR (100) DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_Permissao] PRIMARY KEY CLUSTERED ([Id] ASC)
);



