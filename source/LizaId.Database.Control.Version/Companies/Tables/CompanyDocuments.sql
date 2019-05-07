CREATE TABLE [Companies].[CompanyDocuments] (
    [Id]                             UNIQUEIDENTIFIER NOT NULL,
    [DataCriacao]                    DATETIME2 (7)    NOT NULL,
    [DataAtualizacao]                DATETIME2 (7)    NULL,
    [CompanyId]                      INT              NOT NULL,
    [Type]                           INT              NOT NULL,
    [Subtype]                        INT              NULL,
    [Name]                           VARCHAR (50)     NOT NULL,
    [IssueDate]                      DATETIME2 (7)    NULL,
    [ExpirationDate]                 DATETIME2 (7)    NULL,
    [Comments]                       VARCHAR (1000)   NULL,
    [Code]                           INT              NULL,
    [FileReferencePeriodInitialDate] DATETIME2 (7)    NULL,
    [FileReferencePeriodFinalDate]   DATETIME2 (7)    NULL,
    [IsAuthenticated]                BIT              NOT NULL,
    [IsSimpleCopy]                   BIT              NOT NULL,
    [IsAcknowledged]                 BIT              NOT NULL,
    [IsRegistered]                   BIT              NOT NULL,
    [IsDigitallySigned]              BIT              NOT NULL,
    CONSTRAINT [PK_CompanyDocuments] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyDocuments_EmpresaReceptora_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_CompanyDocuments_CompanyId]
    ON [Companies].[CompanyDocuments]([CompanyId] ASC);

