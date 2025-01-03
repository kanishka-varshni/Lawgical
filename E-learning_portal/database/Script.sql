USE [master]
GO
/****** Object:  Database [Learner_Trainer]    Script Date: 22-01-2016 3.59.31 PM ******/
CREATE DATABASE [Learner_Trainer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Learner_Trainer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Learner_Trainer.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Learner_Trainer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Learner_Trainer_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Learner_Trainer] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Learner_Trainer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Learner_Trainer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Learner_Trainer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Learner_Trainer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Learner_Trainer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Learner_Trainer] SET ARITHABORT OFF 
GO
ALTER DATABASE [Learner_Trainer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Learner_Trainer] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Learner_Trainer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Learner_Trainer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Learner_Trainer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Learner_Trainer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Learner_Trainer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Learner_Trainer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Learner_Trainer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Learner_Trainer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Learner_Trainer] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Learner_Trainer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Learner_Trainer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Learner_Trainer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Learner_Trainer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Learner_Trainer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Learner_Trainer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Learner_Trainer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Learner_Trainer] SET RECOVERY FULL 
GO
ALTER DATABASE [Learner_Trainer] SET  MULTI_USER 
GO
ALTER DATABASE [Learner_Trainer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Learner_Trainer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Learner_Trainer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Learner_Trainer] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Learner_Trainer', N'ON'
GO
USE [Learner_Trainer]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 22-01-2016 3.59.31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FileUpload]    Script Date: 22-01-2016 3.59.31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileUpload](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileTitle] [varchar](100) NULL,
	[Description] [varchar](100) NULL,
	[Filename] [varchar](100) NULL,
	[Department] [int] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_FileUpload] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 22-01-2016 3.59.31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[staff_id] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[staff_name] [varchar](50) NULL,
	[department] [int] NULL,
	[doj] [varchar](50) NULL,
	[mobile] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[date_of_create] [varchar](50) NULL,
	[status] [varchar](max) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 22-01-2016 3.59.31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [int] NOT NULL,
	[Password] [varchar](50) NULL,
	[stu_name] [varchar](50) NULL,
	[department] [int] NULL,
	[year] [int] NULL,
	[mobile] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[date_of_create] [varchar](50) NULL,
	[status] [varchar](max) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[stu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Learner_Trainer] SET  READ_WRITE 
GO
