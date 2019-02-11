CREATE TABLE [dbo].[Pendencia] (
    [idPendencia]              INT           NOT NULL,
    [idUsuarioEmpresa]         INT           NULL,
    [idEmpresaDestinataria]    INT           NOT NULL,
    [EmailDestinatario]        VARCHAR (100) NOT NULL,
    [AssuntoPendencia]         VARCHAR (200) NOT NULL,
    [idGrupoInformacao]          INT           NULL,
    [DescricaoPendencia]       VARCHAR (MAX) NULL,
    [StatusPendencia]          BIT           NOT NULL,
    [idUsuarioCriacao]         INT           NOT NULL,
    [DataCriacao]              DATETIME      NOT NULL,
    [idUsuarioUltimaAlteracao] INT           NULL,
    [DataUltimaAlteracao]      DATETIME      NULL,
    CONSTRAINT [FK_Pendencia_EmpresaReceptora] FOREIGN KEY ([idEmpresaDestinataria]) REFERENCES [dbo].[EmpresaReceptora] ([idEmpresaReceptora]),
    CONSTRAINT [FK_Pendencia_UsuarioEmpresa] FOREIGN KEY ([idUsuarioEmpresa]) REFERENCES [dbo].[UsuarioEmpresa] ([idUsuarioEmpresa]),
	CONSTRAINT [FK_Pendencia_GrupoInformacao] FOREIGN KEY ([idGrupoInformacao]) REFERENCES [dbo].[GrupoInformacao] ([idGrupoInformacao])
);

