CREATE TABLE [dbo].[Plano] (
    [DataCriacao]           DATETIME       NOT NULL,
    [DataUltimaAtualizacao] DATETIME       NULL,
    [idPlano]               INT            IDENTITY (1, 1) NOT NULL,
    [DescricaoPlano]        NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Plano] PRIMARY KEY CLUSTERED ([idPlano] ASC)
);



