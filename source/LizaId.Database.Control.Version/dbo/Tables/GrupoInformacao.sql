CREATE TABLE [dbo].[GrupoInformacao] (
    [idGrupoInformacao]    INT          NOT NULL,
    [NomeGrupoInformacao]  VARCHAR (50) NOT NULL,
    [idGrupoInformacaoPai] INT          NULL,
    CONSTRAINT [PK_GrupoInformacao] PRIMARY KEY CLUSTERED ([idGrupoInformacao] ASC),
    CONSTRAINT [FK_GrupoInformacao_GrupoInformacao] FOREIGN KEY ([idGrupoInformacaoPai]) REFERENCES [dbo].[GrupoInformacao] ([idGrupoInformacao])
);

