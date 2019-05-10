CREATE TABLE [dbo].[Funcionario] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Nome] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED ([Id] ASC)
);

