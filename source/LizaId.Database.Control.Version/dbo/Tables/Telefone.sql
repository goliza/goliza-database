CREATE TABLE [dbo].[Telefone] (
    [idTelefone]        INT          IDENTITY (1, 1) NOT NULL,
    [IdContatoTelefone] INT          NOT NULL,
    [IdTipoTelefone]    INT          NOT NULL,
    [NumeroTelefone]    VARCHAR (30) NOT NULL,
    [RamalTelefone]     VARCHAR (15) NULL,
    [DDITelefone]       CHAR (3)     NOT NULL,
    CONSTRAINT [PK_Telefone] PRIMARY KEY CLUSTERED ([idTelefone] ASC),
    CONSTRAINT [FK_Telefone_Contato_IdContatoTelefone] FOREIGN KEY ([IdContatoTelefone]) REFERENCES [dbo].[Contato] ([idContato]) ON DELETE CASCADE,
    CONSTRAINT [FK_Telefone_TipoTelefone_IdTipoTelefone] FOREIGN KEY ([IdTipoTelefone]) REFERENCES [dbo].[TipoTelefone] ([idTipoTelefone]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_Telefone_IdTipoTelefone]
    ON [dbo].[Telefone]([IdTipoTelefone] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Telefone_IdContatoTelefone]
    ON [dbo].[Telefone]([IdContatoTelefone] ASC);

