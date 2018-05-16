USE [master]
GO
/****** Object:  Database [Intranet]    Script Date: 16/05/2018 0:07:57 ******/
CREATE DATABASE [Intranet]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Intranet', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Intranet.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Intranet_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Intranet_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Intranet] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Intranet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Intranet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Intranet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Intranet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Intranet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Intranet] SET ARITHABORT OFF 
GO
ALTER DATABASE [Intranet] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Intranet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Intranet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Intranet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Intranet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Intranet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Intranet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Intranet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Intranet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Intranet] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Intranet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Intranet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Intranet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Intranet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Intranet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Intranet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Intranet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Intranet] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Intranet] SET  MULTI_USER 
GO
ALTER DATABASE [Intranet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Intranet] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Intranet] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Intranet] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Intranet] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Intranet]
GO
/****** Object:  Table [dbo].[ADMINISTRATOR]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMINISTRATOR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[WorkArea] [nvarchar](20) NULL,
 CONSTRAINT [PK_ADMINISTRATOR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AREA]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AREA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_AREA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CAREER]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAREER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_CAREER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COURSE]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COURSE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Obligatory] [bit] NOT NULL,
	[Credit] [int] NOT NULL,
	[AreaID] [int] NOT NULL,
 CONSTRAINT [PK_COURSE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COURSE&SECTION]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COURSE&SECTION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SectionID] [int] NOT NULL,
	[HourStart] [int] NOT NULL,
	[HourEnd] [int] NOT NULL,
	[VacanciesAvailable] [int] NOT NULL,
	[ClasroomName] [nvarchar](10) NOT NULL,
	[Teacher_CourseID] [int] NOT NULL,
	[Day] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_COURSE&SECTION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DEBT]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEBT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[Reason] [nvarchar](30) NOT NULL,
	[StudentID] [int] NOT NULL,
 CONSTRAINT [PK_DEBT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SCORE]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCORE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PC01] [decimal](18, 2) NOT NULL,
	[PC02] [decimal](18, 2) NOT NULL,
	[PC03] [decimal](18, 2) NOT NULL,
	[MidtermExam] [decimal](18, 2) NOT NULL,
	[FinalExam] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_SCORE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SECTION]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECTION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_SECTION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUDENT]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CarrerID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Foreigner] [bit] NOT NULL,
	[MaximumCredits] [int] NOT NULL,
 CONSTRAINT [PK_STUDENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUDENT&&COURSE&SECTION]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT&&COURSE&SECTION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[Course_SectionID] [int] NOT NULL,
	[ScoreID] [int] NOT NULL,
 CONSTRAINT [PK_STUDENT&COURSE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TEACHER]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEACHER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Profession] [nvarchar](15) NOT NULL,
	[UniversityDegrees] [nvarchar](25) NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_TEACHER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TECHER&COURSE]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TECHER&COURSE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TeacherID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_TECHER&COURSE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USER]    Script Date: 16/05/2018 0:07:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[DateOfBirth] [nvarchar](20) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[UserName] [nvarchar](20) NOT NULL,
	[DNI] [int] NOT NULL,
	[Pasword] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ADMINISTRATOR] ON 

INSERT [dbo].[ADMINISTRATOR] ([ID], [UserID], [WorkArea]) VALUES (1, 1, N'Administration')
SET IDENTITY_INSERT [dbo].[ADMINISTRATOR] OFF
SET IDENTITY_INSERT [dbo].[AREA] ON 

INSERT [dbo].[AREA] ([ID], [Description]) VALUES (1, N'CC.SS')
SET IDENTITY_INSERT [dbo].[AREA] OFF
SET IDENTITY_INSERT [dbo].[COURSE] ON 

INSERT [dbo].[COURSE] ([ID], [Name], [Obligatory], [Credit], [AreaID]) VALUES (1, N'Programacion I', 1, 4, 1)
INSERT [dbo].[COURSE] ([ID], [Name], [Obligatory], [Credit], [AreaID]) VALUES (2, N'Programacion II', 1, 4, 1)
SET IDENTITY_INSERT [dbo].[COURSE] OFF
SET IDENTITY_INSERT [dbo].[COURSE&SECTION] ON 

INSERT [dbo].[COURSE&SECTION] ([ID], [SectionID], [HourStart], [HourEnd], [VacanciesAvailable], [ClasroomName], [Teacher_CourseID], [Day]) VALUES (2, 2, 19, 21, 30, N'VH-209', 2, N'Monday')
INSERT [dbo].[COURSE&SECTION] ([ID], [SectionID], [HourStart], [HourEnd], [VacanciesAvailable], [ClasroomName], [Teacher_CourseID], [Day]) VALUES (3, 3, 7, 9, 30, N'VH-205', 2, N'Friday')
INSERT [dbo].[COURSE&SECTION] ([ID], [SectionID], [HourStart], [HourEnd], [VacanciesAvailable], [ClasroomName], [Teacher_CourseID], [Day]) VALUES (4, 1, 9, 11, 30, N'VH-203', 3, N'Tuesday')
INSERT [dbo].[COURSE&SECTION] ([ID], [SectionID], [HourStart], [HourEnd], [VacanciesAvailable], [ClasroomName], [Teacher_CourseID], [Day]) VALUES (5, 4, 11, 13, 30, N'VH-207', 3, N'Saturday')
SET IDENTITY_INSERT [dbo].[COURSE&SECTION] OFF
SET IDENTITY_INSERT [dbo].[SECTION] ON 

INSERT [dbo].[SECTION] ([ID], [SectionName]) VALUES (1, N'SX21')
INSERT [dbo].[SECTION] ([ID], [SectionName]) VALUES (2, N'SW21')
INSERT [dbo].[SECTION] ([ID], [SectionName]) VALUES (3, N'WV42')
INSERT [dbo].[SECTION] ([ID], [SectionName]) VALUES (4, N'CV25')
SET IDENTITY_INSERT [dbo].[SECTION] OFF
SET IDENTITY_INSERT [dbo].[TEACHER] ON 

INSERT [dbo].[TEACHER] ([ID], [Profession], [UniversityDegrees], [UserID]) VALUES (2, N'Engineer', N'PhD', 2)
INSERT [dbo].[TEACHER] ([ID], [Profession], [UniversityDegrees], [UserID]) VALUES (3, N'Engineer', N'PhD', 3)
SET IDENTITY_INSERT [dbo].[TEACHER] OFF
SET IDENTITY_INSERT [dbo].[TECHER&COURSE] ON 

INSERT [dbo].[TECHER&COURSE] ([ID], [TeacherID], [CourseID]) VALUES (2, 2, 1)
INSERT [dbo].[TECHER&COURSE] ([ID], [TeacherID], [CourseID]) VALUES (3, 3, 2)
SET IDENTITY_INSERT [dbo].[TECHER&COURSE] OFF
SET IDENTITY_INSERT [dbo].[USER] ON 

INSERT [dbo].[USER] ([ID], [Name], [LastName], [DateOfBirth], [Gender], [UserName], [DNI], [Pasword]) VALUES (1, N'Test', N'Admin', N'19-07-1990', N'masculino', N'admin', 78945612, N'admin')
INSERT [dbo].[USER] ([ID], [Name], [LastName], [DateOfBirth], [Gender], [UserName], [DNI], [Pasword]) VALUES (2, N'Walter', N'Cueva', N'25-08-1980', N'masculino', N'pcsiwcue', 45231688, N'marciano')
INSERT [dbo].[USER] ([ID], [Name], [LastName], [DateOfBirth], [Gender], [UserName], [DNI], [Pasword]) VALUES (3, N'Alfredo', N'Larios', N'28-05-1990', N'masculino', N'pcsialar', 45251677, N'marciano')
SET IDENTITY_INSERT [dbo].[USER] OFF
ALTER TABLE [dbo].[ADMINISTRATOR]  WITH CHECK ADD  CONSTRAINT [FK_ADMINISTRATOR_USER] FOREIGN KEY([UserID])
REFERENCES [dbo].[USER] ([ID])
GO
ALTER TABLE [dbo].[ADMINISTRATOR] CHECK CONSTRAINT [FK_ADMINISTRATOR_USER]
GO
ALTER TABLE [dbo].[COURSE]  WITH CHECK ADD  CONSTRAINT [FK_COURSE_AREA] FOREIGN KEY([AreaID])
REFERENCES [dbo].[AREA] ([ID])
GO
ALTER TABLE [dbo].[COURSE] CHECK CONSTRAINT [FK_COURSE_AREA]
GO
ALTER TABLE [dbo].[COURSE&SECTION]  WITH CHECK ADD  CONSTRAINT [FK_COURSE&SECTION_SECTION] FOREIGN KEY([SectionID])
REFERENCES [dbo].[SECTION] ([ID])
GO
ALTER TABLE [dbo].[COURSE&SECTION] CHECK CONSTRAINT [FK_COURSE&SECTION_SECTION]
GO
ALTER TABLE [dbo].[COURSE&SECTION]  WITH CHECK ADD  CONSTRAINT [FK_COURSE&SECTION_TECHER&COURSE] FOREIGN KEY([Teacher_CourseID])
REFERENCES [dbo].[TECHER&COURSE] ([ID])
GO
ALTER TABLE [dbo].[COURSE&SECTION] CHECK CONSTRAINT [FK_COURSE&SECTION_TECHER&COURSE]
GO
ALTER TABLE [dbo].[DEBT]  WITH CHECK ADD  CONSTRAINT [FK_DEBT_STUDENT] FOREIGN KEY([StudentID])
REFERENCES [dbo].[STUDENT] ([ID])
GO
ALTER TABLE [dbo].[DEBT] CHECK CONSTRAINT [FK_DEBT_STUDENT]
GO
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_CAREER] FOREIGN KEY([CarrerID])
REFERENCES [dbo].[CAREER] ([ID])
GO
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_STUDENT_CAREER]
GO
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_USER] FOREIGN KEY([UserID])
REFERENCES [dbo].[USER] ([ID])
GO
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_STUDENT_USER]
GO
ALTER TABLE [dbo].[STUDENT&&COURSE&SECTION]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT&&COURSE&SECTION_SCORE] FOREIGN KEY([ScoreID])
REFERENCES [dbo].[SCORE] ([ID])
GO
ALTER TABLE [dbo].[STUDENT&&COURSE&SECTION] CHECK CONSTRAINT [FK_STUDENT&&COURSE&SECTION_SCORE]
GO
ALTER TABLE [dbo].[STUDENT&&COURSE&SECTION]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT&COURSE_COURSE] FOREIGN KEY([Course_SectionID])
REFERENCES [dbo].[COURSE&SECTION] ([ID])
GO
ALTER TABLE [dbo].[STUDENT&&COURSE&SECTION] CHECK CONSTRAINT [FK_STUDENT&COURSE_COURSE]
GO
ALTER TABLE [dbo].[STUDENT&&COURSE&SECTION]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT&COURSE_STUDENT] FOREIGN KEY([StudentID])
REFERENCES [dbo].[STUDENT] ([ID])
GO
ALTER TABLE [dbo].[STUDENT&&COURSE&SECTION] CHECK CONSTRAINT [FK_STUDENT&COURSE_STUDENT]
GO
ALTER TABLE [dbo].[TEACHER]  WITH CHECK ADD  CONSTRAINT [FK_TEACHER_USER] FOREIGN KEY([UserID])
REFERENCES [dbo].[USER] ([ID])
GO
ALTER TABLE [dbo].[TEACHER] CHECK CONSTRAINT [FK_TEACHER_USER]
GO
ALTER TABLE [dbo].[TECHER&COURSE]  WITH CHECK ADD  CONSTRAINT [FK_TECHER&COURSE_COURSE] FOREIGN KEY([CourseID])
REFERENCES [dbo].[COURSE] ([ID])
GO
ALTER TABLE [dbo].[TECHER&COURSE] CHECK CONSTRAINT [FK_TECHER&COURSE_COURSE]
GO
ALTER TABLE [dbo].[TECHER&COURSE]  WITH CHECK ADD  CONSTRAINT [FK_TECHER&COURSE_TECHER&COURSE] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[TEACHER] ([ID])
GO
ALTER TABLE [dbo].[TECHER&COURSE] CHECK CONSTRAINT [FK_TECHER&COURSE_TECHER&COURSE]
GO
USE [master]
GO
ALTER DATABASE [Intranet] SET  READ_WRITE 
GO
