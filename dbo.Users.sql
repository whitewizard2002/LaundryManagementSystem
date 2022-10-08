CREATE TABLE [dbo].[Users] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (50)  NOT NULL,
    [Gender]   NVARCHAR (50)  NOT NULL,
    [Email]    NVARCHAR (100) NOT NULL,
    [Password] NVARCHAR (50)  NOT NULL,
    [PhoneNo]  NVARCHAR (10)  NOT NULL,
    [Address]  NVARCHAR (150) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

