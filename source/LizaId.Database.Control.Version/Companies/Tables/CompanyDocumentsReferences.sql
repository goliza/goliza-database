CREATE TABLE [Companies].[CompanyDocumentsReferences] (
    [CompanyDocumentId]          UNIQUEIDENTIFIER NOT NULL,
    [ReferenceCompanyDocumentId] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CompanyDocumentsReferences] PRIMARY KEY CLUSTERED ([CompanyDocumentId] ASC, [ReferenceCompanyDocumentId] ASC),
    CONSTRAINT [FK_CompanyDocumentsReferences_CompanyDocuments_CompanyDocumentId] FOREIGN KEY ([CompanyDocumentId]) REFERENCES [Companies].[CompanyDocuments] ([Id]) ON DELETE CASCADE
);

