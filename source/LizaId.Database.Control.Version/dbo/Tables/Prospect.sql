CREATE TABLE [dbo].[Prospect] (
    [idProspect]       INT            IDENTITY (1, 1) NOT NULL,
    [NomeProspect]     NVARCHAR (MAX) NOT NULL,
    [EmailProspect]    NVARCHAR (MAX) NOT NULL,
    [EmpresaProspect]  NVARCHAR (MAX) NULL,
    [TelefoneProspect] NVARCHAR (MAX) NULL,
    [MensagemProspect] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Prospect] PRIMARY KEY CLUSTERED ([idProspect] ASC)
);



