USE [master]
GO
/****** Object:  Database [CourtBooking]    Script Date: 2/1/2022 8:42:52 AM ******/
CREATE DATABASE [CourtBooking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CourtBooking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CourtBooking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CourtBooking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CourtBooking_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CourtBooking] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CourtBooking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CourtBooking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CourtBooking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CourtBooking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CourtBooking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CourtBooking] SET ARITHABORT OFF 
GO
ALTER DATABASE [CourtBooking] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CourtBooking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CourtBooking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CourtBooking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CourtBooking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CourtBooking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CourtBooking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CourtBooking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CourtBooking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CourtBooking] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CourtBooking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CourtBooking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CourtBooking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CourtBooking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CourtBooking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CourtBooking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CourtBooking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CourtBooking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CourtBooking] SET  MULTI_USER 
GO
ALTER DATABASE [CourtBooking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CourtBooking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CourtBooking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CourtBooking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CourtBooking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CourtBooking] SET QUERY_STORE = OFF
GO
USE [CourtBooking]
GO
/****** Object:  Table [dbo].[bookeddetails]    Script Date: 2/1/2022 8:42:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookeddetails](
	[booking_id] [nvarchar](50) NOT NULL,
	[date_start] [nvarchar](50) NULL,
	[date_end] [nvarchar](50) NULL,
	[courtname] [nvarchar](50) NULL,
 CONSTRAINT [PK_bookeddetails] PRIMARY KEY CLUSTERED 
(
	[booking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contactUs]    Script Date: 2/1/2022 8:42:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactUs](
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[message] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_data]    Script Date: 2/1/2022 8:42:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_data](
	[id] [nvarchar](50) NOT NULL,
	[fname] [nvarchar](50) NULL,
	[lname] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[repassword] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_user_data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[bookeddetails] ([booking_id], [date_start], [date_end], [courtname]) VALUES (N'1000', N'2022-1-2 4:00 PM', N'2022-1-2 5:00 PM', N'Court A')
INSERT [dbo].[bookeddetails] ([booking_id], [date_start], [date_end], [courtname]) VALUES (N'1001', N'2022-1-2 4:00 PM', N'2022-1-2 5:00 PM', N'Court A')
INSERT [dbo].[bookeddetails] ([booking_id], [date_start], [date_end], [courtname]) VALUES (N'1002', N'2022-1-3 3:00 PM', N'2022-1-3 4:00 PM', N'Court A')
INSERT [dbo].[bookeddetails] ([booking_id], [date_start], [date_end], [courtname]) VALUES (N'1003', N'2022-1-19 3:00 PM', N'2022-1-19 4:00 PM', N'Court A')
INSERT [dbo].[bookeddetails] ([booking_id], [date_start], [date_end], [courtname]) VALUES (N'1004', N'2022-1-2 3:00 PM', N'2022-1-2 4:00 PM', N'Court C')
INSERT [dbo].[bookeddetails] ([booking_id], [date_start], [date_end], [courtname]) VALUES (N'1005', N'2022-1-6 9:00 PM', N'2022-1-6 10:00 PM', N'Court B')
INSERT [dbo].[bookeddetails] ([booking_id], [date_start], [date_end], [courtname]) VALUES (N'1006', N'2022-1-26 3:00 PM', N'2022-1-26 4:00 PM', N'Court D')
INSERT [dbo].[bookeddetails] ([booking_id], [date_start], [date_end], [courtname]) VALUES (N'1007', N'2022-1-24 3:00 PM', N'2022-1-24 4:00 PM', N'Court D')
INSERT [dbo].[bookeddetails] ([booking_id], [date_start], [date_end], [courtname]) VALUES (N'1008', N'2022-1-18 3:00 PM', N'2022-1-18 4:00 PM', N'Court A')
INSERT [dbo].[bookeddetails] ([booking_id], [date_start], [date_end], [courtname]) VALUES (N'1009', N'2022-1-14 3:00 PM', N'2022-1-14 4:00 PM', N'Court A')
INSERT [dbo].[bookeddetails] ([booking_id], [date_start], [date_end], [courtname]) VALUES (N'1010', N'2022-1-20 3:00 PM', N'2022-1-20 4:00 PM', N'Court B')
GO
INSERT [dbo].[contactUs] ([name], [email], [message]) VALUES (N'Abu', N'abu12@gmail.com', N'AbuAli')
GO
INSERT [dbo].[user_data] ([id], [fname], [lname], [password], [repassword], [address], [email]) VALUES (N'Naim27', N'Naim', N'Shafiq', N'Naim27', N'Naim27', N'Kuantan', N'naim27@gmail.com')
GO
USE [master]
GO
ALTER DATABASE [CourtBooking] SET  READ_WRITE 
GO
