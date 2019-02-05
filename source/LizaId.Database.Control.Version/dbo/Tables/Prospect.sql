CREATE TABLE [dbo].[Prospect] (
    [idProspect]       INT           IDENTITY (1, 1) NOT NULL,
    [NomeProspect]     VARCHAR (MAX) NOT NULL,
    [EmailProspect]    VARCHAR (MAX) NOT NULL,
    [EmpresaProspect]  VARCHAR (MAX) NULL,
    [TelefoneProspect] VARCHAR (MAX) NULL,
    [MensagemProspect] VARCHAR (MAX) NULL,
    CONSTRAINT [PK_Prospect] PRIMARY KEY CLUSTERED ([idProspect] ASC)
);

