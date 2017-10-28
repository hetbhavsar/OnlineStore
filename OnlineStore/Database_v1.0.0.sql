IF NOT (EXISTS (SELECT *
					FROM INFORMATION_SCHEMA.TABLES
					WHERE TABLE_SCHEMA = 'dbo'
					AND TABLE_NAME = 'OnlineStore_Product'))

BEGIN
CREATE TABLE [dbo].[OnlineStore_Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,	
	[Reference] [nvarchar] (300) NOT NULL,	
	[Observation] [nvarchar] (400) NULL,
	[Price] [double] NULL,
	[IsDeleted] [bit] NULL,
	[IsVisible] [bit] NULL,	
	CONSTRAINT	PK_OnlineStore_Product PRIMARY KEY (Id)	
	)
End
Go

IF NOT (EXISTS (SELECT *
					FROM INFORMATION_SCHEMA.TABLES
					WHERE TABLE_SCHEMA = 'dbo'
					AND TABLE_NAME = 'OnlineStore_Category'))

BEGIN
CREATE TABLE [dbo].[OnlineStore_Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[Observation] [nvarchar] (400) NULL,
	[IsDeleted] [bit] NULL,	
	CONSTRAINT	PK_OnlineStore_Category PRIMARY KEY (Id)	
	)
End
Go

IF NOT (EXISTS (SELECT *
					FROM INFORMATION_SCHEMA.TABLES
					WHERE TABLE_SCHEMA = 'dbo'
					AND TABLE_NAME = 'OnlineStore_Customer'))

BEGIN
CREATE TABLE [dbo].[OnlineStore_Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](300) NOT NULL,
	[MobilePhone] int NOT NULL,
	[NIF] int NULL,	
	[Observation] [nvarchar] (400) NULL,
	[IsDeleted] [bit] NULL,
	CONSTRAINT	PK_OnlineStore_Customer PRIMARY KEY (Id)
	)
End
Go

IF NOT (EXISTS (SELECT *
					FROM INFORMATION_SCHEMA.TABLES
					WHERE TABLE_SCHEMA = 'dbo'
					AND TABLE_NAME = 'OnlineStore_Image'))

BEGIN
CREATE TABLE [dbo].[OnlineStore_Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar] (300) NOT NULL,
	[Extension] [nvarchar](300) NOT NULL,
	[Image] [varbinary](max) NOT NULL,
	[Product_Id] int NULL,
	[Category_Id] int NULL,
	[isBanner] [bit] NOT NULL,
	CONSTRAINT	PK_OnlineStore_Image PRIMARY KEY (Id)	
	)
End
Go
