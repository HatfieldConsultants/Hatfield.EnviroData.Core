USE [ODM2]
GO

/****** Object:  Table [ODM2].[Project]    Script Date: 09/02/2016 10:34:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [ODM2].[Project](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](500) NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [ODM2].[FieldWorkPlan](
	[FieldWorkPlanID] [int] IDENTITY(1,1) NOT NULL,
	[FieldWorkPlanName] [nvarchar](500) NOT NULL
) ON [PRIMARY]

GO

INSERT INTO [ODM2].[ODM2].[CV_DatasetTypeCV]
           ([Term]
           ,[Name]
           ,[Definition]
           ,[Category]
           ,[SourceVocabularyURI])
     VALUES
           ('Project'
           ,'Project'
           ,NULL
           ,NULL
           ,NULL)
           
INSERT INTO [ODM2].[ODM2].[CV_DatasetTypeCV]
           ([Term]
           ,[Name]
           ,[Definition]
           ,[Category]
           ,[SourceVocabularyURI])
     VALUES
           ('DataProfile'
           ,'DataProfile'
           ,NULL
           ,NULL
           ,NULL)
                      
GO



