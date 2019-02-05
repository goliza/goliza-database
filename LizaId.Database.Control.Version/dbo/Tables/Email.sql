CREATE TABLE [dbo].[Email] (
    [idEmail]   INT           IDENTITY (1, 1) NOT NULL,
    [idContato] INT           NOT NULL,
    [Email]     VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED ([idEmail] ASC),
    CONSTRAINT [FK_Email_Contato] FOREIGN KEY ([idContato]) REFERENCES [dbo].[Contato] ([idContato])
);

