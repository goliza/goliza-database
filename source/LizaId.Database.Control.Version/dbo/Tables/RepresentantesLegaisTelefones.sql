CREATE TABLE [dbo].[RepresentantesLegaisTelefones] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [RepresentanteLegalId] UNIQUEIDENTIFIER NOT NULL,
    [CodigoPais]           VARCHAR (3)      NULL,
    [Numero]               VARCHAR (20)     NULL,
    [Ramal]                VARCHAR (10)     NULL,
    [Tipo]                 SMALLINT         NOT NULL,
    CONSTRAINT [PK_RepresentantesLegaisTelefones] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RepresentantesLegaisTelefones_RepresentantesLegais_RepresentanteLegalId] FOREIGN KEY ([RepresentanteLegalId]) REFERENCES [dbo].[RepresentantesLegais] ([Id]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_RepresentantesLegaisTelefones_RepresentanteLegalId]
    ON [dbo].[RepresentantesLegaisTelefones]([RepresentanteLegalId] ASC);

