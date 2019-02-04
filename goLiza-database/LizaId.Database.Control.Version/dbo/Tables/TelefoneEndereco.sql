CREATE TABLE [dbo].[TelefoneEndereco] (
    [idTelefone]         INT          IDENTITY (1, 1) NOT NULL,
    [IdEnderecoTelefone] INT          NOT NULL,
    [IdTipoTelefone]     INT          NOT NULL,
    [NumeroTelefone]     VARCHAR (30) NOT NULL,
    [RamalTelefone]      VARCHAR (15) NULL,
    [DDITelefone]        CHAR (3)     NOT NULL,
    CONSTRAINT [PK_TelefoneEndereco] PRIMARY KEY CLUSTERED ([idTelefone] ASC),
    CONSTRAINT [FK_TelefoneEndereco_Endereco] FOREIGN KEY ([IdEnderecoTelefone]) REFERENCES [dbo].[Endereco] ([idEndereco]),
    CONSTRAINT [FK_TelefoneEndereco_TipoTelefone] FOREIGN KEY ([IdTipoTelefone]) REFERENCES [dbo].[TipoTelefone] ([idTipoTelefone])
);

