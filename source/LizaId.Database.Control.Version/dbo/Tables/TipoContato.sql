CREATE TABLE [dbo].[TipoContato] (
    [idTipoContato]   INT            IDENTITY (1, 1) NOT NULL,
    [NomeTipoContato] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_TipoContato] PRIMARY KEY CLUSTERED ([idTipoContato] ASC)
);



