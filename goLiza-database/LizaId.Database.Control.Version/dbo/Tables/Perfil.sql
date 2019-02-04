CREATE TABLE [dbo].[Perfil] (
    [idPerfil]        INT           IDENTITY (1, 1) NOT NULL,
    [NomePerfil]      VARCHAR (MAX) NOT NULL,
    [DescricaoPerfil] VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED ([idPerfil] ASC)
);

