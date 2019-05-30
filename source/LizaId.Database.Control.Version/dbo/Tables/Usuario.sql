CREATE TABLE [dbo].[Usuario] (
    [idUsuario]                  INT            IDENTITY (1, 1) NOT NULL,
    [NomeUsuario]                VARCHAR (MAX)  NOT NULL,
    [EmailUsuario]               VARCHAR (MAX)  NOT NULL,
    [LoginUsuario]               VARCHAR (MAX)  NOT NULL,
    [CPFUsuario]                 CHAR (14)      NOT NULL,
    [TelefoneUsuario]            VARCHAR (30)   NULL,
    [HashSenhaUsuario]           NVARCHAR (MAX) NULL,
    [IdEmpresaGrupo]             INT            NOT NULL,
    [idUsuarioStatus]            INT            NOT NULL,
    [idToken]                    INT            NULL,
    [TermosUsoUsuario]           BIT            NOT NULL,
    [PoliticaPrivacidadeUsuario] BIT            NOT NULL,
    [idUsuarioCriacao]           INT            NULL,
    [DataCriacao]                DATETIME       NULL,
    [idUsuarioUltimaAlteracao]   INT            NULL,
    [DataUltimaAlteracao]        DATETIME       NULL,
    [Bloqueado]                  BIT            DEFAULT ((0)) NOT NULL,
    [Departamento]               VARCHAR (200)  NULL,
    CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED ([idUsuario] ASC),
    CONSTRAINT [FK_Usuario_Empresa] FOREIGN KEY ([IdEmpresaGrupo]) REFERENCES [dbo].[EmpresaGrupo] ([idEmpresaGrupo]),
    CONSTRAINT [FK_Usuario_Token] FOREIGN KEY ([idToken]) REFERENCES [dbo].[Token] ([idToken]),
    CONSTRAINT [FK_Usuario_UsuarioStatus] FOREIGN KEY ([idUsuarioStatus]) REFERENCES [dbo].[UsuarioStatus] ([idUsuarioStatus])
);





