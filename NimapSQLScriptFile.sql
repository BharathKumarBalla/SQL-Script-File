create database [NimapProject]
USE [NimapProject]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06-04-2023 14:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1001,1) NOT NULL,
	[CategoryName] [varchar](75) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 06-04-2023 14:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](105) NULL,
	[CategoryID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1005, N'Appliances')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1003, N'Clothing')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1004, N'Daily Essentials')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1001, N'Electronics')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1008, N'Fruits')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1002, N'LifeStyle')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryID]) VALUES (1, N'Kids Wear', 1003)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryID]) VALUES (2, N'Washing Machine', 1001)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryID]) VALUES (3, N'Ethnic Wear', 1003)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryID]) VALUES (4, N'Groceries', 1004)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryID]) VALUES (5, N'Home Theatre', 1001)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryID]) VALUES (6, N'Micrwave Oven', 1001)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryID]) VALUES (7, N'Party Wear', 1003)
