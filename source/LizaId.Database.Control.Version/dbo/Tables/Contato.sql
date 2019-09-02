CREATE TABLE [dbo].[Contato] (
    [idContato]        INT            IDENTITY (1, 1) NOT NULL,
    [idEmpresa]        INT            NOT NULL,
    [NomeContato]      NVARCHAR (MAX) NOT NULL,
    [SobrenomeContato] NVARCHAR (MAX) NULL,
    [CargoContato]     NVARCHAR (MAX) NOT NULL,
    [idTipoContato]    INT            NOT NULL,
    [DataAlteracao]    DATETIME       NULL,
    CONSTRAINT [PK_Contato] PRIMARY KEY CLUSTERED ([idContato] ASC),
    CONSTRAINT [FK_Contato_TipoContato_idTipoContato] FOREIGN KEY ([idTipoContato]) REFERENCES [dbo].[TipoContato] ([idTipoContato]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_Contato_idTipoContato]
    ON [dbo].[Contato]([idTipoContato] ASC);

