﻿CREATE TABLE [dbo].[Token] (
    [idToken]                  INT              IDENTITY (1, 1) NOT NULL,
    [EmailToken]               VARCHAR (150)    NOT NULL,
    [DataExpiracaoToken]       DATETIME         NOT NULL,
    [CodigoToken]              UNIQUEIDENTIFIER NULL,
    [CodigoSimplificadoToken]  CHAR (5)         NULL,
    [idTokenStatus]            INT              NOT NULL,
    [idUsuarioCriacao]         INT              NULL,
    [DataCriacao]              DATETIME         NULL,
    [idUsuarioUltimaAlteracao] INT              NOT NULL,
    [DataUltimaAlteracao]      DATETIME         NOT NULL,
    CONSTRAINT [PK_TokenCompartilhamento] PRIMARY KEY CLUSTERED ([idToken] ASC),
    CONSTRAINT [FK_Token_TokenStatus] FOREIGN KEY ([idTokenStatus]) REFERENCES [dbo].[TokenStatus] ([idTokenStatus])
);

