CREATE TABLE [dbo].[Recomendacao] (
    [idRecomendacao]             INT              IDENTITY (1, 1) NOT NULL,
    [idEmpresa]                  INT              NOT NULL,
    [NomeRecomendacao]           VARCHAR (MAX)    NOT NULL,
    [SobrenomeRecomendacao]      VARCHAR (MAX)    NULL,
    [RelacionamentoRecomendacao] INT              NOT NULL,
    [idArquivo]                  UNIQUEIDENTIFIER NOT NULL,
    [CargoRecomendacao]          VARCHAR (MAX)    NOT NULL,
    [EmpresaRecomendacao]        VARCHAR (MAX)    NOT NULL,
    [NomeDocumento]              VARCHAR (MAX)    NOT NULL,
    [ComentariosRecomendacao]    VARCHAR (MAX)    NULL,
    [idUsuario]                  INT              NULL,
    [DataCriacao]                DATETIME         NULL,
    [DataAlteracao]              DATETIME         NULL,
    CONSTRAINT [PK_Recomendacao] PRIMARY KEY CLUSTERED ([idRecomendacao] ASC)
);

