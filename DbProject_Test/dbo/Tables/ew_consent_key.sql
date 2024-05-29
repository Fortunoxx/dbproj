CREATE TABLE [dbo].[ew_consent_key] (
    [KeyId]     INT            IDENTITY (1, 1) NOT NULL,
    [KeyType]   TINYINT        NOT NULL,
    [KeyValue]  NVARCHAR (128) NOT NULL,
    [CreatedAt] DATETIME2 (7)  DEFAULT (sysutcdatetime()) NOT NULL,
    PRIMARY KEY CLUSTERED ([KeyId] ASC)
);


GO

CREATE UNIQUE NONCLUSTERED INDEX [UNCI_ew_consent_key_KeyType_KeyValue]
    ON [dbo].[ew_consent_key]([KeyType] ASC, [KeyValue] ASC);


GO

