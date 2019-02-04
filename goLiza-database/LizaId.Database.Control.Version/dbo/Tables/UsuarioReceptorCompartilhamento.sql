CREATE TABLE [dbo].[UsuarioReceptorCompartilhamento] (
    [idUsuarioReceptorCompartilhamento]    INT           IDENTITY (1, 1) NOT NULL,
    [EmailUsuarioReceptorCompartilhamento] VARCHAR (150) NOT NULL,
    [CPFUsuarioReceptorCompartilhamento]   CHAR (14)     NULL,
    [NomeUsuarioReceptorCompartilhamento]  VARCHAR (200) NOT NULL,
    [idCompartilhamento]                   INT           NOT NULL,
    [idUsuarioCriacao]                     INT           NOT NULL,
    [DataCriacao]                          DATETIME      NOT NULL,
    [idUsuarioUltimaAlteracao]             INT           NULL,
    [DataUltimaAlteracao]                  DATETIME      NULL,
    [idToken]                              INT           NULL,
    CONSTRAINT [PK_UsuarioReceptorCompartilhamento] PRIMARY KEY CLUSTERED ([idUsuarioReceptorCompartilhamento] ASC),
    CONSTRAINT [FK_UsuarioReceptorCompartilhamento_Compartilhamento] FOREIGN KEY ([idCompartilhamento]) REFERENCES [dbo].[Compartilhamento] ([idCompartilhamento]),
    CONSTRAINT [FK_UsuarioReceptorCompartilhamento_Token] FOREIGN KEY ([idToken]) REFERENCES [dbo].[Token] ([idToken]),
    CONSTRAINT [FK_UsuarioReceptorCompartilhamento_Usuario] FOREIGN KEY ([idUsuarioCriacao]) REFERENCES [dbo].[Usuario] ([idUsuario]),
    CONSTRAINT [FK_UsuarioReceptorCompartilhamento_Usuario1] FOREIGN KEY ([idUsuarioUltimaAlteracao]) REFERENCES [dbo].[Usuario] ([idUsuario])
);

