CREATE TABLE [Companies].[DocumentTemplates] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [Title]        VARCHAR (100)    NOT NULL,
    [Description]  VARCHAR (1000)   NULL,
    [DocumentType] INT              NOT NULL,
    [TemplateType] INT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_DocumentTemplates] PRIMARY KEY CLUSTERED ([Id] ASC)
);

