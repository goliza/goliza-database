CREATE TABLE [dbo].[Email] (
    [idEmail]   INT            IDENTITY (1, 1) NOT NULL,
    [idContato] INT            NOT NULL,
    [Email]     NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED ([idEmail] ASC),
    CONSTRAINT [FK_Email_Contato_idContato] FOREIGN KEY ([idContato]) REFERENCES [dbo].[Contato] ([idContato]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_Email_idContato]
    ON [dbo].[Email]([idContato] ASC);

