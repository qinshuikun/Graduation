USE [master]
GO
/****** Object:  Database [ZYCourseSelection]    Script Date: 2020/5/19 16:57:16 ******/
CREATE DATABASE [ZYCourseSelection]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ZYCourseSelection', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ZYCourseSelection.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ZYCourseSelection_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ZYCourseSelection_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ZYCourseSelection] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ZYCourseSelection].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ZYCourseSelection] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET ARITHABORT OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ZYCourseSelection] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ZYCourseSelection] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ZYCourseSelection] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ZYCourseSelection] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ZYCourseSelection] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET RECOVERY FULL 
GO
ALTER DATABASE [ZYCourseSelection] SET  MULTI_USER 
GO
ALTER DATABASE [ZYCourseSelection] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ZYCourseSelection] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ZYCourseSelection] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ZYCourseSelection] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ZYCourseSelection', N'ON'
GO
USE [ZYCourseSelection]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2020/5/19 16:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] NOT NULL,
	[AdminName] [nvarchar](max) NOT NULL,
	[AdminSex] [bit] NOT NULL,
	[AdminAge] [int] NOT NULL,
	[AdminPhone] [int] NOT NULL,
	[AdminBirthday] [datetime] NOT NULL,
	[AdminPwd] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 2020/5/19 16:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] NOT NULL,
	[CourseName] [nvarchar](max) NOT NULL,
	[CourseInfo] [nvarchar](max) NOT NULL,
	[ClassStartTime] [datetime] NOT NULL,
	[CourseAddress] [nvarchar](max) NOT NULL,
	[CourseCredit] [int] NOT NULL,
	[CourseStartTime] [datetime] NOT NULL,
	[CourseEndTime] [datetime] NOT NULL,
	[CourseSumPeople] [int] NOT NULL,
	[CourseNumPeople] [int] NOT NULL,
	[CourseState] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dept]    Script Date: 2020/5/19 16:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dept](
	[DeptID] [int] NOT NULL,
	[DeptName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Dept] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grade]    Script Date: 2020/5/19 16:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeID] [int] NOT NULL,
	[GradeName] [nvarchar](max) NOT NULL,
	[MajorID] [int] NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[GradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Major]    Script Date: 2020/5/19 16:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[MajorID] [int] NOT NULL,
	[MajorName] [nvarchar](max) NOT NULL,
	[DeptID] [int] NULL,
 CONSTRAINT [PK_Major] PRIMARY KEY CLUSTERED 
(
	[MajorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Message]    Script Date: 2020/5/19 16:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessageID] [int] NOT NULL,
	[MessageText] [nvarchar](max) NOT NULL,
	[MessageTime] [datetime] NOT NULL,
	[MessageState] [int] NOT NULL,
	[StudentID] [int] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SelectCourse]    Script Date: 2020/5/19 16:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelectCourse](
	[SelectCourseID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[TeacherID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[SelectCourseNum] [int] NOT NULL,
 CONSTRAINT [PK_SelectCourse] PRIMARY KEY CLUSTERED 
(
	[SelectCourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 2020/5/19 16:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] NOT NULL,
	[StudentName] [nvarchar](max) NOT NULL,
	[StudentSex] [bit] NOT NULL,
	[StudentAge] [int] NOT NULL,
	[StudentBirthday] [datetime] NOT NULL,
	[StudentPhone] [int] NULL,
	[StudentPassword] [nvarchar](max) NOT NULL,
	[GradeID] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tea_Grade]    Script Date: 2020/5/19 16:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tea_Grade](
	[Tea_GradeID] [int] IDENTITY(1,1) NOT NULL,
	[TeacherID] [int] NULL,
	[StudentID] [int] NULL,
 CONSTRAINT [PK_Tea_Grade] PRIMARY KEY CLUSTERED 
(
	[Tea_GradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2020/5/19 16:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherID] [int] NOT NULL,
	[TeacherName] [nvarchar](max) NOT NULL,
	[TeacherSex] [bit] NOT NULL,
	[TeacherAge] [int] NOT NULL,
	[TeacherBirthday] [datetime] NOT NULL,
	[TeacherPhone] [int] NOT NULL,
	[MajorID] [int] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Major] FOREIGN KEY([MajorID])
REFERENCES [dbo].[Major] ([MajorID])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Major]
GO
ALTER TABLE [dbo].[Major]  WITH CHECK ADD  CONSTRAINT [FK_Major_Dept] FOREIGN KEY([DeptID])
REFERENCES [dbo].[Dept] ([DeptID])
GO
ALTER TABLE [dbo].[Major] CHECK CONSTRAINT [FK_Major_Dept]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Student]
GO
ALTER TABLE [dbo].[SelectCourse]  WITH CHECK ADD  CONSTRAINT [FK_SelectCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[SelectCourse] CHECK CONSTRAINT [FK_SelectCourse_Course]
GO
ALTER TABLE [dbo].[SelectCourse]  WITH CHECK ADD  CONSTRAINT [FK_SelectCourse_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[SelectCourse] CHECK CONSTRAINT [FK_SelectCourse_Student]
GO
ALTER TABLE [dbo].[SelectCourse]  WITH CHECK ADD  CONSTRAINT [FK_SelectCourse_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([TeacherID])
GO
ALTER TABLE [dbo].[SelectCourse] CHECK CONSTRAINT [FK_SelectCourse_Teacher]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Grade] FOREIGN KEY([GradeID])
REFERENCES [dbo].[Grade] ([GradeID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Grade]
GO
ALTER TABLE [dbo].[Tea_Grade]  WITH CHECK ADD  CONSTRAINT [FK_Tea_Grade_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Tea_Grade] CHECK CONSTRAINT [FK_Tea_Grade_Student]
GO
ALTER TABLE [dbo].[Tea_Grade]  WITH CHECK ADD  CONSTRAINT [FK_Tea_Grade_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([TeacherID])
GO
ALTER TABLE [dbo].[Tea_Grade] CHECK CONSTRAINT [FK_Tea_Grade_Teacher]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Major] FOREIGN KEY([MajorID])
REFERENCES [dbo].[Major] ([MajorID])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Major]
GO
USE [master]
GO
ALTER DATABASE [ZYCourseSelection] SET  READ_WRITE 
GO
