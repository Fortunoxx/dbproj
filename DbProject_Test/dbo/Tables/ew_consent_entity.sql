CREATE TABLE [dbo].[ew_consent_entity] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [KeyValue]  NVARCHAR (128) NOT NULL,
    [OptId]     INT            NOT NULL,
    [TypeId]    INT            NOT NULL,
    [CreatedAt] DATETIME2 (7)  DEFAULT (sysutcdatetime()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE UNIQUE NONCLUSTERED INDEX [UNCI_ew_consent_entity_KeyValue_TypeId]
    ON [dbo].[ew_consent_entity]([KeyValue] ASC, [TypeId] ASC)
    INCLUDE([OptId], [CreatedAt]);


GO

