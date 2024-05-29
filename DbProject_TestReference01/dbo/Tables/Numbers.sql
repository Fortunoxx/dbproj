CREATE TABLE [dbo].[Numbers] (
    [Id]     INT IDENTITY (1, 1) NOT NULL,
    [Number] INT NULL
);
GO

ALTER TABLE [dbo].[Numbers]
    ADD CONSTRAINT [PK_Numbers] PRIMARY KEY CLUSTERED ([Id] ASC);
GO

