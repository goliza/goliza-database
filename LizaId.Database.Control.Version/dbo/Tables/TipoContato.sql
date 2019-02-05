CREATE TABLE [dbo].[TipoContato] (
    [idTipoContato]   INT           NOT NULL,
    [NomeTipoContato] VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_TipoContato] PRIMARY KEY CLUSTERED ([idTipoContato] ASC)
);

