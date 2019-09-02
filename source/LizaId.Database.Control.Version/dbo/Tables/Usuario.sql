CREATE TABLE [dbo].[Usuario] (
    [DataCriacao]                DATETIME2 (7)  NULL,
    [idUsuarioCriacao]           INT            NULL,
    [DataUltimaAlteracao]        DATETIME2 (7)  NULL,
    [idUsuarioUltimaAlteracao]   INT            NULL,
    [idUsuario]                  INT            IDENTITY (1, 1) NOT NULL,
    [NomeUsuario]                NVARCHAR (MAX) NOT NULL,
    [EmailUsuario]               NVARCHAR (MAX) NOT NULL,
    [LoginUsuario]               NVARCHAR (MAX) NOT NULL,
    [CPFUsuario]                 CHAR (14)      NOT NULL,
    [TelefoneUsuario]            VARCHAR (30)   NULL,
    [HashSenhaUsuario]           NVARCHAR (MAX) NULL,
    [IdEmpresaGrupo]             INT            NOT NULL,
    [idUsuarioStatus]            INT            NOT NULL,
    [idToken]                    INT            NULL,
    [TermosUsoUsuario]           BIT            NOT NULL,
    [PoliticaPrivacidadeUsuario] BIT            NOT NULL,
    [Bloqueado]                  BIT            DEFAULT ((0)) NOT NULL,
    [Departamento]               VARCHAR (200)  NULL,
    CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED ([idUsuario] ASC),
    CONSTRAINT [FK_Usuario_Token_idToken] FOREIGN KEY ([idToken]) REFERENCES [dbo].[Token] ([idToken])
);








GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Usuario_idToken]
    ON [dbo].[Usuario]([idToken] ASC) WHERE ([idToken] IS NOT NULL);

