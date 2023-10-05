USE [codefirst]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Avatar] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Mobile] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Avatar] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuCategory]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_MenuCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuEntity]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuEntity](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_MenuEntity] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderMenu]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderMenu](
	[OrderMenuId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NULL,
	[MenuId] [int] NULL,
 CONSTRAINT [PK_OrderMenu] PRIMARY KEY CLUSTERED 
(
	[OrderMenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceCategory]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_ServiceCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceEntity]    Script Date: 10/5/2023 4:55:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceEntity](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_ServiceEntity] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916025554_InitialDatabaseSetup', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916032941_IdentityTables', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916040113_AddNewInforUser', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917081630_updateEmpployee', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917182910_addAvatarUser', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230918153322_addBranch', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230918153546_addAvatarEmployee', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230918154111_upBranch', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230919012557_initServiceCategories', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230919012737_initServiceEntity', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230919012857_updateNotNullServiceEntity', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230919013348_updatePriceDescriptionServiceEntity', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230919014145_updateFkNullServiceEntity', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230919014638_updateService', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230922135930_addTableMenuCategory', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230922140039_addTableMenu', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230926033853_imgTableMenu', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005054412_initTableInvoice', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005054744_initTableOrderMenu', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005092554_changeUserIdTableInvoice', N'7.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'19bd9499-008b-483a-b52b-9596f89e04fc', N'employee', N'EMPLOYEE', N'b422d3c1-1af3-467a-baaa-e35e421f5066')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8', N'user', N'USER', N'38dadd99-4d95-44f1-abd3-5114a1c5d9ba')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c892040c-ec2f-44bc-a528-cddf39d00fb9', N'administrator system', N'ADMINISTRATOR SYSTEM', N'74853aa2-43bc-4ff8-ae28-e20034ef1109')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80', N'admin', N'ADMIN', N'fcb67cba-6bba-4a15-ae8c-1c0b1c8e8cff')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Facebook', N'1982040665498167', N'Facebook', N'fa3cca06-fba5-48a1-a7e0-4fb9d5b54594')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'114602856931692523135', N'Google', N'6b4e19e6-2fb4-43ee-b5f0-3c812672a264')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'115108247015046199411', N'Google', N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3', N'c892040c-ec2f-44bc-a528-cddf39d00fb9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0f7174f5-348a-4977-947f-343ec34b40d9', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'111ae82a-7ef0-4811-a785-17d6becfe7f4', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'134aee95-2798-492f-9656-74efa598389f', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1749679f-ba46-4779-af57-23b10df21cb5', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2417089b-5a07-41a8-bd0e-45f5bc23a8ee', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3593bd1e-9163-4d28-b015-a8605ac0ac96', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'520e6312-5711-4b79-ac32-35eb2fdb81b5', N'c892040c-ec2f-44bc-a528-cddf39d00fb9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5fb26114-c66f-4721-9100-36acafdc19c7', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6b4e19e6-2fb4-43ee-b5f0-3c812672a264', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'78ad864d-58bc-4e49-b4c3-a9aa73f9ffd0', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'825f8cfe-5f33-457f-9a3e-3f2e38c014a8', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'825f8cfe-5f33-457f-9a3e-3f2e38c014a8', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'84c6fb6b-461e-4d21-aa9d-afff282d8b51', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8b9f3679-46b8-4026-ac01-f89642b1bcd9', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'923b6be5-5c9f-4f44-aaad-9b3e4a60d9e6', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9a21330f-861b-4f5f-b093-3415cf74c5a5', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a2d81466-5d00-456f-955b-b80273835919', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ca0cb6e1-f7ea-429e-896c-ea1cfd3410ab', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd1a51fae-75d4-4f39-82c8-4556335da92b', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd7966791-1677-4608-9ad8-464ce49b152d', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dba2ac8a-8a40-4fdc-af68-1fdf0b3c39aa', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e05483da-00cc-4e76-a987-e07b9a354802', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fa3cca06-fba5-48a1-a7e0-4fb9d5b54594', N'c892040c-ec2f-44bc-a528-cddf39d00fb9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fc1f5777-0aa8-4e20-920a-a048e2eb4c1c', N'c892040c-ec2f-44bc-a528-cddf39d00fb9')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'06864e92-11bd-49fd-af39-50de16beadb4', N'codefirst@gmail.com', N'CODEFIRST@GMAIL.COM', N'codefirst@gmail.com', N'CODEFIRST@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAENXdMc/o1/V4A8fxhJNZyVcr9R9LePuMOPSZ417gzK1pjsP3oFD+Z3m5st+x29pmCg==', N'TEOHBSA7CIDTH55BPYLBVTBBXZWSQMW7', N'77159b03-d484-4aa6-83d0-ed94ab851073', NULL, 0, 0, NULL, 1, 0, N'', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3', N'adminsystem@gmail.com', N'ADMINSYSTEM@GMAIL.COM', N'adminsystem@gmail.com', N'ADMINSYSTEM@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAVKsb/MY1Fr3UWxsx6gHpyaDhjAJBYScaLFgf6oJw3xFK+h6khWlD+44hxk8DfKeQ==', N'PGVPCMY5K26W6QCUPIXAZKVGO4GWDCYO', N'55aeb870-34e1-472a-9775-ca6aa170c8b5', N'0795896039', 0, 1, NULL, 1, 0, N'ApplicationUser', N'quản trị', N'hệ thống', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695035502/08f3f05d-b266-4c3e-99b4-12c0d926a8d3_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'0f7174f5-348a-4977-947f-343ec34b40d9', N'ronaldo@yahoo.com', N'RONALDO@YAHOO.COM', N'ronaldo@gmail.com', N'RONALDO@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEN76jA2q7L7WALjq9hQJYUyWF2kF61e5UDGAxm/k+S++WTf26HvDcRXpgh0MmiFN2g==', N'T2D7TU7A672EVFLJWNTMFVTDIK2P3WXQ', N'7bc46ef3-dd77-46ef-a460-ca3cefcd4a88', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'ronando', N'critiano', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695013819/0f7174f5-348a-4977-947f-343ec34b40d9_profile_picture.png')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'111ae82a-7ef0-4811-a785-17d6becfe7f4', N'nhanvienlancuoi@gmail.com', N'NHANVIENLANCUOI@GMAIL.COM', N'nhanvienlancuoi@gmail.com', N'NHANVIENLANCUOI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKEVE6Aazezby+JOIatKkI18bRMiJvuEu/OgLLnGBGdxKh+jtQirHhLWI9CcZMTrPw==', N'BSX3T7BETOJWY2IM2MTJWB7ZZXZNP7MR', N'4469b842-a349-44d0-a6d4-d977ddc37aac', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'met', N'moi', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'134aee95-2798-492f-9656-74efa598389f', N'avatar@gmail.com', N'AVATAR@GMAIL.COM', N'avatar@gmail.com', N'AVATAR@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGBTP2QdDy618FEDeEpHLh8NiP9U5D52gpbJKleBzOz3RU4BbcIVnPG/7uthuy/nkg==', N'WBL4YIHGNJAYYLUVSNZFBBAL4MTT2NZW', N'd2169ee9-664f-411b-bf67-a40176a0a42c', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'string', N'string', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695013819/0f7174f5-348a-4977-947f-343ec34b40d9_profile_picture.png')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'1749679f-ba46-4779-af57-23b10df21cb5', N'user2@yahoo.com', N'USER2@YAHOO.COM', N'user2@gmail.com', N'USER2@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJGcYz9nWh4JBKw7MdmwS62uuoAilnlKaBQ2uf2PqXRWrsdHaEp7iabgc3Bjk4bwEA==', N'Y7C5MCSENFWZOOBUTFWMJFOIGYDDJL5V', N'e5689308-f2ad-4b57-8049-8d3635124542', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'nguoi', N'dung2', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695012850/1749679f-ba46-4779-af57-23b10df21cb5_profile_picture.png')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'2417089b-5a07-41a8-bd0e-45f5bc23a8ee', N'employeeweb@gmail.com', N'EMPLOYEEWEB@GMAIL.COM', N'employeeweb@gmail.com', N'EMPLOYEEWEB@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECQCj5daK0G37STCvtdFkJDgmAXpRDz4PvDCtKdSWWilbCprTngr4ARJwb9SUfdNDg==', N'3JM3QRVMZITOUJMA4ZE7MTPEXGGWNFFD', N'dfd94e32-5f15-4f1f-a3cb-d8f1626c9682', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'nhan', N'vien', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'3593bd1e-9163-4d28-b015-a8605ac0ac96', N'metnha@gmail.com', N'METNHA@GMAIL.COM', N'metnha@gmail.com', N'METNHA@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEFRmIPMHy7x0iySRf86MEWaxgV6ACEXjAOObw7yY9WWiBSGBFt2rS5uE475QQ5L6OQ==', N'QAZ5KRACUVAXGEE7QVLJGZ7OBE4VAZZG', N'79f5bda4-121a-4065-a119-44a477a8f036', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'string', N'string', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695013819/0f7174f5-348a-4977-947f-343ec34b40d9_profile_picture.png')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'3a6bc1f6-b606-4161-a461-6ad65de858da', N'metmoithatsu@gmail.com', N'METMOITHATSU@GMAIL.COM', N'metmoithatsu@gmail.com', N'METMOITHATSU@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPfb+hDZWF48zj+OYYREJ91yoT9zoDMcIGf1WpfLAqjMzyswellQaMr6uGY+RdHPxQ==', N'RMOHVFBUNV3IS7BJOE2QKXPGGCBEZHHK', N'13712332-7965-4ed4-9c28-ed29450e5efa', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'metmoi', N'that su', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695880189/3a6bc1f6-b606-4161-a461-6ad65de858da_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'520e6312-5711-4b79-ac32-35eb2fdb81b5', N'administrator@yahoo.com.vn', N'ADMINISTRATOR@YAHOO.COM.VN', N'administrator@yahoo.com.vn', N'ADMINISTRATOR@YAHOO.COM.VN', 1, N'AQAAAAEAACcQAAAAECUuINEhkMj56QwYMFnAxBGzwsyJroYEN9wk0oa5Pusgx9YJ7kbGwP7ZzvbLNw57Gw==', N'F6CHPAQZUVWKBLHIEL7PIE7CEY6YM5WL', N'2c8a1a49-e52f-43e7-a2b2-fa23c0c473a7', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'quan tri', N'he thong', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695192545/520e6312-5711-4b79-ac32-35eb2fdb81b5_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'5fb26114-c66f-4721-9100-36acafdc19c7', N'user@yahoo.com', N'USER@YAHOO.COM', N'user@yahoo.com', N'USER@YAHOO.COM', 1, N'AQAAAAEAACcQAAAAEISr7yUMaA5IcLKPHFk1kpTfld/l8hn/GbTaoZYYw/G7r/11M9tiyp/VJydNTZFNWw==', N'CXBUFRLS2A2BJZQQZ7IPCUPCUQCZHFDS', N'fd05d6ed-21ef-488b-a579-39f44285c207', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'tao', N'user', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'6b4e19e6-2fb4-43ee-b5f0-3c812672a264', N'2051012102tai@ou.edu.vn', N'2051012102TAI@OU.EDU.VN', N'2051012102tai@ou.edu.vn', N'2051012102TAI@OU.EDU.VN', 1, NULL, N'YZUPU727CDCF36M2QU4UAQEGRKJAIMKS', N'373f413d-54c8-41ef-9682-8bde3c3871ce', N'2405', 0, 0, NULL, 1, 0, N'ApplicationUser', N'minh', N'tai', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695198020/6b4e19e6-2fb4-43ee-b5f0-3c812672a264_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'78ad864d-58bc-4e49-b4c3-a9aa73f9ffd0', N'masteryi@yahoo.com', N'MASTERYI@YAHOO.COM', N'masteryi@yahoo.com', N'MASTERYI@YAHOO.COM', 0, N'AQAAAAEAACcQAAAAEHvE7OK9y00YanWo5EL8bAhJqVJ2yYM+3Ytg2aAOROKgJGedv0agIb/1uQmPMtPACA==', N'XJC5VXB3GFZQVRIHGYLCL6RBX7V33PXL', N'ac741faf-6d5b-44ab-a77e-814fbdab145c', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'yi', N'master', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'825f8cfe-5f33-457f-9a3e-3f2e38c014a8', N'roleadmin@gmail.com', N'ROLEADMIN@GMAIL.COM', N'roleadmin@gmail.com', N'ROLEADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMdkzTojEXHC++xMfaBS+34FJTqqD9QdJ/GU27N33prlAKUmHlIjFusCJV7hmkaDxA==', N'B65NDV5A4HHJG7VIJYQILUVLSSXQC4OI', N'ff31f22c-bd61-406d-8ef2-21c01c551782', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'admin', N'admin', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695019890/825f8cfe-5f33-457f-9a3e-3f2e38c014a8_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'84c6fb6b-461e-4d21-aa9d-afff282d8b51', N'nhanvien1@gmail.com', N'NHANVIEN1@GMAIL.COM', N'nhanvien1@gmail.com', N'NHANVIEN1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENTmV5JeKfm02kEO8t7GXerTmNF+9re3ZC0hAbEHWsOkBKB6UWUxf5jrJCWylAksfA==', N'A3YWU24MYTBWVSY6KFZWAUG5QBS2GWGY', N'55b7647e-dfc3-4ad9-a310-1a81430cc089', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'gaooo', N'siu nhan', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'8b9f3679-46b8-4026-ac01-f89642b1bcd9', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHLoULOikK7KfkFrv/vS9nMp5LgZqCuXQAQieIZ4saVON66bNAwnEUvxLe33fauP+w==', N'7USQ7IRS6PI5ZNKKJXOQFOFMTDKG4KX2', N'74705825-84af-4aac-b351-06c19ad17982', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'admin', N'admin', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'923b6be5-5c9f-4f44-aaad-9b3e4a60d9e6', N'testuser@facebook.com', N'TESTUSER@FACEBOOK.COM', N'testuser@facebook.com', N'TESTUSER@FACEBOOK.COM', 1, N'AQAAAAEAACcQAAAAEFz1jF6/jvA6WVmiTXC6tvlTwl5tFzpqd7Zvm3b3777kY1e2JTUnQ/h1PAdh7sI/jA==', N'BR35B47E4UP2ARL4WF5HE7VBFD7VNISA', N'0c6e3408-879b-4e7e-9ec7-16e73d78e43a', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'test', N'user', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695193246/923b6be5-5c9f-4f44-aaad-9b3e4a60d9e6_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'9a21330f-861b-4f5f-b093-3415cf74c5a5', N'taihaha@gmail.com', N'TAIHAHA@GMAIL.COM', N'taihaha@gmail.com', N'TAIHAHA@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDYjvA7zXdIOknVknUZn/uMAa8ORrUvVY5v3sou2lalfgPV4nBSUT3E/UHsfFq9MCQ==', N'S252LRIBB6VY3NIRYTE5V6MVXP7YKQWQ', N'b4c110ef-689c-4bfb-9c9e-7fd11e709e4f', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'tai', N'tai', N'string')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'a2d81466-5d00-456f-955b-b80273835919', N'laptrinhduide@gmail.com', N'LAPTRINHDUIDE@GMAIL.COM', N'laptrinhduide@gmail.com', N'LAPTRINHDUIDE@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGkaGgQvCqHb82ZZiz0UPAp0EHhpVmDP48xjzNNBGwYkeOLb7Y6Z9BdVt2QZ4rdFGQ==', N'PVSSE7RC4IHROBP5KQ3ZP4NOUL3FADPX', N'35cd60a4-8876-4a4f-8d38-ad3a53f4039e', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'da', N'dahs', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695006212/a2d81466-5d00-456f-955b-b80273835919_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'ca0cb6e1-f7ea-429e-896c-ea1cfd3410ab', N'nhienviennha@gmail.com', N'NHIENVIENNHA@GMAIL.COM', N'nhienviennha@gmail.com', N'NHIENVIENNHA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAED4DTrU2K8gJnMbXdJhCyzExe/asvE3S8QDe87G77O4KwAWHwDxdNg90eBPhEIzbKQ==', N'AMBJRC7EZCIWOZYFPWDNOAZUE2ZBCT6P', N'51ef431d-31d8-40d9-9e3a-2cd610b6ff0a', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'adasd', N'dasda', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'd1a51fae-75d4-4f39-82c8-4556335da92b', N'user@example.com', N'USER@EXAMPLE.COM', N'user@example.com', N'USER@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEDVJK2fbe21qaNnATWFp0u5obGdbYRMjbRjugtejljwaMnRrtnIokH3OsdnN9BtDqA==', N'XWEQX6XXLR5QIQS6CCGM4YTXVOK3QNV4', N'7e905b5a-cc24-4821-8961-ead9b52d4e80', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'string', N'string', N'string')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'd7966791-1677-4608-9ad8-464ce49b152d', N'minhtai0524@gmail.com', N'MINHTAI0524@GMAIL.COM', N'minhtai0524@gmail.com', N'MINHTAI0524@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECiishqe3sYgw6JAnvyAOUeH/aPGm26ZI5S+GqgQ1GqAwZ/eEjnYUdKwT7BJ6/s/TQ==', N'OUMDTYEWWMI46NYBAPGQ5QOXXIL2YQPR', N'bc1865b6-405d-4ccf-8a74-729d99084530', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'tai', N'minh', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695149455/d7966791-1677-4608-9ad8-464ce49b152d_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'dba2ac8a-8a40-4fdc-af68-1fdf0b3c39aa', N'reactjs@yahoo.com', N'REACTJS@YAHOO.COM', N'reactjs@yahoo.com', N'REACTJS@YAHOO.COM', 1, N'AQAAAAEAACcQAAAAEOxVGTavStrlsT7S3HRz3HZpZ0NEjGOqQShpk05iCnIh1K0ULGsYCRbcXMPSxtWGVg==', N'4PHULX54BUDXXJLW47GUW63LNULUVFI3', N'd64d1698-2b99-4afd-aea4-32d039e75c1c', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'react', N'js', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695892075/b1uec9teopr3q6xvc8u4.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'dc92ff17-a060-42d5-9816-6e7db331266e', N'taiusoicane@gmail.com', N'TAIUSOICANE@GMAIL.COM', N'taiusoicane@gmail.com', N'TAIUSOICANE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEP3u9cjU32kv/vbxt6bvcNIULrxhpkB9WfpF1AJxUiR3bVJhw8evbyI8YW5vGbmttg==', N'ROICZTJ3ND55CLV5E4VPJTREA2NCTIW7', N'6b0e979b-3e47-417f-9f08-7acdb253fffe', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'taiusoicane', N'minhtai', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'e05483da-00cc-4e76-a987-e07b9a354802', N'tai@yahoo.com', N'TAI@YAHOO.COM', N'tai@yahoo.com', N'TAI@YAHOO.COM', 0, N'AQAAAAEAACcQAAAAEHPA6EwzJ//lCVswyYbaLzlrqXA82/6/LW2s3N8BAv+ENAKiZb3A0uxPAPr3nVumMA==', N'TJMXCAK3ME22VVZQNHPOCRDR5MR2MQGJ', N'3fb2ab0e-b781-42cd-ac97-949efeeafb30', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'tai', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'e82addd3-05ce-4891-a1a1-119caa481b0f', N'mt2405@gmail.com', N'MT2405@GMAIL.COM', N'mt2405@gmail.com', N'MT2405@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAW3BMF0j6f5+OrUK7SZxfQzl1xIxm68zlKkQ8eAysCCs5Ge79Fn24MJleUrko0efg==', N'KTKHAVKONLJIX3IMQD5P4R3I4GDIHAEM', N'72c6f292-af8c-43b8-8019-bbf5c70f9b5f', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'minh', N'tai', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'fa3cca06-fba5-48a1-a7e0-4fb9d5b54594', N'nguyentai24052002@gmail.com', N'NGUYENTAI24052002@GMAIL.COM', N'nguyentai24052002@gmail.com', N'NGUYENTAI24052002@GMAIL.COM', 1, NULL, N'TAJSP6QEEHVJP3YYH6UNSDTV5KBYQUFP', N'239a0fe6-b3c5-4f00-a3a4-4a2ebc8fcb3e', N'123', 0, 0, NULL, 1, 0, N'ApplicationUser', N'minh', N'tai', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695357458/fa3cca06-fba5-48a1-a7e0-4fb9d5b54594_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'fc1f5777-0aa8-4e20-920a-a048e2eb4c1c', N'lytiulong@gmail.com', N'LYTIULONG@GMAIL.COM', N'lytiulong@gmail.com', N'LYTIULONG@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPWi+uxrqwjA0FrXiXuzM4ohyOoGPS51GgHocFHLxEG/H/9PoPmjasrvNGyWOE1tcA==', N'2TMLDQNH4BWNPQK4EKYN4LQZ5VTHP7TT', N'16336d7b-40d3-4a57-9147-3e1d661bc5b5', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Lý', N'Long', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695020410/fc1f5777-0aa8-4e20-920a-a048e2eb4c1c_profile_picture.jpg')
