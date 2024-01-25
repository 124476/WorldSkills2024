GO
ALTER DATABASE [WorldSkills2024DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WorldSkills2024DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WorldSkills2024DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WorldSkills2024DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WorldSkills2024DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET RECOVERY FULL 
GO
ALTER DATABASE [WorldSkills2024DB] SET  MULTI_USER 
GO
ALTER DATABASE [WorldSkills2024DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WorldSkills2024DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WorldSkills2024DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WorldSkills2024DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WorldSkills2024DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WorldSkills2024DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WorldSkills2024DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [WorldSkills2024DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [WorldSkills2024DB]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 25.01.2024 17:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gospital]    Script Date: 25.01.2024 17:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gospital](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Diagnoz] [nvarchar](50) NULL,
	[Chel] [nvarchar](50) NULL,
	[Otdelenie] [nvarchar](50) NULL,
	[Yslovie] [bit] NULL,
	[DateStart] [date] NULL,
	[DateEnd] [date] NULL,
	[PacientId] [int] NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacient]    Script Date: 25.01.2024 17:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [image] NULL,
	[Otechestvo] [nvarchar](50) NULL,
	[Subname] [nvarchar](50) NULL,
	[Number] [nvarchar](50) NULL,
	[Seria] [nvarchar](50) NULL,
	[DateBorn] [date] NULL,
	[Pol] [bit] NULL,
	[Adress] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[DateCard] [date] NULL,
	[DateLast] [date] NULL,
	[DateNext] [date] NULL,
	[DateEnd] [date] NULL,
	[Polis] [nvarchar](50) NULL,
 CONSTRAINT [PK_Pacient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Places]    Script Date: 25.01.2024 17:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Places](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PacientId] [int] NULL,
	[Date] [date] NULL,
	[Tip] [nvarchar](100) NULL,
	[Name] [nvarchar](50) NULL,
	[Result] [nvarchar](250) NULL,
	[Recomendation] [nvarchar](100) NULL,
	[DoctorId] [int] NULL,
 CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rechept]    Script Date: 25.01.2024 17:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rechept](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Doza] [nvarchar](50) NULL,
	[Format] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rechept] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pacient] ON 

INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (2, N'Madelin', NULL, N'Gianina', N'Luxen', N'985957', N'4085', CAST(N'1993-04-01' AS Date), 1, N'Room 738', N'654-466-0350', N'gluxen0@upenn.edu', NULL, CAST(N'2015-06-05' AS Date), NULL, NULL, N'4,98735E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (3, N'Pren', NULL, N'Polly', N'Parkey', N'751504', N'7602', CAST(N'2004-06-12' AS Date), 1, N'12th Floor', N'803-756-6115', N'pparkey1@zimbio.com', NULL, CAST(N'2016-06-10' AS Date), NULL, NULL, N'1,23661E+16')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (4, N'Retha', NULL, N'Roscoe', N'Jevons', N'228247', N'6396', CAST(N'2004-06-12' AS Date), 0, N'6th Floor', N'558-674-4517', N'rjevons2@dell.com', CAST(N'2012-12-01' AS Date), NULL, NULL, NULL, N'4,27641E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (5, N'Ellynn', NULL, N'Billy', N'Rehme', N'864874', N'2973', CAST(N'2004-06-12' AS Date), 1, N'Suite 20', N'694-644-9072', N'brehme3@toplist.cz', NULL, CAST(N'2019-08-03' AS Date), NULL, NULL, N'8,35109E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (6, N'Shannan', NULL, N'Ynes', N'Nowak', N'123840', N'7962', CAST(N'1995-11-06' AS Date), 1, N'Apt 1593', N'609-776-1123', N'ynowak4@nydailynews.com', NULL, NULL, NULL, NULL, N'3,57141E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (7, N'Ambur', NULL, N'Lemar', N'Clissell', N'431346', N'4656', CAST(N'2004-06-12' AS Date), 0, N'16th Floor', N'989-530-2679', N'lclissell5@dailymotion.com', NULL, CAST(N'2019-12-06' AS Date), NULL, NULL, N'6,80485E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (8, N'Ebony', NULL, N'Molly', N'Vernalls', N'979533', N'4499', CAST(N'1994-10-08' AS Date), 1, N'PO Box 14293', N'480-791-2990', N'mvernalls6@engadget.com', CAST(N'2017-11-11' AS Date), NULL, CAST(N'2024-01-01' AS Date), NULL, N'4,27506E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (9, N'Celine', NULL, N'Bryn', N'Echelle', N'391073', N'8624', CAST(N'2008-11-06' AS Date), 1, N'Room 140', N'615-299-7243', N'bechelle7@pcworld.com', CAST(N'2014-02-06' AS Date), NULL, CAST(N'2023-04-11' AS Date), CAST(N'2042-06-10' AS Date), N'2,85064E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (10, N'Putnem', NULL, N'Alina', N'Coleby', N'928184', N'6467', CAST(N'2004-06-12' AS Date), 0, N'Apt 781', N'460-874-1597', N'acoleby8@apache.org', NULL, CAST(N'2015-01-08' AS Date), CAST(N'2022-11-08' AS Date), NULL, N'6,74253E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (11, N'Sasha', NULL, N'Ingrid', N'Essel', N'369789', N'5279', NULL, 1, N'Suite 62', N'161-156-9715', N'iessel9@amazon.de', NULL, NULL, CAST(N'2022-01-04' AS Date), NULL, N'5,00259E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (12, N'Devan', NULL, N'Clair', N'Kindon', N'669021', N'7329', NULL, 0, N'PO Box 42856', N'748-699-4551', N'ckindona@amazonaws.com', CAST(N'2012-04-01' AS Date), NULL, CAST(N'2024-01-01' AS Date), NULL, N'7,78448E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (13, N'Maura', NULL, N'Ilyssa', N'Benjafield', N'210616', N'4049', CAST(N'1996-11-09' AS Date), 1, N'Room 135', N'543-529-4434', N'ibenjafieldb@goodreads.com', NULL, CAST(N'2017-10-11' AS Date), NULL, CAST(N'2032-07-08' AS Date), N'5,77839E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (14, N'Orelie', NULL, N'Elyn', N'Straneo', N'363635', N'4622', NULL, 0, N'Suite 56', N'298-360-3017', N'estraneoc@harvard.edu', NULL, NULL, CAST(N'2021-02-04' AS Date), CAST(N'2041-11-11' AS Date), N'2,24266E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (15, N'Krysta', NULL, N'Melosa', N'Flett', N'350358', N'9683', NULL, 1, N'16th Floor', N'367-777-5319', N'mflettd@google.co.jp', NULL, CAST(N'2019-02-04' AS Date), CAST(N'2023-07-01' AS Date), NULL, N'2,93482E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (16, N'Kyle', NULL, N'Juliana', N'Simonian', N'907790', N'4907', NULL, 0, N'9th Floor', N'372-350-5359', N'jsimoniane@java.com', NULL, NULL, NULL, CAST(N'2037-01-10' AS Date), N'1,79627E+16')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (17, N'Marinna', NULL, N'Julieta', N'Georger', N'492955', N'7906', NULL, 0, N'PO Box 640', N'204-659-3337', N'jgeorgerf@yellowpages.com', NULL, NULL, CAST(N'2022-01-05' AS Date), NULL, N'2,8921E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (18, N'Lek', NULL, N'Theresa', N'Kervin', N'494967', N'1751', CAST(N'2002-12-03' AS Date), 0, N'PO Box 37606', N'948-169-3485', N'tkerving@go.com', NULL, CAST(N'2015-03-08' AS Date), CAST(N'2022-08-09' AS Date), CAST(N'2041-03-01' AS Date), N'7,65216E+16')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (19, N'Oren', NULL, N'Elora', N'Gardner', N'879430', N'1610', CAST(N'1996-12-07' AS Date), 0, N'PO Box 31452', N'148-789-2255', N'egardnerh@tripod.com', NULL, CAST(N'2020-09-02' AS Date), NULL, CAST(N'2040-08-01' AS Date), N'5,9151E+16')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (20, N'Jaime', NULL, N'Reeva', N'Gerrens', N'372312', N'9189', CAST(N'1995-04-09' AS Date), 0, N'Suite 6', N'187-477-7121', N'rgerrensi@trellian.com', CAST(N'2018-09-07' AS Date), NULL, NULL, NULL, N'4,05575E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (21, N'Vanda', NULL, N'Ola', N'Caddens', N'903734', N'6327', NULL, 1, N'PO Box 77672', N'756-223-4398', N'ocaddensj@w3.org', NULL, CAST(N'2020-01-12' AS Date), CAST(N'2022-08-09' AS Date), NULL, N'9,41703E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (22, N'Kennie', NULL, N'Heath', N'Stealey', N'251883', N'9075', CAST(N'2004-04-08' AS Date), 1, N'Suite 66', N'425-938-7161', N'hstealeyk@homestead.com', CAST(N'2012-07-04' AS Date), NULL, NULL, CAST(N'2037-03-12' AS Date), N'1,42322E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (23, N'Johannes', NULL, N'Gerome', N'Thirlwall', N'965872', N'7278', NULL, 0, N'Room 574', N'403-919-7803', N'gthirlwalll@lycos.com', NULL, CAST(N'2015-11-08' AS Date), CAST(N'2023-05-06' AS Date), CAST(N'2034-01-04' AS Date), N'9,40273E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (24, N'Clayborn', NULL, N'John', N'Huggett', N'513890', N'9751', CAST(N'2002-03-07' AS Date), 1, N'12th Floor', N'893-572-5437', N'jhuggettm@godaddy.com', NULL, CAST(N'2015-09-03' AS Date), NULL, NULL, N'7,9608E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (25, N'Harper', NULL, N'Paulette', N'Glide', N'405856', N'3649', NULL, 0, N'PO Box 55552', N'469-334-6044', N'pgliden@huffingtonpost.com', CAST(N'2016-02-03' AS Date), NULL, CAST(N'2023-06-05' AS Date), NULL, N'4,56185E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (26, N'Skylar', NULL, N'Bekki', N'Blight', N'842615', N'9512', CAST(N'1993-11-05' AS Date), 0, N'PO Box 44203', N'750-497-6827', N'bblighto@mit.edu', NULL, CAST(N'2015-09-05' AS Date), CAST(N'2023-02-09' AS Date), NULL, N'8,07336E+16')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (27, N'Renaldo', NULL, N'Antonin', N'Bardnam', N'626570', N'2166', NULL, 0, N'PO Box 5169', N'679-255-0269', N'abardnamp@pcworld.com', NULL, CAST(N'2019-12-07' AS Date), NULL, NULL, N'5,0756E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (28, N'Gilligan', NULL, N'Fionna', N'Tout', N'280305', N'6676', NULL, 0, N'Room 483', N'907-287-6166', N'ftoutq@rambler.ru', NULL, CAST(N'2016-05-05' AS Date), NULL, NULL, N'4,98937E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (29, N'Biddy', NULL, N'Bethena', N'Griffoen', N'855003', N'9357', CAST(N'1992-11-11' AS Date), 0, N'Room 429', N'791-645-6801', N'bgriffoenr@a8.net', NULL, CAST(N'2017-08-03' AS Date), NULL, CAST(N'2042-09-07' AS Date), N'2,91759E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (30, N'Arron', NULL, N'Galvin', N'Franzetti', N'843603', N'4551', CAST(N'1990-08-03' AS Date), 1, N'Suite 24', N'372-952-1261', N'gfranzettis@bing.com', NULL, NULL, CAST(N'2023-12-02' AS Date), NULL, N'4,26763E+16')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (31, N'Veradis', NULL, N'Kariotta', N'Dunphy', N'272854', N'2664', CAST(N'2006-10-06' AS Date), 0, N'Suite 39', N'837-197-6259', N'kdunphyt@meetup.com', NULL, CAST(N'2017-08-06' AS Date), CAST(N'2022-08-02' AS Date), CAST(N'2038-04-03' AS Date), N'6,40026E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (32, N'Will', NULL, N'Olin', N'Womersley', N'233705', N'2024', NULL, 0, N'12th Floor', N'683-640-5487', N'owomersleyu@163.com', CAST(N'2016-12-07' AS Date), CAST(N'2016-12-08' AS Date), CAST(N'2022-01-07' AS Date), CAST(N'2034-10-11' AS Date), N'3,76024E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (33, N'Shea', NULL, N'Aldous', N'Bygrave', N'946481', N'4142', CAST(N'2002-01-11' AS Date), 0, N'PO Box 79964', N'119-130-2544', N'abygravev@addthis.com', NULL, NULL, NULL, NULL, N'9,11046E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (34, N'Davin', NULL, N'Holden', N'Center', N'743419', N'6827', NULL, 1, N'Suite 78', N'673-942-1345', N'hcenterw@cbc.ca', NULL, NULL, NULL, CAST(N'2040-07-01' AS Date), N'7,12858E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (35, N'Jannelle', NULL, N'Holly', N'Ashwood', N'862368', N'6683', NULL, 0, N'Room 1579', N'522-674-1443', N'hashwoodx@hhs.gov', NULL, CAST(N'2015-04-01' AS Date), NULL, CAST(N'2040-07-11' AS Date), N'7,1225E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (36, N'Lorilyn', NULL, N'Brook', N'Castanie', N'898007', N'8930', NULL, 1, N'PO Box 99518', N'242-579-2547', N'bcastaniey@upenn.edu', NULL, NULL, NULL, CAST(N'2037-07-08' AS Date), N'6,37546E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (37, N'Mattias', NULL, N'Teriann', N'Klampt', N'978470', N'9825', CAST(N'2005-05-05' AS Date), 1, N'PO Box 67728', N'806-319-9871', N'tklamptz@umn.edu', CAST(N'2014-11-10' AS Date), NULL, CAST(N'2021-02-10' AS Date), CAST(N'2034-11-02' AS Date), N'3,14927E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (38, N'Othello', NULL, N'Johnath', N'Franzke', N'701975', N'8276', NULL, 0, N'8th Floor', N'822-724-1960', N'jfranzke10@nbcnews.com', NULL, CAST(N'2019-05-07' AS Date), NULL, NULL, N'1,55595E+16')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (39, N'Aloise', NULL, N'Hannah', N'Tunn', N'857479', N'5847', NULL, 1, N'PO Box 91986', N'813-750-3350', N'htunn11@ask.com', NULL, NULL, NULL, NULL, N'8,11171E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (40, N'Roana', NULL, N'Joseito', N'Balden', N'363198', N'1994', NULL, 1, N'Apt 293', N'613-985-8050', N'jbalden12@phoca.cz', NULL, NULL, CAST(N'2021-04-02' AS Date), NULL, N'1,25759E+16')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (41, N'Micheil', NULL, N'Dalston', N'Dagg', N'612154', N'7953', NULL, 1, N'15th Floor', N'470-553-0904', N'ddagg13@diigo.com', NULL, CAST(N'2018-11-05' AS Date), NULL, NULL, N'4,99168E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (42, N'Blondell', NULL, N'Augustina', N'Tosh', N'313559', N'8402', NULL, 1, N'Apt 1538', N'219-884-8839', N'atosh14@macromedia.com', NULL, CAST(N'2016-01-11' AS Date), NULL, NULL, N'4,46323E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (43, N'Freeman', NULL, N'Rosmunda', N'Goricke', N'597533', N'6818', CAST(N'2005-01-04' AS Date), 0, N'PO Box 13559', N'628-321-2837', N'rgoricke15@parallels.com', NULL, NULL, NULL, NULL, N'3,70925E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (44, N'Dawn', NULL, N'Carolyn', N'Keddy', N'994754', N'6800', NULL, 0, N'PO Box 60885', N'924-353-1050', N'ckeddy16@apache.org', NULL, CAST(N'2018-11-05' AS Date), NULL, NULL, N'2,64112E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (45, N'Harmon', NULL, N'Renee', N'Paolazzi', N'336599', N'9776', CAST(N'1996-01-02' AS Date), 0, N'Room 975', N'337-999-8234', N'rpaolazzi17@shop-pro.jp', NULL, CAST(N'2017-12-06' AS Date), NULL, NULL, N'3,12693E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (46, N'Mariejeanne', NULL, N'Carmina', N'Truggian', N'567899', N'8288', CAST(N'1998-07-01' AS Date), 1, N'Room 556', N'728-962-0691', N'ctruggian18@ox.ac.uk', NULL, NULL, CAST(N'2022-08-06' AS Date), NULL, N'4,36492E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (47, N'Morse', NULL, N'Arther', N'Fittall', N'100688', N'7908', CAST(N'1991-01-06' AS Date), 0, N'Apt 934', N'820-256-7974', N'afittall19@tripod.com', NULL, CAST(N'2018-12-04' AS Date), NULL, CAST(N'2031-04-07' AS Date), N'7,39927E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (48, N'Libby', NULL, N'Quintina', N'Ryburn', N'691859', N'4071', CAST(N'1999-02-01' AS Date), 0, N'Apt 888', N'733-183-6562', N'qryburn1a@twitpic.com', NULL, CAST(N'2017-11-03' AS Date), NULL, NULL, N'8,52247E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (49, N'King', NULL, N'Barbabas', N'Jemison', N'815632', N'3381', CAST(N'1994-02-07' AS Date), 0, N'Suite 98', N'767-882-2160', N'bjemison1b@cdbaby.com', NULL, NULL, CAST(N'2021-09-02' AS Date), NULL, N'4,1483E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (50, N'Bianka', NULL, N'Cathie', N'Andreone', N'682345', N'1285', NULL, 0, N'Suite 64', N'159-591-9414', N'candreone1c@odnoklassniki.ru', CAST(N'2011-01-06' AS Date), NULL, NULL, CAST(N'2031-08-12' AS Date), N'7,82314E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (51, N'Theda', NULL, N'Karil', N'Moret', N'572928', N'3843', NULL, 1, N'Apt 1748', N'550-545-4611', N'kmoret1d@edublogs.org', NULL, NULL, NULL, CAST(N'2035-01-03' AS Date), N'5,29596E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (52, N'Alva', NULL, N'Karlan', N'Goodbarne', N'230179', N'6566', NULL, 0, N'6th Floor', N'789-151-8484', N'kgoodbarne1e@blogger.com', NULL, NULL, NULL, NULL, N'5,669E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (53, N'Gothart', NULL, N'Brett', N'Lisimore', N'512717', N'9493', NULL, 0, N'17th Floor', N'746-712-8963', N'blisimore1f@google.ca', NULL, CAST(N'2017-02-10' AS Date), CAST(N'2021-06-11' AS Date), NULL, N'9,86605E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (54, N'Grannie', NULL, N'Barbey', N'Falkus', N'722125', N'8047', CAST(N'2000-03-04' AS Date), 1, N'PO Box 14590', N'756-177-7611', N'bfalkus1g@dot.gov', NULL, NULL, CAST(N'2021-09-10' AS Date), NULL, N'8,76805E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (55, N'Chelsae', NULL, N'Shawnee', N'Mowat', N'197285', N'5209', NULL, 1, N'Suite 8', N'328-829-1280', N'smowat1h@buzzfeed.com', CAST(N'2010-03-05' AS Date), NULL, NULL, NULL, N'8,31835E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (56, N'Conny', NULL, N'Northrup', N'Dickons', N'721841', N'8495', NULL, 0, N'7th Floor', N'739-301-7539', N'ndickons1i@youtube.com', NULL, NULL, NULL, NULL, N'9,84742E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (57, N'Shannon', NULL, N'Chadwick', N'Charrier', N'535846', N'6093', NULL, 1, N'3rd Floor', N'999-456-6061', N'ccharrier1j@dot.gov', NULL, CAST(N'2017-06-02' AS Date), CAST(N'2023-07-12' AS Date), CAST(N'2036-04-06' AS Date), N'8,46055E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (58, N'Roberta', NULL, N'Gregorius', N'Bark', N'856045', N'8026', CAST(N'2002-01-12' AS Date), 1, N'PO Box 22557', N'777-537-8875', N'gbark1k@jiathis.com', CAST(N'2015-07-12' AS Date), CAST(N'2017-02-07' AS Date), CAST(N'2022-05-09' AS Date), CAST(N'2031-09-03' AS Date), N'7,2877E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (59, N'Stephenie', NULL, N'Curr', N'Gregh', N'397164', N'5598', CAST(N'2008-06-11' AS Date), 1, N'Suite 10', N'768-342-7636', N'cgregh1l@mysql.com', CAST(N'2012-09-08' AS Date), NULL, CAST(N'2023-05-11' AS Date), CAST(N'2040-01-10' AS Date), N'3,22872E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (60, N'Merrick', NULL, N'Rory', N'Tease', N'899066', N'8382', CAST(N'1998-05-11' AS Date), 0, N'8th Floor', N'372-437-9628', N'rtease1m@com.com', NULL, NULL, CAST(N'2021-07-11' AS Date), NULL, N'6,75327E+16')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (61, N'Lane', NULL, N'Virginie', N'Patey', N'679457', N'7584', NULL, 1, N'Apt 1948', N'243-565-7815', N'vpatey1n@nyu.edu', NULL, CAST(N'2016-05-07' AS Date), CAST(N'2022-03-04' AS Date), CAST(N'2039-01-07' AS Date), N'6,19612E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (62, N'Abran', NULL, N'Leta', N'Cullagh', N'394006', N'2223', CAST(N'2001-06-12' AS Date), 0, N'Suite 25', N'223-954-5626', N'lcullagh1o@patch.com', NULL, NULL, NULL, NULL, N'5,97409E+16')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (63, N'Lydie', NULL, N'Berty', N'Reedshaw', N'511334', N'7032', NULL, 1, N'16th Floor', N'900-112-2005', N'breedshaw1p@domainmarket.com', CAST(N'2019-07-03' AS Date), CAST(N'2018-06-06' AS Date), CAST(N'2023-04-05' AS Date), NULL, N'9,11654E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (64, N'Kelli', NULL, N'Tedie', N'Gladdis', N'479506', N'3378', CAST(N'2004-05-09' AS Date), 0, N'Room 1412', N'760-528-0659', N'tgladdis1q@ifeng.com', CAST(N'2010-02-05' AS Date), CAST(N'2017-08-09' AS Date), CAST(N'2023-01-06' AS Date), CAST(N'2033-01-03' AS Date), N'6,3611E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (65, N'Montague', NULL, N'Maxim', N'McFetridge', N'141085', N'4838', NULL, 1, N'Room 1193', N'787-218-5222', N'mmcfetridge1r@ehow.com', NULL, NULL, CAST(N'2022-07-05' AS Date), NULL, N'5,99066E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (66, N'Orazio', NULL, N'Desiree', N'Dorton', N'597238', N'1832', NULL, 1, N'Apt 1557', N'985-580-5991', N'ddorton1s@msu.edu', CAST(N'2011-08-04' AS Date), NULL, CAST(N'2022-04-08' AS Date), NULL, N'7,17357E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (67, N'Oates', NULL, N'Nike', N'Brunini', N'925245', N'5409', NULL, 1, N'PO Box 15365', N'875-783-9112', N'nbrunini1t@hc360.com', NULL, CAST(N'2017-12-06' AS Date), CAST(N'2022-06-12' AS Date), NULL, N'8,67865E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (68, N'Jacob', NULL, N'Pat', N'Francino', N'998239', N'8940', NULL, 0, N'5th Floor', N'908-364-7643', N'pfrancino1u@histats.com', CAST(N'2011-12-02' AS Date), NULL, NULL, NULL, N'9,17312E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (69, N'Sibylle', NULL, N'Britney', N'Dorgan', N'117134', N'3255', NULL, 0, N'Suite 10', N'372-100-7094', N'bdorgan1v@geocities.jp', NULL, CAST(N'2020-10-07' AS Date), NULL, NULL, N'5,90297E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (70, N'Clay', NULL, N'Rosco', N'Vigietti', N'797564', N'9454', CAST(N'2005-11-02' AS Date), 1, N'Suite 10', N'330-627-1065', N'rvigietti1w@printfriendly.com', CAST(N'2016-10-08' AS Date), NULL, CAST(N'2023-03-07' AS Date), CAST(N'2043-03-03' AS Date), N'3,68303E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (71, N'Stella', NULL, N'Marylee', N'Gowthrop', N'334383', N'2236', NULL, 0, N'15th Floor', N'268-761-3283', N'mgowthrop1x@skyrock.com', CAST(N'2014-10-06' AS Date), NULL, CAST(N'2022-05-07' AS Date), CAST(N'2032-09-07' AS Date), N'6,97737E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (72, N'Katina', NULL, N'Reggis', N'Zorener', N'105126', N'4494', CAST(N'1994-01-09' AS Date), 0, N'Apt 1123', N'406-539-4127', N'rzorener1y@time.com', NULL, NULL, CAST(N'2022-11-09' AS Date), CAST(N'2034-04-06' AS Date), N'1,38116E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (73, N'Dre', NULL, N'Bert', N'McLleese', N'550588', N'2922', NULL, 1, N'Suite 75', N'242-227-5297', N'bmclleese1z@epa.gov', NULL, CAST(N'2015-02-09' AS Date), CAST(N'2022-02-07' AS Date), NULL, N'8,14309E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (74, N'Nanci', NULL, N'Lief', N'Galpin', N'258302', N'7719', NULL, 0, N'PO Box 78382', N'662-902-5134', N'lgalpin20@bloglines.com', CAST(N'2015-02-03' AS Date), CAST(N'2018-08-08' AS Date), NULL, NULL, N'8,88658E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (75, N'Lothaire', NULL, N'Doloritas', N'Grunwall', N'991627', N'2720', NULL, 1, N'Apt 811', N'205-520-4908', N'dgrunwall21@spotify.com', NULL, CAST(N'2017-04-10' AS Date), NULL, NULL, N'6,3054E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (76, N'Gayler', NULL, N'Pincus', N'Tallboy', N'658967', N'1922', NULL, 1, N'Suite 9', N'949-211-0386', N'ptallboy22@unblog.fr', CAST(N'2015-05-12' AS Date), CAST(N'2015-03-10' AS Date), CAST(N'2023-09-01' AS Date), CAST(N'2039-10-03' AS Date), N'8,41999E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (77, N'Guillemette', NULL, N'Jessa', N'Gainfort', N'326037', N'9534', NULL, 1, N'Room 1703', N'768-934-5903', N'jgainfort23@blogger.com', CAST(N'2013-10-09' AS Date), CAST(N'2016-10-04' AS Date), CAST(N'2023-10-02' AS Date), NULL, N'4,38493E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (78, N'Webster', NULL, N'Bessie', N'Happs', N'285323', N'5165', NULL, 1, N'Room 782', N'686-158-9337', N'bhapps24@webmd.com', NULL, NULL, CAST(N'2023-01-05' AS Date), NULL, N'3,35423E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (79, N'Caddric', NULL, N'Dugald', N'Cadwell', N'874584', N'2439', NULL, 1, N'20th Floor', N'332-181-2854', N'dcadwell25@statcounter.com', NULL, CAST(N'2016-10-04' AS Date), NULL, NULL, N'2,45851E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (80, N'Dore', NULL, N'Eldin', N'Labat', N'753926', N'6804', NULL, 0, N'18th Floor', N'852-314-8738', N'elabat26@sohu.com', CAST(N'2015-04-09' AS Date), NULL, NULL, CAST(N'2043-07-11' AS Date), N'9,48783E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (81, N'Cristy', NULL, N'Titos', N'Goalley', N'981270', N'8457', NULL, 0, N'Apt 1952', N'628-311-0897', N'tgoalley27@miibeian.gov.cn', NULL, NULL, NULL, NULL, N'2,96653E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (82, N'Claude', NULL, N'Emyle', N'Deinhardt', N'585511', N'7053', NULL, 1, N'PO Box 59803', N'438-789-9983', N'edeinhardt28@state.tx.us', NULL, CAST(N'2015-09-12' AS Date), NULL, NULL, N'4,84336E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (83, N'Brunhilda', NULL, N'Tammi', N'Doble', N'871501', N'3554', NULL, 1, N'Apt 1163', N'700-421-2018', N'tdoble29@walmart.com', CAST(N'2014-03-09' AS Date), NULL, NULL, CAST(N'2040-04-11' AS Date), N'8,30699E+16')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (84, N'Vicky', NULL, N'Jonathan', N'Ramsier', N'427850', N'5128', CAST(N'1992-04-04' AS Date), 1, N'Room 1654', N'624-419-4704', N'jramsier2a@cloudflare.com', NULL, NULL, CAST(N'2023-02-04' AS Date), NULL, N'1,68154E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (85, N'Madalena', NULL, N'Mireille', N'Berndsen', N'947592', N'5860', NULL, 1, N'Apt 1926', N'700-550-7438', N'mberndsen2b@edublogs.org', NULL, CAST(N'2020-11-01' AS Date), NULL, NULL, N'5,88865E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (86, N'Bogart', NULL, N'Gina', N'Purvis', N'175677', N'8747', NULL, 1, N'Suite 83', N'146-232-4987', N'gpurvis2c@vk.com', NULL, CAST(N'2020-06-04' AS Date), CAST(N'2021-05-09' AS Date), NULL, N'5,04274E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (87, N'Gates', NULL, N'Bridie', N'Conquer', N'684017', N'2597', NULL, 1, N'PO Box 6495', N'436-743-9933', N'bconquer2d@jalbum.net', NULL, NULL, NULL, NULL, N'2,92511E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (88, N'Elisabeth', NULL, N'Abbe', N'O''Sullivan', N'142651', N'5955', NULL, 0, N'PO Box 99274', N'204-902-6167', N'aosullivan2e@google.co.jp', NULL, CAST(N'2015-06-06' AS Date), NULL, CAST(N'2039-10-04' AS Date), N'3,47758E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (89, N'Silvanus', NULL, N'Annette', N'Girkin', N'997907', N'1532', CAST(N'1996-07-08' AS Date), 1, N'Apt 154', N'768-609-7726', N'agirkin2f@alexa.com', NULL, CAST(N'2019-11-04' AS Date), NULL, NULL, N'8,44389E+16')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (90, N'Robinet', NULL, N'Lynsey', N'Kerrich', N'171538', N'9450', NULL, 0, N'PO Box 11817', N'166-866-0209', N'lkerrich2g@naver.com', NULL, NULL, NULL, CAST(N'2040-07-05' AS Date), N'5,56908E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (91, N'Olag', NULL, N'Atlanta', N'Pfeifer', N'919844', N'8086', CAST(N'2004-02-06' AS Date), 0, N'15th Floor', N'608-326-2110', N'apfeifer2h@whitehouse.gov', NULL, NULL, NULL, CAST(N'2034-05-11' AS Date), N'5,72761E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (92, N'Tymon', NULL, N'Magnum', N'Mazey', N'353109', N'6658', NULL, 1, N'11th Floor', N'466-584-1254', N'mmazey2i@biglobe.ne.jp', NULL, NULL, NULL, CAST(N'2033-12-03' AS Date), N'7,23021E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (93, N'Estel', NULL, N'Carmela', N'Josephov', N'245193', N'1652', CAST(N'1998-03-01' AS Date), 1, N'Suite 34', N'751-340-7773', N'cjosephov2j@istockphoto.com', NULL, NULL, CAST(N'2021-10-06' AS Date), NULL, N'9,50132E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (94, N'Roobbie', NULL, N'Brunhilde', N'Brayley', N'397069', N'2830', CAST(N'2003-12-04' AS Date), 1, N'PO Box 67166', N'892-438-8025', N'bbrayley2k@aol.com', NULL, NULL, CAST(N'2023-07-10' AS Date), CAST(N'2036-07-01' AS Date), N'6,77684E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (95, N'Krishnah', NULL, N'Gertrudis', N'Murney', N'830922', N'9929', NULL, 0, N'Suite 17', N'196-647-7466', N'gmurney2l@ustream.tv', CAST(N'2011-02-08' AS Date), CAST(N'2016-07-08' AS Date), NULL, NULL, N'7,34458E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (96, N'Peggi', NULL, N'Wittie', N'Aharoni', N'727614', N'5899', NULL, 1, N'Room 370', N'668-462-1299', N'waharoni2m@mac.com', CAST(N'2012-03-04' AS Date), NULL, NULL, CAST(N'2043-12-01' AS Date), N'2,06666E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (97, N'Basia', NULL, N'Bobbi', N'Doberer', N'852366', N'1246', NULL, 0, N'PO Box 52792', N'823-988-2362', N'bdoberer2n@mapquest.com', CAST(N'2012-09-06' AS Date), CAST(N'2017-08-06' AS Date), NULL, NULL, N'6,98634E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (98, N'Shaine', NULL, N'Jeth', N'Keggins', N'537509', N'2888', NULL, 0, N'Suite 42', N'140-631-5824', N'jkeggins2o@discovery.com', CAST(N'2011-12-04' AS Date), NULL, NULL, NULL, N'1,1452E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (99, N'Dill', NULL, N'Casar', N'Swire', N'114760', N'5763', CAST(N'1991-05-07' AS Date), 1, N'Suite 78', N'813-305-3560', N'cswire2p@chicagotribune.com', CAST(N'2010-09-05' AS Date), NULL, CAST(N'2022-11-06' AS Date), NULL, N'3,85549E+17')
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (100, N'Zuzana', NULL, N'Jimmie', N'Honnicott', N'584300', N'6130', CAST(N'2008-04-09' AS Date), 0, N'PO Box 57335', N'247-360-3713', N'jhonnicott2q@taobao.com', CAST(N'2013-03-06' AS Date), NULL, CAST(N'2022-04-03' AS Date), NULL, N'8,03955E+17')
GO
INSERT [dbo].[Pacient] ([Id], [Name], [Photo], [Otechestvo], [Subname], [Number], [Seria], [DateBorn], [Pol], [Adress], [Phone], [Mail], [DateCard], [DateLast], [DateNext], [DateEnd], [Polis]) VALUES (101, N'Currie', NULL, N'Rosina', N'Smieton', N'263294', N'2199', NULL, 1, N'Apt 1463', N'352-202-5404', N'rsmieton2r@networksolutions.com', NULL, CAST(N'2015-03-06' AS Date), NULL, NULL, N'6,00807E+16')
SET IDENTITY_INSERT [dbo].[Pacient] OFF
GO
ALTER TABLE [dbo].[Gospital]  WITH CHECK ADD  CONSTRAINT [FK_History_Pacient] FOREIGN KEY([PacientId])
REFERENCES [dbo].[Pacient] ([Id])
GO
ALTER TABLE [dbo].[Gospital] CHECK CONSTRAINT [FK_History_Pacient]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Doctor] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([Id])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Doctor]
GO
ALTER TABLE [dbo].[Places]  WITH CHECK ADD  CONSTRAINT [FK_Places_Pacient] FOREIGN KEY([PacientId])
REFERENCES [dbo].[Pacient] ([Id])
GO
ALTER TABLE [dbo].[Places] CHECK CONSTRAINT [FK_Places_Pacient]
GO
USE [master]
GO
ALTER DATABASE [WorldSkills2024DB] SET  READ_WRITE 
GO
