CREATE TABLE [dbo].[Contato] (
    [idContato]        INT           IDENTITY (1, 1) NOT NULL,
    [idEmpresa]        INT           NOT NULL,
    [NomeContato]      VARCHAR (MAX) NOT NULL,
    [SobrenomeContato] VARCHAR (MAX) NULL,
    [CargoContato]     VARCHAR (MAX) NOT NULL,
    [idTipoContato]    INT           NOT NULL,
    CONSTRAINT [PK_Contato] PRIMARY KEY CLUSTERED ([idContato] ASC),
    CONSTRAINT [FK_Contato_Empresa] FOREIGN KEY ([idEmpresa]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora]),
    CONSTRAINT [FK_Contato_TipoContato] FOREIGN KEY ([idTipoContato]) REFERENCES [dbo].[TipoContato] ([idTipoContato])
);

