CREATE TABLE [dbo].[RepresentantesLegaisTelefones] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [RepresentanteLegalId] UNIQUEIDENTIFIER NOT NULL,
    [CodigoPais]           VARCHAR (2)      NOT NULL,
    [Numero]               VARCHAR (12)     NOT NULL,
    [Ramal]                VARCHAR (10)     NULL,
    [Tipo]                 SMALLINT         NOT NULL,
    CONSTRAINT [PK_RepresentantesLegaisTelefones] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RepresentantesLegaisTelefones_RepresentantesLegais_RepresentanteLegalId] FOREIGN KEY ([RepresentanteLegalId]) REFERENCES [dbo].[RepresentantesLegais] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_RepresentantesLegaisTelefones_RepresentanteLegalId]
    ON [dbo].[RepresentantesLegaisTelefones]([RepresentanteLegalId] ASC);

