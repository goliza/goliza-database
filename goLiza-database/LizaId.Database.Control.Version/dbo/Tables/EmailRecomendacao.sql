CREATE TABLE [dbo].[EmailRecomendacao] (
    [idEmail]        INT           IDENTITY (1, 1) NOT NULL,
    [idRecomendacao] INT           NOT NULL,
    [Email]          VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_EmailRecomendacao] PRIMARY KEY CLUSTERED ([idEmail] ASC),
    CONSTRAINT [FK_EmailRecomendacao_Recomendacao] FOREIGN KEY ([idRecomendacao]) REFERENCES [dbo].[Recomendacao] ([idRecomendacao])
);

