CREATE TABLE [dbo].[Endereco] (
    [idEndereco]          INT           IDENTITY (1, 1) NOT NULL,
    [idEmpresa]           INT           NOT NULL,
    [DescricaoEndereco]   VARCHAR (MAX) NOT NULL,
    [idPaisEndereco]      INT           NOT NULL,
    [CEPEndereco]         CHAR (9)      NULL,
    [CaixaPostalEndereco] VARCHAR (20)  NULL,
    [UFEndereco]          CHAR (2)      NULL,
    [LogradouroEndereco]  VARCHAR (MAX) NULL,
    [NumeroEndereco]      VARCHAR (10)  NULL,
    [ComplementoEndereco] VARCHAR (10)  NULL,
    [BairroEndereco]      VARCHAR (MAX) NULL,
    [CidadeEndereco]      VARCHAR (MAX) NULL,
    [Cnpj]                VARCHAR (20)  NULL,
    CONSTRAINT [PK_Endereco] PRIMARY KEY CLUSTERED ([idEndereco] ASC),
    CONSTRAINT [FK_Endereco_Empresa] FOREIGN KEY ([idEmpresa]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora]),
    CONSTRAINT [FK_Endereco_Pais] FOREIGN KEY ([idPaisEndereco]) REFERENCES [dbo].[Pais] ([idPais]),
    CONSTRAINT [FK_Endereco_UF] FOREIGN KEY ([UFEndereco]) REFERENCES [dbo].[UF] ([idUF])
);



