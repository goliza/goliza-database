CREATE TABLE [dbo].[Endereco] (
    [idEndereco]          INT            IDENTITY (1, 1) NOT NULL,
    [idEmpresa]           INT            NOT NULL,
    [DescricaoEndereco]   NVARCHAR (MAX) NOT NULL,
    [idPaisEndereco]      INT            NOT NULL,
    [CaixaPostalEndereco] VARCHAR (20)   NULL,
    [CEPEndereco]         CHAR (9)       NULL,
    [LogradouroEndereco]  NVARCHAR (MAX) NULL,
    [NumeroEndereco]      VARCHAR (10)   NULL,
    [ComplementoEndereco] VARCHAR (10)   NULL,
    [BairroEndereco]      NVARCHAR (MAX) NULL,
    [CidadeEndereco]      NVARCHAR (MAX) NULL,
    [UFEndereco]          CHAR (2)       NULL,
    [Cnpj]                VARCHAR (20)   NOT NULL,
    [DataAlteracao]       DATETIME       NULL,
    CONSTRAINT [PK_Endereco] PRIMARY KEY CLUSTERED ([idEndereco] ASC),
    CONSTRAINT [FK_Endereco_Pais_idPaisEndereco] FOREIGN KEY ([idPaisEndereco]) REFERENCES [dbo].[Pais] ([idPais]) ON DELETE CASCADE
);






GO
CREATE NONCLUSTERED INDEX [IX_Endereco_idPaisEndereco]
    ON [dbo].[Endereco]([idPaisEndereco] ASC);

