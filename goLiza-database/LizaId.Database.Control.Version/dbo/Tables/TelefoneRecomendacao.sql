CREATE TABLE [dbo].[TelefoneRecomendacao] (
    [idTelefone]             INT          IDENTITY (1, 1) NOT NULL,
    [idRecomendacaoTelefone] INT          NOT NULL,
    [idTipoTelefone]         INT          NOT NULL,
    [NumeroTelefone]         VARCHAR (30) NOT NULL,
    [RamalTelefone]          VARCHAR (15) NULL,
    [DDITelefone]            CHAR (3)     NOT NULL,
    CONSTRAINT [PK_TelefoneRecomendacao] PRIMARY KEY CLUSTERED ([idTelefone] ASC),
    CONSTRAINT [FK_TelefoneRecomendacao_Recomendacao] FOREIGN KEY ([idRecomendacaoTelefone]) REFERENCES [dbo].[Recomendacao] ([idRecomendacao]),
    CONSTRAINT [FK_TelefoneRecomendacao_TipoTelefone] FOREIGN KEY ([idTipoTelefone]) REFERENCES [dbo].[TipoTelefone] ([idTipoTelefone])
);

