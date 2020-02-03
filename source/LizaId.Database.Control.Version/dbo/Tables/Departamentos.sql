CREATE TABLE [dbo].[Departamentos] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Nome] VARCHAR (200) NOT NULL,
    CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED ([Id] ASC)
);

