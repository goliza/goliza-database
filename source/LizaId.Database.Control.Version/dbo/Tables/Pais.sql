CREATE TABLE [dbo].[Pais] (
    [idPais]   INT            IDENTITY (1, 1) NOT NULL,
    [NomePais] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED ([idPais] ASC)
);