GO
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3', N'[AspNetUserStore]', N'AuthenticatorKey', N'DXCEHXIG4K7LUNXOPIM5JZUOYQEEIDHQ')
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3', N'[AspNetUserStore]', N'RecoveryCodes', N'c3bae430;b33ead73;a79ce501;961438c8;e2a4043f;d6c80176;aa9e8793;2088799a;21af989b;eac0b84f')
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Mobile], [Email], [Address], [Avatar]) VALUES (1, N'lee', N'sin', N'0123123', N'bacthaysongam@gmail.com', N'', N'')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([InvoiceID], [UserId]) VALUES (11, N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3')
INSERT [dbo].[Invoice] ([InvoiceID], [UserId]) VALUES (13, N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3')
INSERT [dbo].[Invoice] ([InvoiceID], [UserId]) VALUES (14, N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3')
INSERT [dbo].[Invoice] ([InvoiceID], [UserId]) VALUES (16, N'78ad864d-58bc-4e49-b4c3-a9aa73f9ffd0')
INSERT [dbo].[Invoice] ([InvoiceID], [UserId]) VALUES (17, N'78ad864d-58bc-4e49-b4c3-a9aa73f9ffd0')
INSERT [dbo].[Invoice] ([InvoiceID], [UserId]) VALUES (18, N'78ad864d-58bc-4e49-b4c3-a9aa73f9ffd0')
INSERT [dbo].[Invoice] ([InvoiceID], [UserId]) VALUES (19, N'dba2ac8a-8a40-4fdc-af68-1fdf0b3c39aa')
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuCategory] ON 

INSERT [dbo].[MenuCategory] ([CategoryId], [Name], [Description]) VALUES (1, N'món khai vị', N'ngon')
INSERT [dbo].[MenuCategory] ([CategoryId], [Name], [Description]) VALUES (2, N'món chính', N'no lắm nha')
INSERT [dbo].[MenuCategory] ([CategoryId], [Name], [Description]) VALUES (1002, N'món tráng miệng', N'ngon')
SET IDENTITY_INSERT [dbo].[MenuCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuEntity] ON 

INSERT [dbo].[MenuEntity] ([MenuId], [Name], [Price], [Description], [CategoryId], [Image]) VALUES (1, N'gỏi ngó sen', 1500000, N'chua chua ngọt ngọt', 1, N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695786090/axxdbjh43rgdhpf7psrh.jpg')
INSERT [dbo].[MenuEntity] ([MenuId], [Name], [Price], [Description], [CategoryId], [Image]) VALUES (2, N'gà nướng muối ớt', 200000, N'cay the the', 2, N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695780160/iabwci36lwdkknyoq8wp.webp')
INSERT [dbo].[MenuEntity] ([MenuId], [Name], [Price], [Description], [CategoryId], [Image]) VALUES (3, N'gỏi tôm với cổ hủ dừa', 18000, N'dòn dòn', 1, N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695780331/wjekau3rbzkclqf9pf2m.jpg')
INSERT [dbo].[MenuEntity] ([MenuId], [Name], [Price], [Description], [CategoryId], [Image]) VALUES (4, N'gà bó xôi', 20000, N'mềm chiên dòn', 1, N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695779804/ixwrxvecrmhhxylcfz24.jpg')
INSERT [dbo].[MenuEntity] ([MenuId], [Name], [Price], [Description], [CategoryId], [Image]) VALUES (2002, N'tàu hủ nước đường', 20000, N'ngọt ngọt có gừng', 1002, N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695779822/se1vxj5xk7wahyejmrse.jpg')
INSERT [dbo].[MenuEntity] ([MenuId], [Name], [Price], [Description], [CategoryId], [Image]) VALUES (3002, N'lẩu thái chua cay', 200000, N'chua chua cay cay', 2, N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695700316/cnqfdr3ztcb9hgxy29j5.jpg')
SET IDENTITY_INSERT [dbo].[MenuEntity] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderMenu] ON 

INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (16, 11, 1)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (17, 11, 2)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (18, 11, 3)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (19, 13, 3002)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (20, 13, 2002)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (21, 14, 1)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (22, 14, 2)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (23, 16, 1)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (24, 16, 2)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (25, 17, 2002)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (26, 17, 3002)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (27, 18, 1)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (28, 18, 2)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (29, 19, 1)
INSERT [dbo].[OrderMenu] ([OrderMenuId], [InvoiceID], [MenuId]) VALUES (30, 19, 2)
SET IDENTITY_INSERT [dbo].[OrderMenu] OFF
GO
SET IDENTITY_INSERT [dbo].[ServiceCategory] ON 

INSERT [dbo].[ServiceCategory] ([CategoryId], [Name], [Description]) VALUES (1002, N'mon trang mieng', N'133')
SET IDENTITY_INSERT [dbo].[ServiceCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[ServiceEntity] ON 

INSERT [dbo].[ServiceEntity] ([ServiceId], [Name], [CategoryId], [Description], [Price]) VALUES (3, N'3123', 1002, N'3123123', 3123)
SET IDENTITY_INSERT [dbo].[ServiceEntity] OFF
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Branch] ADD  DEFAULT (N'') FOR [Description]
GO
ALTER TABLE [dbo].[Employee] ADD  DEFAULT (N'') FOR [Address]
GO
ALTER TABLE [dbo].[Employee] ADD  DEFAULT (N'') FOR [Avatar]
GO
ALTER TABLE [dbo].[MenuEntity] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[MenuEntity] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Price]
GO
ALTER TABLE [dbo].[ServiceEntity] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[MenuEntity]  WITH CHECK ADD  CONSTRAINT [FK_MenuEntity_MenuCategory_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[MenuCategory] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuEntity] CHECK CONSTRAINT [FK_MenuEntity_MenuCategory_CategoryId]
GO
ALTER TABLE [dbo].[OrderMenu]  WITH CHECK ADD  CONSTRAINT [FK_OrderMenu_Invoice_InvoiceID] FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[Invoice] ([InvoiceID])
GO
ALTER TABLE [dbo].[OrderMenu] CHECK CONSTRAINT [FK_OrderMenu_Invoice_InvoiceID]
GO
ALTER TABLE [dbo].[OrderMenu]  WITH CHECK ADD  CONSTRAINT [FK_OrderMenu_MenuEntity_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[MenuEntity] ([MenuId])
GO
ALTER TABLE [dbo].[OrderMenu] CHECK CONSTRAINT [FK_OrderMenu_MenuEntity_MenuId]
GO
ALTER TABLE [dbo].[ServiceEntity]  WITH CHECK ADD  CONSTRAINT [FK_ServiceEntity_ServiceCategory_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ServiceCategory] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServiceEntity] CHECK CONSTRAINT [FK_ServiceEntity_ServiceCategory_CategoryId]
GO
