CREATE TABLE [dbo].[Recepies] (
    [Id]           INT            NOT NULL DEFAULT NEXT VALUE FOR [dbo].[Id_Sequence]  ,
    [Recepie_Name] NVARCHAR (50)  NULL,
    [Submitted By] NVARCHAR (50)  NULL,
    [Category]     NVARCHAR (50)  NULL,
    [Cooking Time] INT            NULL,
    [Portions]     INT            NULL,
    [Type]         NCHAR (10)     NULL,
    [Description]  NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


