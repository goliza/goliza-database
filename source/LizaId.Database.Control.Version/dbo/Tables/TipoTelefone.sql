CREATE TABLE [dbo].[TipoTelefone] (
    [idTipoTelefone]        INT            IDENTITY (1, 1) NOT NULL,
    [NomeTipoTelefone]      NVARCHAR (MAX) NOT NULL,
    [DescricaoTipoTelefone] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_TipoTelefone] PRIMARY KEY CLUSTERED ([idTipoTelefone] ASC)
);



