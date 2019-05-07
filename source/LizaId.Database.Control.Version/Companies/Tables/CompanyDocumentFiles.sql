﻿CREATE TABLE [Companies].[CompanyDocumentFiles] (
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [CompanyDocumentId] UNIQUEIDENTIFIER NOT NULL,
    [Name]              VARCHAR (150)    NULL,
    [Length]            BIGINT           DEFAULT (CONVERT([bigint],(0))) NOT NULL,
    [Type]              VARCHAR (100)    NULL,
    CONSTRAINT [PK_CompanyDocumentFiles] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyDocumentFiles_CompanyDocuments_CompanyDocumentId] FOREIGN KEY ([CompanyDocumentId]) REFERENCES [Companies].[CompanyDocuments] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_CompanyDocumentFiles_CompanyDocumentId]
    ON [Companies].[CompanyDocumentFiles]([CompanyDocumentId] ASC);
