CREATE TABLE [dbo].[Plano] (
    [idPlano]               INT           NOT NULL,
    [DescricaoPlano]        VARCHAR (100) NOT NULL,
    [DataCriacao]           DATETIME      NOT NULL,
    [DataUltimaAtualizacao] DATETIME      NULL,
    CONSTRAINT [PK_Plano] PRIMARY KEY CLUSTERED ([idPlano] ASC)
);

