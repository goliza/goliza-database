CREATE TABLE [dbo].[Compartilhamento] (
    [idCompartilhamento]       INT       IDENTITY (1, 1) NOT NULL,
    [idEmpresaProvedora]       INT       NOT NULL,
    [CNPJEmpresaReceptora]     CHAR (18) NOT NULL,
    [idUsuarioCriacao]         INT       NOT NULL,
    [DataCriacao]              DATETIME  NOT NULL,
    [idUsuarioUltimaAlteracao] INT       NULL,
    [DataUltimaAlteracao]      DATETIME  NULL,
    CONSTRAINT [PK_Compartilhamento] PRIMARY KEY CLUSTERED ([idCompartilhamento] ASC),
    CONSTRAINT [FK_Compartilhamento_EmpresaReceptora] FOREIGN KEY ([idEmpresaProvedora]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora]),
    CONSTRAINT [FK_Compartilhamento_Usuario] FOREIGN KEY ([idUsuarioCriacao]) REFERENCES [dbo].[Usuario] ([idUsuario]),
    CONSTRAINT [FK_Compartilhamento_Usuario1] FOREIGN KEY ([idUsuarioUltimaAlteracao]) REFERENCES [dbo].[Usuario] ([idUsuario])
);

