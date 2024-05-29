CREATE TABLE [dbo].[ew_consent] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [KeyId]     INT           NOT NULL,
    [OptId]     INT           NOT NULL,
    [TypeId]    INT           NOT NULL,
    [CreatedAt] DATETIME2 (7) DEFAULT (sysutcdatetime()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_ew_consent_ew_consent_key] FOREIGN KEY ([KeyId]) REFERENCES [dbo].[ew_consent_key] ([KeyId])
);


GO

CREATE UNIQUE NONCLUSTERED INDEX [UNCI_ew_consent_KeyId_TypeId]
    ON [dbo].[ew_consent]([KeyId] ASC, [TypeId] ASC)
    INCLUDE([OptId], [CreatedAt]);


GO

