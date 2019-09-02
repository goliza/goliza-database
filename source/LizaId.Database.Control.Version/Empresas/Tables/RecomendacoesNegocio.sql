CREATE TABLE [Empresas].[RecomendacoesNegocio] (
    [DataCriacao]         DATETIME2 (7)    NULL,
    [UsuarioCriacaoId]    INT              NULL,
    [DataAlteracao]       DATETIME2 (7)    NULL,
    [UsuarioAlteracaoId]  INT              NULL,
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [Nome]                VARCHAR (100)    NOT NULL,
    [Sobrenome]           VARCHAR (200)    NOT NULL,
    [EmpresaNomeFantasia] VARCHAR (250)    NOT NULL,
    [RelacionamentoId]    INT              NOT NULL,
    [Cargo]               VARCHAR (250)    NOT NULL,
    [EmpresaId]           INT              NOT NULL,
    CONSTRAINT [PK_RecomendacoesNegocio] PRIMARY KEY CLUSTERED ([Id] ASC)
);



