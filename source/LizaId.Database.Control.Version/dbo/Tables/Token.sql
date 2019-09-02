CREATE TABLE [dbo].[Token] (
    [DataCriacao]              DATETIME         NULL,
    [idUsuarioCriacao]         INT              NULL,
    [DataUltimaAlteracao]      DATETIME         NULL,
    [idUsuarioUltimaAlteracao] INT              NULL,
    [idToken]                  INT              IDENTITY (1, 1) NOT NULL,
    [EmailToken]               VARCHAR (150)    NOT NULL,
    [DataExpiracaoToken]       DATETIME         NOT NULL,
    [CodigoToken]              UNIQUEIDENTIFIER NOT NULL,
    [CodigoSimplificadoToken]  CHAR (5)         NULL,
    [idTokenStatus]            INT              NOT NULL,
    CONSTRAINT [PK_Token] PRIMARY KEY CLUSTERED ([idToken] ASC)
);







