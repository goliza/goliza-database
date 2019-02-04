CREATE TABLE [dbo].[Permissao] (
    [idPermissao]        INT           NOT NULL,
    [NomePermissao]      VARCHAR (MAX) NOT NULL,
    [DescricaoPermissao] VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Permissao] PRIMARY KEY CLUSTERED ([idPermissao] ASC)
);

