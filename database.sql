USE [master]
GO
/****** Object:  Database [ClothingDatabase]    Script Date: 5/14/2017 11:18:50 AM ******/
CREATE DATABASE [ClothingDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClothingDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ClothingDatabase.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClothingDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ClothingDatabase_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ClothingDatabase] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClothingDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClothingDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClothingDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClothingDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClothingDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClothingDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClothingDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ClothingDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClothingDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClothingDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClothingDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClothingDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClothingDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClothingDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClothingDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClothingDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ClothingDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClothingDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClothingDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClothingDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClothingDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClothingDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ClothingDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClothingDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ClothingDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [ClothingDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClothingDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClothingDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClothingDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ClothingDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ClothingDatabase]
GO
/****** Object:  Table [dbo].[AccessoryTypes]    Script Date: 5/14/2017 11:18:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccessoryTypes](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AccessoryTypes] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BottomTypes]    Script Date: 5/14/2017 11:18:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BottomTypes](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BottomTypes] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MyAccessories]    Script Date: 5/14/2017 11:18:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MyAccessories](
	[MyAccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[AccessoryID] [int] NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MyAccessories] PRIMARY KEY CLUSTERED 
(
	[MyAccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MyBottoms]    Script Date: 5/14/2017 11:18:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MyBottoms](
	[MyBottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[BottomID] [int] NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MyBottoms] PRIMARY KEY CLUSTERED 
(
	[MyBottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MyShoes]    Script Date: 5/14/2017 11:18:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MyShoes](
	[MyShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[ShoeID] [int] NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MyShoes] PRIMARY KEY CLUSTERED 
(
	[MyShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MyTops]    Script Date: 5/14/2017 11:18:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MyTops](
	[MyTopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[TopID] [int] NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MyTops] PRIMARY KEY CLUSTERED 
(
	[MyTopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShoeTypes]    Script Date: 5/14/2017 11:18:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShoeTypes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ShoeTypes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TopTypes]    Script Date: 5/14/2017 11:18:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TopTypes](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TopTypes] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AccessoryTypes] ON 

INSERT [dbo].[AccessoryTypes] ([AccessoryID], [AccessoryType]) VALUES (1, N'Belts')
INSERT [dbo].[AccessoryTypes] ([AccessoryID], [AccessoryType]) VALUES (2, N'Hats')
INSERT [dbo].[AccessoryTypes] ([AccessoryID], [AccessoryType]) VALUES (3, N'Scarves')
INSERT [dbo].[AccessoryTypes] ([AccessoryID], [AccessoryType]) VALUES (4, N'Socks')
INSERT [dbo].[AccessoryTypes] ([AccessoryID], [AccessoryType]) VALUES (5, N'Watches')
INSERT [dbo].[AccessoryTypes] ([AccessoryID], [AccessoryType]) VALUES (6, N'Neckties')
SET IDENTITY_INSERT [dbo].[AccessoryTypes] OFF
SET IDENTITY_INSERT [dbo].[BottomTypes] ON 

INSERT [dbo].[BottomTypes] ([BottomID], [BottomType]) VALUES (1, N'Dress Pants')
INSERT [dbo].[BottomTypes] ([BottomID], [BottomType]) VALUES (2, N'Jeans')
INSERT [dbo].[BottomTypes] ([BottomID], [BottomType]) VALUES (3, N'Khakis')
INSERT [dbo].[BottomTypes] ([BottomID], [BottomType]) VALUES (4, N'Shorts')
INSERT [dbo].[BottomTypes] ([BottomID], [BottomType]) VALUES (5, N'Swimming Trunks')
SET IDENTITY_INSERT [dbo].[BottomTypes] OFF
SET IDENTITY_INSERT [dbo].[MyAccessories] ON 

INSERT [dbo].[MyAccessories] ([MyAccessoryID], [Name], [Photo], [AccessoryID], [Color], [Season], [Occasion]) VALUES (3, N'Checkered Scarf', N'n/a', 3, N'red, black', N'fall, winter', N'casual, formal')
INSERT [dbo].[MyAccessories] ([MyAccessoryID], [Name], [Photo], [AccessoryID], [Color], [Season], [Occasion]) VALUES (4, N'Leather Belt', N'n/a', 1, N'black', N'spring, summer, fall, winter', N'casual, formal')
INSERT [dbo].[MyAccessories] ([MyAccessoryID], [Name], [Photo], [AccessoryID], [Color], [Season], [Occasion]) VALUES (5, N'Watch', N'https://www.mvmtwatches.com/collections/all-mens-watches', 1, N'brown', N'spring, summer, fall', N'formal')
SET IDENTITY_INSERT [dbo].[MyAccessories] OFF
SET IDENTITY_INSERT [dbo].[MyBottoms] ON 

INSERT [dbo].[MyBottoms] ([MyBottomID], [Name], [Photo], [BottomID], [Color], [Season], [Occasion]) VALUES (1, N'Bragg jeans', N'n/a', 2, N'dark blue', N'spring, summer, fall, winter', N'casual')
INSERT [dbo].[MyBottoms] ([MyBottomID], [Name], [Photo], [BottomID], [Color], [Season], [Occasion]) VALUES (2, N'work pants', N'n/a', 3, N'brown', N'spring, summer, fall, winter', N'business-casual')
SET IDENTITY_INSERT [dbo].[MyBottoms] OFF
SET IDENTITY_INSERT [dbo].[MyShoes] ON 

INSERT [dbo].[MyShoes] ([MyShoeID], [Name], [Photo], [ShoeID], [Color], [Season], [Occasion]) VALUES (1, N'Puma sneakers', N'n/a', 5, N'blue, white', N'spring, summer', N'casual')
INSERT [dbo].[MyShoes] ([MyShoeID], [Name], [Photo], [ShoeID], [Color], [Season], [Occasion]) VALUES (2, N'Bahamas shoes', N'n/a', 3, N'brown', N'summer', N'casual')
SET IDENTITY_INSERT [dbo].[MyShoes] OFF
SET IDENTITY_INSERT [dbo].[MyTops] ON 

INSERT [dbo].[MyTops] ([MyTopID], [Name], [Photo], [TopID], [Color], [Season], [Occasion]) VALUES (1, N'LaCoste shirt', N'n/a', 4, N'light blue', N'spring, summer, fall', N'casual, business-casual')
INSERT [dbo].[MyTops] ([MyTopID], [Name], [Photo], [TopID], [Color], [Season], [Occasion]) VALUES (2, N'striped shirt', N'n/a', 7, N'blue, grey', N'spring, summer, fall', N'casual')
INSERT [dbo].[MyTops] ([MyTopID], [Name], [Photo], [TopID], [Color], [Season], [Occasion]) VALUES (3, N'New Balance hoodie', N'http://www.newbalance.com/pd/mens-3layer-jacket/MJ63520.html?dwvar_MJ63520_color=Alpha%20Orange#color=Alpha Orange', 5, N'red', N'fall, winter, spring', N'casual')
SET IDENTITY_INSERT [dbo].[MyTops] OFF
SET IDENTITY_INSERT [dbo].[ShoeTypes] ON 

INSERT [dbo].[ShoeTypes] ([ShoeID], [ShoeType]) VALUES (1, N'Boots')
INSERT [dbo].[ShoeTypes] ([ShoeID], [ShoeType]) VALUES (2, N'Dress Shoes')
INSERT [dbo].[ShoeTypes] ([ShoeID], [ShoeType]) VALUES (3, N'Sandals')
INSERT [dbo].[ShoeTypes] ([ShoeID], [ShoeType]) VALUES (4, N'Slippers')
INSERT [dbo].[ShoeTypes] ([ShoeID], [ShoeType]) VALUES (5, N'Tennis Shoes')
SET IDENTITY_INSERT [dbo].[ShoeTypes] OFF
SET IDENTITY_INSERT [dbo].[TopTypes] ON 

INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (1, N'Dress Shirts')
INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (2, N'Jackets')
INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (4, N'Polo Shirts')
INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (5, N'Pullovers')
INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (6, N'Sweaters')
INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (7, N'T-Shirts')
INSERT [dbo].[TopTypes] ([TopID], [TopType]) VALUES (8, N'Tank Tops')
SET IDENTITY_INSERT [dbo].[TopTypes] OFF
ALTER TABLE [dbo].[MyAccessories]  WITH CHECK ADD  CONSTRAINT [FK_MyAccessories_AccessoryTypes] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[AccessoryTypes] ([AccessoryID])
GO
ALTER TABLE [dbo].[MyAccessories] CHECK CONSTRAINT [FK_MyAccessories_AccessoryTypes]
GO
ALTER TABLE [dbo].[MyBottoms]  WITH CHECK ADD  CONSTRAINT [FK_MyBottoms_BottomTypes] FOREIGN KEY([BottomID])
REFERENCES [dbo].[BottomTypes] ([BottomID])
GO
ALTER TABLE [dbo].[MyBottoms] CHECK CONSTRAINT [FK_MyBottoms_BottomTypes]
GO
ALTER TABLE [dbo].[MyShoes]  WITH CHECK ADD  CONSTRAINT [FK_MyShoes_ShoeTypes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[ShoeTypes] ([ShoeID])
GO
ALTER TABLE [dbo].[MyShoes] CHECK CONSTRAINT [FK_MyShoes_ShoeTypes]
GO
ALTER TABLE [dbo].[MyTops]  WITH CHECK ADD  CONSTRAINT [FK_MyTops_TopTypes] FOREIGN KEY([TopID])
REFERENCES [dbo].[TopTypes] ([TopID])
GO
ALTER TABLE [dbo].[MyTops] CHECK CONSTRAINT [FK_MyTops_TopTypes]
GO
USE [master]
GO
ALTER DATABASE [ClothingDatabase] SET  READ_WRITE 
GO
