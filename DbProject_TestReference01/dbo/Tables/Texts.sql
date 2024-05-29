CREATE TABLE [dbo].[Texts] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Text] VARCHAR (512) NULL,
    CONSTRAINT [PK_Texts] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

