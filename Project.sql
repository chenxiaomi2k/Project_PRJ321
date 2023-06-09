USE [master]
GO
/****** Object:  Database [PRJ321_M3]    Script Date: 18-Jul-21 10:00:43 PM ******/
CREATE DATABASE [PRJ321_M3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ321_M3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ321_M3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ321_M3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ321_M3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ321_M3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ321_M3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ321_M3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ321_M3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ321_M3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ321_M3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ321_M3] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ321_M3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRJ321_M3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ321_M3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ321_M3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ321_M3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ321_M3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ321_M3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ321_M3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ321_M3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ321_M3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ321_M3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ321_M3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ321_M3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ321_M3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ321_M3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ321_M3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ321_M3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ321_M3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ321_M3] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ321_M3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ321_M3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ321_M3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ321_M3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ321_M3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ321_M3] SET QUERY_STORE = OFF
GO
USE [PRJ321_M3]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 18-Jul-21 10:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[adminID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](30) NULL,
	[password] [varchar](32) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 18-Jul-21 10:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[oID] [varchar](32) NOT NULL,
	[dateCreate] [datetime] NULL,
	[cname] [nvarchar](30) NOT NULL,
	[cphone] [varchar](30) NULL,
	[cAddress] [nvarchar](100) NULL,
	[total] [money] NULL,
	[status] [int] NULL,
	[pid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[oID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 18-Jul-21 10:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetail](
	[pid] [varchar](30) NOT NULL,
	[oID] [varchar](32) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[total] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC,
	[oID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 18-Jul-21 10:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
	[Total] [money] NULL,
	[CustomerName] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 18-Jul-21 10:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cateID] [int] IDENTITY(1,1) NOT NULL,
	[cateName] [nvarchar](50) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[cateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 18-Jul-21 10:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](30) NOT NULL,
	[cphone] [varchar](30) NULL,
	[cAddress] [nvarchar](100) NULL,
	[username] [varchar](30) NOT NULL,
	[password] [varchar](32) NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18-Jul-21 10:00:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[pid] [varchar](30) NOT NULL,
	[pname] [nvarchar](100) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[image] [varchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[status] [bit] NULL,
	[cateID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([adminID], [username], [password]) VALUES (6, N'mrbd', N'aothatday')
INSERT [dbo].[admin] ([adminID], [username], [password]) VALUES (100, N'mrc', N'oidoioi123')
INSERT [dbo].[admin] ([adminID], [username], [password]) VALUES (106, N'1234', N'12345678')
INSERT [dbo].[admin] ([adminID], [username], [password]) VALUES (108, N'hhhhhhh', N'12345678')
INSERT [dbo].[admin] ([adminID], [username], [password]) VALUES (109, N'hai', N'12345678')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
INSERT [dbo].[Bill] ([oID], [dateCreate], [cname], [cphone], [cAddress], [total], [status], [pid]) VALUES (N'1', CAST(N'2021-05-10T00:00:00.000' AS DateTime), N'Long Hai', N'0123456789', N'Ha Noi', 2,0000, 1, 1)
INSERT [dbo].[Bill] ([oID], [dateCreate], [cname], [cphone], [cAddress], [total], [status], [pid]) VALUES (N'2', CAST(N'2021-05-21T00:00:00.000' AS DateTime), N'Kha Banh', N'0987654321', N'Bac Ninh', 2,0000, 2, 2)
INSERT [dbo].[Bill] ([oID], [dateCreate], [cname], [cphone], [cAddress], [total], [status], [pid]) VALUES (N'3', CAST(N'2021-05-21T00:00:00.000' AS DateTime), N'Huan Rose', N'0123654987', N'Yen bai', 2,0000, 1, 3)
GO
INSERT [dbo].[BillDetail] ([pid], [oID], [quantity], [price], [total]) VALUES (N'1', N'1', 2, 2700000,0000, 5400000,0000)
INSERT [dbo].[BillDetail] ([pid], [oID], [quantity], [price], [total]) VALUES (N'2', N'2', 1, 10500000,0000, 10500000,0000)
INSERT [dbo].[BillDetail] ([pid], [oID], [quantity], [price], [total]) VALUES (N'3', N'3', 1, 9000000,0000, 9000000,0000)
GO
INSERT [dbo].[Cart] ([ID], [Name], [Quantity], [Price], [Total], [CustomerName]) VALUES (1, N'Light SMA G3', 1, 2700000,0000, 2700000,0000, NULL)
INSERT [dbo].[Cart] ([ID], [Name], [Quantity], [Price], [Total], [CustomerName]) VALUES (2, N'SMA Table G22', 1, 10500000,0000, 10500000,0000, NULL)
INSERT [dbo].[Cart] ([ID], [Name], [Quantity], [Price], [Total], [CustomerName]) VALUES (2, N'SMA Table G22', 2, 10500000,0000, 10500000,0000, NULL)
INSERT [dbo].[Cart] ([ID], [Name], [Quantity], [Price], [Total], [CustomerName]) VALUES (2, N'SMA Table G22', 4, 10500000,0000, 10500000,0000, NULL)
INSERT [dbo].[Cart] ([ID], [Name], [Quantity], [Price], [Total], [CustomerName]) VALUES (3, N'Armchair MONA Rank 2', 2, 9000000,0000, 9000000,0000, N'Long Hai')
INSERT [dbo].[Cart] ([ID], [Name], [Quantity], [Price], [Total], [CustomerName]) VALUES (2, N'SMA Table G22', 4, 10500000,0000, 10500000,0000, N'Long Hai')
INSERT [dbo].[Cart] ([ID], [Name], [Quantity], [Price], [Total], [CustomerName]) VALUES (1, N'Light SMA G3', 2, 2700000,0000, 2700000,0000, NULL)
INSERT [dbo].[Cart] ([ID], [Name], [Quantity], [Price], [Total], [CustomerName]) VALUES (3, N'Armchair MONA Rank 2', 2, 9000000,0000, 9000000,0000, NULL)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cateID], [cateName], [status]) VALUES (1, N'Light', 1)
INSERT [dbo].[Category] ([cateID], [cateName], [status]) VALUES (2, N'Table', 1)
INSERT [dbo].[Category] ([cateID], [cateName], [status]) VALUES (3, N'Sofa', 1)
INSERT [dbo].[Category] ([cateID], [cateName], [status]) VALUES (8, N'hai', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([cid], [cname], [cphone], [cAddress], [username], [password], [status]) VALUES (1, N'Long Hai', N'0123456789', N'Ha Noi', N'mra', N'12345678', 1)
INSERT [dbo].[Customer] ([cid], [cname], [cphone], [cAddress], [username], [password], [status]) VALUES (2, N'Kha Banh', N'0987654321', N'Bac Ninh', N'mrb', N'aothatday', 1)
INSERT [dbo].[Customer] ([cid], [cname], [cphone], [cAddress], [username], [password], [status]) VALUES (3, N'Huan Rose', N'0123654987', N'Yen Bai', N'mrc', N'oidoioi1', 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
INSERT [dbo].[Product] ([pid], [pname], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'1', N'Light SMA G3', 3, 2700000,0000, N'https://product.hstatic.net/1000173553/product/upload_c5bbdb3fa9fd4d69b8408635cd97d843.jpg', N'Lend your interior a touch of cool industrial influence with this handsome chandelier that catches the eye with its distinctive metal netted shade. Two layers of iron mesh netting help to diffuse the light while still allowing decorative bulbs like stylish Edison bulbs to remain visible. This large chandelier would make an excellent focal point for any space.', 1, 1)
INSERT [dbo].[Product] ([pid], [pname], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'2', N'SMA Table G22', 4, 10500000,0000, N'https://product.hstatic.net/1000173553/product/1_377b61e827704e20bcf67dd66c4d624c.jpg', N'Mahogany solids and prima vera veneers. Two drawers. Special Reserve finish.', 1, 3)
INSERT [dbo].[Product] ([pid], [pname], [quantity], [price], [image], [description], [status], [cateID]) VALUES (N'3', N'Armchair MONA Rank 2', 3, 9000000,0000, N'https://product.hstatic.net/1000173553/product/mona_1_53d794ff217c40a89ea2f4fe7cd200b4.png', N'Add an upholstered set of Saracina HomeÃ¢ÂÂs 18Ã¢ÂÂ Faux Leather Dining Chairs to your kitchen or banquet hall. Treat this modern, sophisticated pair as a new space accommodating set or as chic accent chairs to assist in party settings. Polyurethane, powder-coated steel framing, and upholstered coverings blend into strong, yet elegant, designs. Become the friend of the bunch known for their stylish home dÃÂ©cor and try out an urban industrial, modern, or contemporary theme and watch others follow suit.', 1, 3)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__admin__F3DBC57279DEF073]    Script Date: 18-Jul-21 10:00:43 PM ******/
ALTER TABLE [dbo].[admin] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__F3DBC572CF17E1B0]    Script Date: 18-Jul-21 10:00:43 PM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT (getdate()) FOR [dateCreate]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[Customer] ([cid])
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD FOREIGN KEY([oID])
REFERENCES [dbo].[Bill] ([oID])
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[Product] ([pid])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cateID])
GO
ALTER TABLE [dbo].[admin]  WITH CHECK ADD CHECK  ((len([password])>=(8)))
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD CHECK  ((len([password])>=(8)))
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD CHECK  (([price]>=(0)))
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD CHECK  (([quantity]>=(0)))
GO
USE [master]
GO
ALTER DATABASE [PRJ321_M3] SET  READ_WRITE 
GO
