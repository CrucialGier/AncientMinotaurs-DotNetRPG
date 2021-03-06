USE [master]
GO
/****** Object:  Database [AncientMinotaurs]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE DATABASE [AncientMinotaurs]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AncientMinotaurs', FILENAME = N'C:\Users\epicodus\AncientMinotaurs.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AncientMinotaurs_log', FILENAME = N'C:\Users\epicodus\AncientMinotaurs_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AncientMinotaurs] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AncientMinotaurs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AncientMinotaurs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET ARITHABORT OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AncientMinotaurs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AncientMinotaurs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AncientMinotaurs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AncientMinotaurs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AncientMinotaurs] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AncientMinotaurs] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AncientMinotaurs] SET  MULTI_USER 
GO
ALTER DATABASE [AncientMinotaurs] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AncientMinotaurs] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AncientMinotaurs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AncientMinotaurs] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AncientMinotaurs] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AncientMinotaurs] SET QUERY_STORE = OFF
GO
USE [AncientMinotaurs]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [AncientMinotaurs]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/15/2016 4:24:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/15/2016 4:24:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Characters]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Characters](
	[CharacterId] [int] IDENTITY(1,1) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[Damage] [int] NOT NULL,
	[Experience] [int] NOT NULL,
	[Health] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[RoomId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Items]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loots]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loots](
	[LootId] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
 CONSTRAINT [PK_Loots] PRIMARY KEY CLUSTERED 
(
	[LootId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Monsters]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monsters](
	[MonsterId] [int] IDENTITY(1,1) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[Damage] [int] NOT NULL,
	[Health] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[RoomId] [int] NOT NULL,
 CONSTRAINT [PK_Monsters] PRIMARY KEY CLUSTERED 
(
	[MonsterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pathways]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pathways](
	[PathwayId] [int] NOT NULL,
	[StartId] [int] NOT NULL,
	[EndId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Treasures]    Script Date: 9/15/2016 4:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Treasures](
	[TreasureId] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[RoomId] [int] NOT NULL,
 CONSTRAINT [PK_Treasures] PRIMARY KEY CLUSTERED 
(
	[TreasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160914170544_initial', N'1.0.0-rtm-21431')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'75c03595-f0eb-4d21-9537-5dee552a5e38', 0, N'056d7211-84df-464b-8cf2-55dcbacf6a97', NULL, 0, 1, NULL, NULL, N'REKTGUY42', N'AQAAAAEAACcQAAAAEL8ACQAPbPAnotiGNcgigo5zHe9PWWG0RM1/vlAqQDwzBz5QCiTQYk/SO9uFQaTpvA==', NULL, 0, N'774981b2-be08-4586-99ec-6b228c940fc5', 0, N'RektGuy42')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'fb55ab98-c607-4dda-9d71-8d02fb604b8d', 0, N'ec721f5f-3232-4a5e-b991-a35cbe277333', NULL, 0, 1, NULL, NULL, N'MASTERBLASTER5000', N'AQAAAAEAACcQAAAAEMSiVnn7+h+89EOvgt8VC5wZntFpKwJInHJtGUx1HzM2lPK3ijnsE68hIUvGp1ZeGw==', NULL, 0, N'bf5042d2-5ec0-4ff1-bf15-6333800a84cb', 0, N'MasterBlaster5000')
SET IDENTITY_INSERT [dbo].[Characters] ON 

INSERT [dbo].[Characters] ([CharacterId], [Avatar], [Damage], [Experience], [Health], [Name], [RoomId], [UserId]) VALUES (3, N'http://www.cornel1801.com/animated/Life-and-Adventures-of-Santa-Claus-2000/characters/Santa-Claus.jpg', 10, 0, 100, N'Santa Claws', 5, N'fb55ab98-c607-4dda-9d71-8d02fb604b8d')
SET IDENTITY_INSERT [dbo].[Characters] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([ItemId], [ItemName]) VALUES (1, N'Fish Bones')
INSERT [dbo].[Items] ([ItemId], [ItemName]) VALUES (2, N'Bar Pretzels')
INSERT [dbo].[Items] ([ItemId], [ItemName]) VALUES (3, N'Bad Mittens')
INSERT [dbo].[Items] ([ItemId], [ItemName]) VALUES (4, N'Thumb Tacks')
INSERT [dbo].[Items] ([ItemId], [ItemName]) VALUES (5, N'Hat (for head)')
INSERT [dbo].[Items] ([ItemId], [ItemName]) VALUES (6, N'Trinket')
INSERT [dbo].[Items] ([ItemId], [ItemName]) VALUES (7, N'Mysterious Pendant =O')
INSERT [dbo].[Items] ([ItemId], [ItemName]) VALUES (8, N'Crafting Materials')
INSERT [dbo].[Items] ([ItemId], [ItemName]) VALUES (9, N'Normal Boots')
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[Loots] ON 

INSERT [dbo].[Loots] ([LootId], [CharacterId], [ItemId]) VALUES (5, 3, 3)
INSERT [dbo].[Loots] ([LootId], [CharacterId], [ItemId]) VALUES (7, 3, 6)
SET IDENTITY_INSERT [dbo].[Loots] OFF
SET IDENTITY_INSERT [dbo].[Monsters] ON 

INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (1, N'http://ourcommunityroots.com/wp-content/uploads/2010/03/0135.jpg', 20, 40, N'Kevin', 4)
INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (2, N'http://rs237.pbsrc.com/albums/ff27/maipen/jumping-spider-eyes-9.jpg~c200', 2, 10, N'Pete', 1)
INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (4, N'http://rs237.pbsrc.com/albums/ff27/maipen/jumping-spider-eyes-9.jpg~c200', 2, 200, N'Pete', 1)
INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (7, N'http://images.frightprops.com/media/catalog/product/cache/1/small_image/200x200/9df78eab33525d08d6e5fb8d27136e95/c/r/cry-baby-mask.jpg', 25, 30, N'Sami', 4)
INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (8, N'http://ourcommunityroots.com/wp-content/uploads/2010/03/0135.jpg', 20, 50, N'Kevin', 4)
INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (9, N'http://ourcommunityroots.com/wp-content/uploads/2010/03/0135.jpg', 20, 50, N'Kevin', 4)
INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (10, N'http://rs237.pbsrc.com/albums/ff27/maipen/jumping-spider-eyes-9.jpg~c200', 2, 200, N'Pete', 4)
INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (11, N'http://rs237.pbsrc.com/albums/ff27/maipen/jumping-spider-eyes-9.jpg~c200', 2, 200, N'Pete', 4)
INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (12, N'http://rs237.pbsrc.com/albums/ff27/maipen/jumping-spider-eyes-9.jpg~c200', 2, 200, N'Pete', 4)
INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (13, N'http://rs237.pbsrc.com/albums/ff27/maipen/jumping-spider-eyes-9.jpg~c200', 2, 200, N'Pete', 4)
INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (14, N'http://rs237.pbsrc.com/albums/ff27/maipen/jumping-spider-eyes-9.jpg~c200', 2, 200, N'Pete', 4)
INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (16, N'http://rs237.pbsrc.com/albums/ff27/maipen/jumping-spider-eyes-9.jpg~c200', 2, 200, N'Pete', 3)
INSERT [dbo].[Monsters] ([MonsterId], [Avatar], [Damage], [Health], [Name], [RoomId]) VALUES (17, N'http://www.vagallery.com/uploads/2/5/9/7/2597378/548974759.jpg', 0, 99999, N'Sanity', 5)
SET IDENTITY_INSERT [dbo].[Monsters] OFF
INSERT [dbo].[Pathways] ([PathwayId], [StartId], [EndId]) VALUES (1, 3, 2)
INSERT [dbo].[Pathways] ([PathwayId], [StartId], [EndId]) VALUES (2, 3, 7)
INSERT [dbo].[Pathways] ([PathwayId], [StartId], [EndId]) VALUES (3, 2, 1)
INSERT [dbo].[Pathways] ([PathwayId], [StartId], [EndId]) VALUES (4, 2, 3)
INSERT [dbo].[Pathways] ([PathwayId], [StartId], [EndId]) VALUES (5, 2, 4)
INSERT [dbo].[Pathways] ([PathwayId], [StartId], [EndId]) VALUES (6, 4, 2)
INSERT [dbo].[Pathways] ([PathwayId], [StartId], [EndId]) VALUES (7, 1, 2)
INSERT [dbo].[Pathways] ([PathwayId], [StartId], [EndId]) VALUES (8, 3, 9)
INSERT [dbo].[Pathways] ([PathwayId], [StartId], [EndId]) VALUES (9, 9, 3)
INSERT [dbo].[Pathways] ([PathwayId], [StartId], [EndId]) VALUES (10, 9, 5)
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([RoomId], [Description], [Image]) VALUES (1, N'Starting Tavern', N'https://b.zmtcdn.com/data/pictures/0/16571910/0832c64cb3a3879a3522a040d382314c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B*%2C*')
INSERT [dbo].[Rooms] ([RoomId], [Description], [Image]) VALUES (2, N'Street By StartingTavern', N'http://images.freeimages.com/images/premium/large-thumbs/4215/42150930-old-european-street-houses-and-buildings-hand-drawing-sketch.jpg')
INSERT [dbo].[Rooms] ([RoomId], [Description], [Image]) VALUES (3, N'The School', N'http://images.all-free-download.com/images/graphicthumb/beautiful_cute_children_playing_in_class_room_vector_drawing_illustration_567265.jpg')
INSERT [dbo].[Rooms] ([RoomId], [Description], [Image]) VALUES (4, N'Streets of Hell', N'http://rs101.pbsrc.com/albums/m62/ravishrocks/hell1mile.jpg~c200')
INSERT [dbo].[Rooms] ([RoomId], [Description], [Image]) VALUES (5, N'...', N'http://awonderfulblog.com/wp-content/uploads/2011/10/Screen-Shot-2011-09-30-at-11.55.16-AM.jpg')
INSERT [dbo].[Rooms] ([RoomId], [Description], [Image]) VALUES (6, N'Lighthouse', N'https://s-media-cache-ak0.pinimg.com/236x/92/00/5b/92005b3b98761cde943e895036f6e63d.jpg')
INSERT [dbo].[Rooms] ([RoomId], [Description], [Image]) VALUES (7, N'Dojo', N'http://www.daz3d.com/media/catalog/product/cache/1/thumbnail/689303033aebc8cae535000c73c8db4b/0/2/02-martial-arts-dojo-interior-daz3d.jpg')
INSERT [dbo].[Rooms] ([RoomId], [Description], [Image]) VALUES (9, N'Abyss', N'http://vignette1.wikia.nocookie.net/darksouls/images/5/5c/Chasm03.jpg/revision/latest?cb=20130618004345')
SET IDENTITY_INSERT [dbo].[Rooms] OFF
SET IDENTITY_INSERT [dbo].[Treasures] ON 

INSERT [dbo].[Treasures] ([TreasureId], [ItemId], [RoomId]) VALUES (1, 9, 3)
INSERT [dbo].[Treasures] ([TreasureId], [ItemId], [RoomId]) VALUES (2, 8, 1)
INSERT [dbo].[Treasures] ([TreasureId], [ItemId], [RoomId]) VALUES (5, 5, 3)
INSERT [dbo].[Treasures] ([TreasureId], [ItemId], [RoomId]) VALUES (6, 2, 1)
INSERT [dbo].[Treasures] ([TreasureId], [ItemId], [RoomId]) VALUES (7, 1, 3)
INSERT [dbo].[Treasures] ([TreasureId], [ItemId], [RoomId]) VALUES (8, 3, 3)
INSERT [dbo].[Treasures] ([TreasureId], [ItemId], [RoomId]) VALUES (9, 7, 2)
INSERT [dbo].[Treasures] ([TreasureId], [ItemId], [RoomId]) VALUES (10, 5, 4)
SET IDENTITY_INSERT [dbo].[Treasures] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_UserId]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Characters_RoomId]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_Characters_RoomId] ON [dbo].[Characters]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Characters_UserId]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_Characters_UserId] ON [dbo].[Characters]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Loots_CharacterId]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_Loots_CharacterId] ON [dbo].[Loots]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Loots_ItemId]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_Loots_ItemId] ON [dbo].[Loots]
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Monsters_RoomId]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_Monsters_RoomId] ON [dbo].[Monsters]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Treasures_ItemId]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_Treasures_ItemId] ON [dbo].[Treasures]
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Treasures_RoomId]    Script Date: 9/15/2016 4:24:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_Treasures_RoomId] ON [dbo].[Treasures]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Rooms_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([RoomId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Rooms_RoomId]
GO
ALTER TABLE [dbo].[Loots]  WITH CHECK ADD  CONSTRAINT [FK_Loots_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([CharacterId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Loots] CHECK CONSTRAINT [FK_Loots_Characters_CharacterId]
GO
ALTER TABLE [dbo].[Loots]  WITH CHECK ADD  CONSTRAINT [FK_Loots_Items_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([ItemId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Loots] CHECK CONSTRAINT [FK_Loots_Items_ItemId]
GO
ALTER TABLE [dbo].[Monsters]  WITH CHECK ADD  CONSTRAINT [FK_Monsters_Rooms_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([RoomId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Monsters] CHECK CONSTRAINT [FK_Monsters_Rooms_RoomId]
GO
ALTER TABLE [dbo].[Pathways]  WITH CHECK ADD  CONSTRAINT [FK_Pathways_Rooms_End] FOREIGN KEY([EndId])
REFERENCES [dbo].[Rooms] ([RoomId])
GO
ALTER TABLE [dbo].[Pathways] CHECK CONSTRAINT [FK_Pathways_Rooms_End]
GO
ALTER TABLE [dbo].[Pathways]  WITH CHECK ADD  CONSTRAINT [FK_Pathways_Rooms_Start] FOREIGN KEY([StartId])
REFERENCES [dbo].[Rooms] ([RoomId])
GO
ALTER TABLE [dbo].[Pathways] CHECK CONSTRAINT [FK_Pathways_Rooms_Start]
GO
ALTER TABLE [dbo].[Treasures]  WITH CHECK ADD  CONSTRAINT [FK_Treasures_Items_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([ItemId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Treasures] CHECK CONSTRAINT [FK_Treasures_Items_ItemId]
GO
ALTER TABLE [dbo].[Treasures]  WITH CHECK ADD  CONSTRAINT [FK_Treasures_Rooms_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([RoomId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Treasures] CHECK CONSTRAINT [FK_Treasures_Rooms_RoomId]
GO
USE [master]
GO
ALTER DATABASE [AncientMinotaurs] SET  READ_WRITE 
GO
