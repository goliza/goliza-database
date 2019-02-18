﻿CREATE TABLE [dbo].[TipoDocumento] (
    [idTipoDocumento]        INT           NOT NULL,
    [NomeTipoDocumento]      VARCHAR (MAX) NOT NULL,
    [DescricaoTipoDocumento] VARCHAR (MAX) NULL,
	[idGrupoInformacao]		 INT		   Null
    CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED ([idTipoDocumento] ASC)
);

