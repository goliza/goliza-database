CREATE TABLE [dbo].[Documento] (
    [idDocumento]             INT              IDENTITY (1, 1) NOT NULL,
    [idEmpresa]               INT              NOT NULL,
    [idTipoDocumento]         INT              NOT NULL,
    [idArquivo]               UNIQUEIDENTIFIER NOT NULL,
    [NomeDocumento]           VARCHAR (MAX)    NOT NULL,
    [DataEmissaoDocumento]    DATETIME         NOT NULL,
    [DataVencimentoDocumento] DATETIME         NULL,
    [ComentariosDocumento]    VARCHAR (MAX)    NULL,
    [idUsuario]               INT              NULL,
    [DataCriacao]             DATETIME         NULL,
    [DataAlteracao]           DATETIME         NULL,
    CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED ([idDocumento] ASC),
    CONSTRAINT [FK_Documento_EmpresaReceptora] FOREIGN KEY ([idEmpresa]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora]),
    CONSTRAINT [FK_Documento_TipoDocumento] FOREIGN KEY ([idTipoDocumento]) REFERENCES [dbo].[TipoDocumento] ([idTipoDocumento])
);

