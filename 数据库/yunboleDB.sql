USE [master]
GO
/****** Object:  Database [yunboleDB]    Script Date: 2019/12/26 星期四 16:55:01 ******/
CREATE DATABASE [yunboleDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'yunboleDB', FILENAME = N'D:\SQL Server2012\MSSQL11.MSSQLSERVER\MSSQL\DATA\yunboleDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'yunboleDB_log', FILENAME = N'D:\SQL Server2012\MSSQL11.MSSQLSERVER\MSSQL\DATA\yunboleDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [yunboleDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yunboleDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [yunboleDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [yunboleDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [yunboleDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [yunboleDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [yunboleDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [yunboleDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [yunboleDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [yunboleDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [yunboleDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [yunboleDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [yunboleDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [yunboleDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [yunboleDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [yunboleDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [yunboleDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [yunboleDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [yunboleDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [yunboleDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [yunboleDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [yunboleDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [yunboleDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [yunboleDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [yunboleDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [yunboleDB] SET RECOVERY FULL 
GO
ALTER DATABASE [yunboleDB] SET  MULTI_USER 
GO
ALTER DATABASE [yunboleDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [yunboleDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [yunboleDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [yunboleDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'yunboleDB', N'ON'
GO
USE [yunboleDB]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2019/12/26 星期四 16:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[adminID] [varchar](10) NOT NULL,
	[adminPassword] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Collection]    Script Date: 2019/12/26 星期四 16:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collection](
	[recruitID] [bigint] NOT NULL,
	[userID] [bigint] NOT NULL,
 CONSTRAINT [PK_Collection] PRIMARY KEY CLUSTERED 
(
	[recruitID] ASC,
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employ]    Script Date: 2019/12/26 星期四 16:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employ](
	[recruitID] [bigint] NOT NULL,
	[resumeID] [bigint] NOT NULL,
 CONSTRAINT [PK_Employ] PRIMARY KEY CLUSTERED 
(
	[recruitID] ASC,
	[resumeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FirmInfo]    Script Date: 2019/12/26 星期四 16:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FirmInfo](
	[firmID] [bigint] IDENTITY(1,1) NOT NULL,
	[firmName] [varchar](20) NOT NULL,
	[firmFoundtime] [datetime] NOT NULL,
	[firmAdress] [varchar](20) NOT NULL,
	[firmIntro] [varchar](500) NOT NULL,
	[firmCorporation] [varchar](10) NOT NULL,
	[firmDeadline] [datetime] NOT NULL,
	[firmLicense] [varchar](20) NOT NULL,
	[firmPhone] [varchar](11) NOT NULL,
	[firmEmail] [varchar](20) NOT NULL,
	[firmRemark] [varchar](300) NULL,
	[firmPassword] [varchar](20) NOT NULL,
	[firmCredit] [int] NOT NULL,
	[firmLock] [varchar](20) NOT NULL,
	[firmCheck] [varchar](20) NULL,
	[firmPhoto] [varchar](50) NULL,
 CONSTRAINT [PK_FirmInfo] PRIMARY KEY CLUSTERED 
(
	[firmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LeaveInfo]    Script Date: 2019/12/26 星期四 16:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LeaveInfo](
	[leaveID] [bigint] IDENTITY(1,1) NOT NULL,
	[accountID] [varchar](10) NOT NULL,
	[identi] [varchar](5) NOT NULL,
	[leaveEmail] [varchar](20) NOT NULL,
	[leavePhone] [varchar](11) NOT NULL,
	[leavecontent] [varchar](300) NOT NULL,
 CONSTRAINT [PK_LeaveInfo] PRIMARY KEY CLUSTERED 
(
	[leaveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Owner]    Script Date: 2019/12/26 星期四 16:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owner](
	[resumeID] [bigint] NOT NULL,
	[userID] [bigint] NOT NULL,
 CONSTRAINT [PK_Owner] PRIMARY KEY CLUSTERED 
(
	[resumeID] ASC,
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position]    Script Date: 2019/12/26 星期四 16:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Position](
	[postID] [bigint] IDENTITY(1,1) NOT NULL,
	[postName] [varchar](10) NOT NULL,
	[postType] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[postID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecruitInfo]    Script Date: 2019/12/26 星期四 16:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecruitInfo](
	[recruitID] [bigint] IDENTITY(1,1) NOT NULL,
	[recruitProvince] [varchar](10) NOT NULL,
	[recruitCity] [varchar](10) NOT NULL,
	[recruitGender] [varchar](5) NOT NULL,
	[recruitEducation] [varchar](10) NOT NULL,
	[recruitRequest] [varchar](300) NOT NULL,
	[recruitDuty] [varchar](300) NOT NULL,
	[recruitSalary] [int] NULL,
	[recruitDevelop] [varchar](20) NULL,
	[recruitWeal] [varchar](20) NULL,
	[recruitLinkman] [varchar](10) NOT NULL,
	[recruitPhone] [varchar](11) NOT NULL,
	[recruitRemark] [varchar](300) NULL,
	[firmID] [bigint] NOT NULL,
	[postID] [bigint] NOT NULL,
 CONSTRAINT [PK_RecruitInfo] PRIMARY KEY CLUSTERED 
(
	[recruitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ResumeInfo]    Script Date: 2019/12/26 星期四 16:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ResumeInfo](
	[resumeID] [bigint] IDENTITY(1,1) NOT NULL,
	[resumePhoto] [varchar](20) NULL,
	[resumeAdvance] [varchar](500) NOT NULL,
	[resumeHistory] [varchar](500) NOT NULL,
	[prizeHistory] [varchar](500) NULL,
	[resumeAward] [varchar](500) NULL,
	[resumeIntention] [varchar](20) NOT NULL,
	[resumeEvaluation] [varchar](200) NOT NULL,
	[resumeStatus] [varchar](20) NULL,
 CONSTRAINT [PK_ResumeInfo] PRIMARY KEY CLUSTERED 
(
	[resumeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2019/12/26 星期四 16:55:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[userID] [bigint] IDENTITY(1,1) NOT NULL,
	[userAccount] [varchar](20) NOT NULL,
	[userName] [varchar](10) NOT NULL,
	[userGender] [varchar](5) NOT NULL,
	[userAge] [int] NOT NULL,
	[userMarry] [varchar](5) NULL,
	[userEducation] [varchar](10) NOT NULL,
	[userMajor] [varchar](20) NULL,
	[userAddress] [varchar](20) NULL,
	[userPhone] [varchar](11) NOT NULL,
	[userEmail] [varchar](20) NOT NULL,
	[userRemark] [varchar](300) NULL,
	[userPassworrd] [varchar](20) NOT NULL,
	[userCredit] [int] NOT NULL,
	[userLock] [varchar](20) NOT NULL,
	[userPhoto] [varchar](50) NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Collection]  WITH CHECK ADD  CONSTRAINT [FK_Collection_RecruitInfo] FOREIGN KEY([recruitID])
REFERENCES [dbo].[RecruitInfo] ([recruitID])
GO
ALTER TABLE [dbo].[Collection] CHECK CONSTRAINT [FK_Collection_RecruitInfo]
GO
ALTER TABLE [dbo].[Collection]  WITH CHECK ADD  CONSTRAINT [FK_Collection_UserInfo] FOREIGN KEY([userID])
REFERENCES [dbo].[UserInfo] ([userID])
GO
ALTER TABLE [dbo].[Collection] CHECK CONSTRAINT [FK_Collection_UserInfo]
GO
ALTER TABLE [dbo].[Employ]  WITH CHECK ADD  CONSTRAINT [FK_Employ_RecruitInfo] FOREIGN KEY([recruitID])
REFERENCES [dbo].[RecruitInfo] ([recruitID])
GO
ALTER TABLE [dbo].[Employ] CHECK CONSTRAINT [FK_Employ_RecruitInfo]
GO
ALTER TABLE [dbo].[Employ]  WITH CHECK ADD  CONSTRAINT [FK_Employ_ResumeInfo] FOREIGN KEY([resumeID])
REFERENCES [dbo].[ResumeInfo] ([resumeID])
GO
ALTER TABLE [dbo].[Employ] CHECK CONSTRAINT [FK_Employ_ResumeInfo]
GO
ALTER TABLE [dbo].[Owner]  WITH CHECK ADD  CONSTRAINT [FK_Owner_ResumeInfo] FOREIGN KEY([resumeID])
REFERENCES [dbo].[ResumeInfo] ([resumeID])
GO
ALTER TABLE [dbo].[Owner] CHECK CONSTRAINT [FK_Owner_ResumeInfo]
GO
ALTER TABLE [dbo].[Owner]  WITH CHECK ADD  CONSTRAINT [FK_Owner_UserInfo] FOREIGN KEY([userID])
REFERENCES [dbo].[UserInfo] ([userID])
GO
ALTER TABLE [dbo].[Owner] CHECK CONSTRAINT [FK_Owner_UserInfo]
GO
ALTER TABLE [dbo].[RecruitInfo]  WITH CHECK ADD  CONSTRAINT [FK_RecruitInfo_FirmInfo] FOREIGN KEY([firmID])
REFERENCES [dbo].[FirmInfo] ([firmID])
GO
ALTER TABLE [dbo].[RecruitInfo] CHECK CONSTRAINT [FK_RecruitInfo_FirmInfo]
GO
ALTER TABLE [dbo].[RecruitInfo]  WITH CHECK ADD  CONSTRAINT [FK_RecruitInfo_Position] FOREIGN KEY([postID])
REFERENCES [dbo].[Position] ([postID])
GO
ALTER TABLE [dbo].[RecruitInfo] CHECK CONSTRAINT [FK_RecruitInfo_Position]
GO
USE [master]
GO
ALTER DATABASE [yunboleDB] SET  READ_WRITE 
GO
