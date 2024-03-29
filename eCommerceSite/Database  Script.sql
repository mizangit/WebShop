USE [master]
GO
/****** Object:  Database [eCommerceSiteDB]    Script Date: 10/10/2015 00:29:33 ******/
CREATE DATABASE [eCommerceSiteDB] ON  PRIMARY 
( NAME = N'eCommerceSiteDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\eCommerceSiteDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'eCommerceSiteDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\eCommerceSiteDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [eCommerceSiteDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eCommerceSiteDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eCommerceSiteDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET ARITHABORT OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [eCommerceSiteDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [eCommerceSiteDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [eCommerceSiteDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [eCommerceSiteDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [eCommerceSiteDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [eCommerceSiteDB] SET  READ_WRITE
GO
ALTER DATABASE [eCommerceSiteDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [eCommerceSiteDB] SET  MULTI_USER
GO
ALTER DATABASE [eCommerceSiteDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [eCommerceSiteDB] SET DB_CHAINING OFF
GO
USE [eCommerceSiteDB]
GO
/****** Object:  Table [dbo].[tbl_ProductType]    Script Date: 10/10/2015 00:29:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
 CONSTRAINT [PK_tbl_ProductType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ProductType] ON
INSERT [dbo].[tbl_ProductType] ([Id], [Name]) VALUES (1, N'Mobile')
INSERT [dbo].[tbl_ProductType] ([Id], [Name]) VALUES (2, N'Car')
INSERT [dbo].[tbl_ProductType] ([Id], [Name]) VALUES (3, N'Laptop')
INSERT [dbo].[tbl_ProductType] ([Id], [Name]) VALUES (4, N'Software')
INSERT [dbo].[tbl_ProductType] ([Id], [Name]) VALUES (5, N'Monitor')
INSERT [dbo].[tbl_ProductType] ([Id], [Name]) VALUES (6, N'Motorbike')
INSERT [dbo].[tbl_ProductType] ([Id], [Name]) VALUES (7, N'Bicycle')
INSERT [dbo].[tbl_ProductType] ([Id], [Name]) VALUES (8, N'Others')
SET IDENTITY_INSERT [dbo].[tbl_ProductType] OFF
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 10/10/2015 00:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Price] [int] NULL,
	[Description] [text] NULL,
	[Image] [varchar](150) NULL,
 CONSTRAINT [PK_tbl_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Product] ON
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (1, 1, N'Samsung Galaxy S5', 50000, N'Nice SmartPhone', N'Image/Samsung Galaxy S5.png')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (4, 1, N'ferrari enzo', 1200000, N'Beautiful Car ', N'Image/ferrari enzo.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (5, 1, N'xperia-z3', 20000, N'Nice Phone', N'Image/xperia-z3.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (6, 2, N'ferrari enzo 2', 1200000, N'Nice Car', N'Image/ferrari enzo 2.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (8, 6, N'Yamaha FZ', 150000, N'The Yamaha FZ-16 and FZ-S are motorcycles manufactured by India Yamaha Motor. Inspired by the naked bike concept, the FZ-16 is modeled after its more popular counterpart the FZ1 with scaled down engine capacity to 153 cc more suited to the Indian and its Asian markets roads.[clarification needed]. It is a very popular in Sri Lankan market as well. The FZ-16 uses 140/60 size rear radial tubeless tyre. It won Bike of the Year Award from UTVi/Autocar, Zigwheels, and Business Standard Motoring, and the Viewers Choice award at UTVi & Autocar India Awards 2009.', N'Image/Yamaha-Fz.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (9, 7, N'Cruiser', 45000, N'A cruiser bicycle, also known as a beach cruiser, is a bicycle which combines balloon tires, an upright seating posture, a single-speed drivetrain, and straightforward steel construction with expressive styling', N'Image/Cruiser.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (10, 6, N'Honda Wave125cc', 150000, N'The Honda Wave — also marketed as the NF series, Innova in Europe, and Supra X in Indonesia — are a series of light motorcycles manufactured by Honda', N'Image/Honda_Wave_125.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (11, 6, N'Lauge Jensen', 2500000, N'A drivers motorcycle.

The riding comfort whether cruising your dreams along the sea or speeding ahead on country roads is in a class of its own. A Lauge Jensen custom motorcycle is a very personal statement which goes far beyond the uniqueness of the design. Lauge Jensen never compromise safety, quality and ride ability.
', N'Image/Lauge  Jensen.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (12, 7, N'Hybrid', 35000, N'From the early 20th century until after World War II, the roadster constituted most adult bicycles sold in the United Kingdom and in many parts of the British Empire. In Britain, the utility roadster declined noticeably in popularity during the early 1970s, as a boom in recreational cycling caused manufacturers to concentrate on lightweight (23-30 lb.), affordable derailleur sport bikes, actually slightly-modified versions of the racing bicycle of the era. In the 1980s, U.K. cyclists began to shift from road-only bicycles to all-terrain models such as the mountain bike. The mountain bikes sturdy frame and load-carrying ability gave it additional versatility as a utility bike, usurping the role previously filled by the roadster. By 1990, the roadster was almost dead; while annual U.K. bicycle sales reached an all-time record of 2.8 million, almost all of them were mountain and road/sport models. A different situation, however, occurred and still occurs in most Asian countries as of 2014. Roadsters are still widely made and used in countries such as China, India, Thailand, Vietnam and others.', N'Image/hybrid.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (13, 5, N'Acer', 15000, N'Acer Value Line is a product line of low-cost LCD monitors manufactured by Taiwan-based computer company Acer. Most of the liquid crystal display monitors from the Value Line series are dedicated to home or office users. Most of them have a classic design and standard functions ideal for home of office use. Value Line monitors are one of the most popular Acer products and they are available worldwide.[citation needed] At the end of 2008, Acers Value line was discontinued.', N'Image/Acer.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (14, 5, N'HP', 18000, N'HP SiteScope is agentless monitoring software focused on monitoring the availability and performance of distributed IT infrastructures, including Servers, Network devices and services, Applications and application components, operating systems and various IT enterprise components.', N'Image/HP.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (15, 5, N'Benq', 10000, N'Nice monitor. Benq is a low quality product for monitor. Its price is also low. its service and picture quality is nice.', N'Image/benq.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (16, 5, N'Asus', 16000, N'Beautiful product. ', N'Image/ASUS.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (17, 8, N'Fun Photo 1', 0, N'Fun photos ', N'Image/1385442_10200449931479604_999728660_n.jpg')
INSERT [dbo].[tbl_Product] ([Id], [TypeId], [Name], [Price], [Description], [Image]) VALUES (18, 8, N'APJ Abdul Kalam', 0, N'Avul Pakir Jainulabdeen A. P. J. Abdul Kalam (October 1931 – 27 July 2015) was the 11th President of India from 2002 to 2007.', N'Image/APJ-Abdul-Kalam005.jpg')
SET IDENTITY_INSERT [dbo].[tbl_Product] OFF
/****** Object:  Table [dbo].[tbl_Cart]    Script Date: 10/10/2015 00:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [varchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[DatePurchased] [datetime] NOT NULL,
	[IsInCart] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Cart] ON
INSERT [dbo].[tbl_Cart] ([Id], [ClientId], [ProductId], [Amount], [DatePurchased], [IsInCart]) VALUES (1, N'Mizu1', 4, 1, CAST(0x0000A4F2013A36AC AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([Id], [ClientId], [ProductId], [Amount], [DatePurchased], [IsInCart]) VALUES (2, N'Mizu1', 8, 3, CAST(0x0000A4F2013A5E84 AS DateTime), 1)
INSERT [dbo].[tbl_Cart] ([Id], [ClientId], [ProductId], [Amount], [DatePurchased], [IsInCart]) VALUES (3, N'Mizu1', 8, 1, CAST(0x0000A4F2013AD990 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tbl_Cart] OFF
/****** Object:  ForeignKey [FK_tbl_Product_tbl_ProductType]    Script Date: 10/10/2015 00:29:44 ******/
ALTER TABLE [dbo].[tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Product_tbl_ProductType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[tbl_ProductType] ([Id])
GO
ALTER TABLE [dbo].[tbl_Product] CHECK CONSTRAINT [FK_tbl_Product_tbl_ProductType]
GO
/****** Object:  ForeignKey [FK_tbl_Cart_tbl_Product]    Script Date: 10/10/2015 00:29:44 ******/
ALTER TABLE [dbo].[tbl_Cart]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Cart_tbl_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tbl_Product] ([Id])
GO
ALTER TABLE [dbo].[tbl_Cart] CHECK CONSTRAINT [FK_tbl_Cart_tbl_Product]
GO
