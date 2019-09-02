CREATE TABLE [dbo].[TipoPendencia] (
    [IdTipoPendencia] INT           IDENTITY (1, 1) NOT NULL,
    [Nome]            VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_TipoPendencia] PRIMARY KEY CLUSTERED ([IdTipoPendencia] ASC)
);


