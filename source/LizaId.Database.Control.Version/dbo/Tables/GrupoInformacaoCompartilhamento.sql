CREATE TABLE [dbo].[GrupoInformacaoCompartilhamento] (
    [idGrupoInformacaoCompartilhamento] INT      IDENTITY (1, 1) NOT NULL,
    [idCompartilhamento]                INT      NOT NULL,
    [idGrupoInformacao]                 INT      NOT NULL,
    [idUsuarioCriacao]                  INT      NOT NULL,
    [DataCriacao]                       DATETIME NOT NULL,
    [idUsuarioUltimaAlteracao]          INT      NULL,
    [DataUltimaAlteracao]               DATETIME NULL,
    CONSTRAINT [PK_GrupoInformacaoCompartilhamento] PRIMARY KEY CLUSTERED ([idGrupoInformacaoCompartilhamento] ASC),
    CONSTRAINT [FK_GrupoInformacaoCompartilhamento_Compartilhamento] FOREIGN KEY ([idCompartilhamento]) REFERENCES [dbo].[Compartilhamento] ([idCompartilhamento]),
    CONSTRAINT [FK_GrupoInformacaoCompartilhamento_GrupoInformacao] FOREIGN KEY ([idGrupoInformacao]) REFERENCES [dbo].[GrupoInformacao] ([idGrupoInformacao]),
    CONSTRAINT [FK_GrupoInformacaoCompartilhamento_Usuario] FOREIGN KEY ([idUsuarioCriacao]) REFERENCES [dbo].[Usuario] ([idUsuario]),
    CONSTRAINT [FK_GrupoInformacaoCompartilhamento_Usuario1] FOREIGN KEY ([idUsuarioUltimaAlteracao]) REFERENCES [dbo].[Usuario] ([idUsuario])
);

