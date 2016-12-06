CREATE TABLE Recepies_Two
(
	[Id] INT NOT NULL PRIMARY KEY DEFAULT NEXT VALUE FOR [dbo].[Sequence_One], 
    [Recepie_Name] NVARCHAR(50) NULL, 
    [Submitted_By] NVARCHAR(50) NULL, 
    [Category] NVARCHAR(50) NULL, 
    [Cooking_Time] INT NULL, 
    [Portions] INT NULL, 
    [Type] NVARCHAR(50) NULL, 
    [Description] NVARCHAR(MAX) NULL
)
