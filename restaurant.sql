USE [master]
GO
/****** Object:  Database [restaurant]    Script Date: 8/30/2023 11:28:47 AM ******/
CREATE DATABASE [restaurant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'restaurant', FILENAME = N'C:\Users\PC\restaurant.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'restaurant_log', FILENAME = N'C:\Users\PC\restaurant_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [restaurant] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [restaurant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [restaurant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [restaurant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [restaurant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [restaurant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [restaurant] SET ARITHABORT OFF 
GO
ALTER DATABASE [restaurant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [restaurant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [restaurant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [restaurant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [restaurant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [restaurant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [restaurant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [restaurant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [restaurant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [restaurant] SET  DISABLE_BROKER 
GO
ALTER DATABASE [restaurant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [restaurant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [restaurant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [restaurant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [restaurant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [restaurant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [restaurant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [restaurant] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [restaurant] SET  MULTI_USER 
GO
ALTER DATABASE [restaurant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [restaurant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [restaurant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [restaurant] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [restaurant] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [restaurant] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [restaurant] SET QUERY_STORE = OFF
GO
USE [restaurant]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 8/30/2023 11:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[description] [nvarchar](max) NULL,
	[type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 8/30/2023 11:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/30/2023 11:28:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NOT NULL,
	[password] [nchar](50) NOT NULL,
	[role] [nchar](50) NOT NULL,
	[avatar] [varchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [name], [description], [type]) VALUES (1, N'bò bít tết hả', N'ngon', 3)
INSERT [dbo].[Menu] ([id], [name], [description], [type]) VALUES (2, N'bánh hỏi', N'hết nước chấm', NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id], [Name], [Description]) VALUES (1, N'ca sĩ miệt vườn', N'hát hay lắm nha')
INSERT [dbo].[Service] ([Id], [Name], [Description]) VALUES (2, N'ráp pơ', N'rap chậm thôi nhưng mà suy')
INSERT [dbo].[Service] ([Id], [Name], [Description]) VALUES (3, N'rái đơ', N'lại là di gì hao')
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (1, N'tai                                               ', N'123                                               ', N'admin                                             ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1692883929/xf0mlzzktlqw7pqoaggq.jpg')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (2, N'crush my friend                                   ', N'123                                               ', N'admin                                             ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1692887264/i6icjvwldmpssxwybhzi.png')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (1002, N'taiu                                              ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693250473/yqudut8yyiaw3e93bsjh.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (1003, N'testweb                                           ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693251126/rp7gpjptseswr7f5ztoe.webp')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (2002, N'dadda                                             ', N'dasd                                              ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693271011/ueahjmqxzjdggnpowyvx.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (2003, N'dasd                                              ', N'dasd                                              ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693271793/xv2w5rnmmkfiztze6d3s.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (2004, N'tai                                               ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693272337/qwwb2mbcn4lifa07cnym.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (2005, N'dá                                                ', N'dasd                                              ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693272377/j8uhubagssuuhexgnuda.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (2006, N'dá                                                ', N'dasd                                              ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693272620/qeplzqxfxnk5mzmoluta.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (3002, N'tádas                                             ', N'1233                                              ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693273467/koo8czkvzsagfddk1bpq.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (3003, N'đá                                                ', N'dasd                                              ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693273720/ie3jntkdpoodtulipznt.jpg')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (3004, N'hehe                                              ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693273761/ehjfydeesp5ws72d3n1d.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (3005, N'đá                                                ', N'dasd                                              ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693273805/okh5vs6spi7yt1piofz5.jpg')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (3006, N'haha                                              ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693273923/k0uylxpshnl1okcgrt6b.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (3007, N'hehe                                              ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693274014/ful5v7trzvwps2tjvbi1.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (3008, N'đá                                                ', N'dasd                                              ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693274123/ybxafjljei8ouopvkykg.jpg')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (3009, N'đá                                                ', N'dasd                                              ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693274157/x1qfdimab7rgfomlguuq.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (3010, N'đá                                                ', N'dasdasd                                           ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693274392/bulrgag5xusdqtoxhfst.webp')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (3011, N'thinhngooo                                        ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693274510/c5wsn0saaahfhgyqyxpa.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4002, N'crush my friend                                   ', N'12345                                             ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693277594/vritkpdsmtyle4rdrg3i.png')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4003, N'dasd                                              ', N'dasdsad                                           ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693280188/nfyx2zi3f3gzkfz6ncja.webp')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4004, N'taiu                                              ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693280559/w9xsmdkqnsb6lzzbrv9w.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4005, N'dáds                                              ', N'dasd                                              ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693280631/lrimvgd8g2gryqrbwur6.webp')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4006, N'hehe                                              ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693280890/awhmxkytyzkmsrkpyhuz.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4007, N'hehe                                              ', N'213                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693281004/pk2mh3law7yotpu66cua.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4008, N'hehe                                              ', N'213213                                            ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693281035/mrdtloeahfcc06pgndep.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4009, N'tai                                               ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693281402/xzoglivpagrtcvucoiae.webp')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4010, N'tai                                               ', N'1                                                 ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693281481/xhns8awtropmvwkz1fuf.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4011, N'ta                                                ', N'1                                                 ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693281605/zs5thugsf6dpku4ex5il.webp')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4012, N'tai                                               ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693281714/zeb6msqeyfkxtbcyrosq.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4013, N'tai                                               ', N'1                                                 ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693281849/zz3bavzbuqdpuq2ffpiq.webp')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4014, N'tai                                               ', N'1                                                 ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693281957/s300ffomalokp98uu46l.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4015, N'tai                                               ', N'1                                                 ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693282003/lyw4wzuyluhgchaqri8s.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (4016, N'tai                                               ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693282086/lxaf3qvu5nidh7aouedb.webp')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (5002, N'tai                                               ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693283401/ffgepsfpyshjdiddxixi.jpg')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (5003, N'tai                                               ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693283597/cbtscaxcwd5no55le6qq.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (5004, N'tai                                               ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693283836/r5jjv8w7elqykvd5xsdt.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (6002, N'tai                                               ', N'12323                                             ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693317229/uifykomgvvymsy1rharc.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (6003, N'sy                                                ', N'213                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693317276/culoejiguud14zgp08aj.webp')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (6004, N'hehe                                              ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693317439/xhqykutgmebfzjl8ksqc.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (6005, N'con cho nay                                       ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693319001/e7dkugbbe7e9ddelhbff.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (7002, N'caiqqjv                                           ', N'123                                               ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693320938/npzy847gorhns0mrp1s0.gif')
INSERT [dbo].[User] ([id], [name], [password], [role], [avatar]) VALUES (8002, N'kkk                                               ', N'1                                                 ', N'user                                              ', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1693327261/p2dkro6yeacvkzievwar.gif')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
USE [master]
GO
ALTER DATABASE [restaurant] SET  READ_WRITE 
GO
