CREATE TABLE [dbo].[GrupoInformacao] (
    [idGrupoInformacao]    INT            IDENTITY (1, 1) NOT NULL,
    [NomeGrupoInformacao]  VARCHAR (50)   NOT NULL,
    [idGrupoInformacaoPai] INT            NULL,
    [Ordem]                INT            NULL,
    [Link]                 NVARCHAR (MAX) NULL,
    [Descricao]            NVARCHAR (MAX) NULL,
    [IsMenu]               BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_GrupoInformacao] PRIMARY KEY CLUSTERED ([idGrupoInformacao] ASC),
    CONSTRAINT [FK_GrupoInformacao_GrupoInformacao_idGrupoInformacaoPai] FOREIGN KEY ([idGrupoInformacaoPai]) REFERENCES [dbo].[GrupoInformacao] ([idGrupoInformacao])
);








GO
CREATE NONCLUSTERED INDEX [IX_GrupoInformacao_idGrupoInformacaoPai]
    ON [dbo].[GrupoInformacao]([idGrupoInformacaoPai] ASC);

