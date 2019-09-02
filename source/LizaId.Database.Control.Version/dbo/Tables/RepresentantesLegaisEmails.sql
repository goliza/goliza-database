CREATE TABLE [dbo].[RepresentantesLegaisEmails] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [RepresentanteLegalId] UNIQUEIDENTIFIER NOT NULL,
    [Endereco]             VARCHAR (150)    NOT NULL,
    CONSTRAINT [PK_RepresentantesLegaisEmails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RepresentantesLegaisEmails_RepresentantesLegais_RepresentanteLegalId] FOREIGN KEY ([RepresentanteLegalId]) REFERENCES [dbo].[RepresentantesLegais] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_RepresentantesLegaisEmails_RepresentanteLegalId]
    ON [dbo].[RepresentantesLegaisEmails]([RepresentanteLegalId] ASC);

