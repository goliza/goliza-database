CREATE TABLE [dbo].[Telefone] (
    [idTelefone]        INT          IDENTITY (1, 1) NOT NULL,
    [IdContatoTelefone] INT          NOT NULL,
    [IdTipoTelefone]    INT          NOT NULL,
    [NumeroTelefone]    VARCHAR (30) NOT NULL,
    [RamalTelefone]     VARCHAR (15) NULL,
    [DDITelefone]       CHAR (3)     NOT NULL,
    CONSTRAINT [PK_Telefone] PRIMARY KEY CLUSTERED ([idTelefone] ASC),
    CONSTRAINT [FK_Telefone_Contato] FOREIGN KEY ([IdContatoTelefone]) REFERENCES [dbo].[Contato] ([idContato]),
    CONSTRAINT [FK_Telefone_TipoTelefone] FOREIGN KEY ([IdTipoTelefone]) REFERENCES [dbo].[TipoTelefone] ([idTipoTelefone])
);

