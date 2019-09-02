CREATE TABLE [Companies].[DocumentTemplates] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [DocumentType] INT              NOT NULL,
    [TemplateType] INT              NOT NULL,
    [Title]        VARCHAR (100)    NOT NULL,
    [Description]  VARCHAR (1000)   NULL,
    CONSTRAINT [PK_DocumentTemplates] PRIMARY KEY CLUSTERED ([Id] ASC)
);



