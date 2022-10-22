CREATE TABLE [dbo].[LaundryRecord] (
    [Id]               INT           IDENTITY (1, 1) NOT NULL,
    [Name]             NVARCHAR (50) NOT NULL,
    [NoOfItem]         INT           NOT NULL,
    [Weight]           INT           NOT NULL,
    [Price]            BIGINT        NOT NULL,
    [Pending]          BIT           NOT NULL,
    [Completed]        BIT           NOT NULL,
    [Paid]             BIT           NOT NULL,
    [Gender]           NVARCHAR (3)  NOT NULL,
    [DateOfCompletion] DATE          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

