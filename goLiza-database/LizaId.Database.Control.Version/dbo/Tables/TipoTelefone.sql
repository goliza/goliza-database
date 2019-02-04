CREATE TABLE [dbo].[TipoTelefone] (
    [idTipoTelefone]        INT           NOT NULL,
    [NomeTipoTelefone]      VARCHAR (MAX) NOT NULL,
    [DescricaoTipoTelefone] VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_TipoTelefone] PRIMARY KEY CLUSTERED ([idTipoTelefone] ASC)
);

