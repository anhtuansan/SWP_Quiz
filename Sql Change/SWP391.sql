USE [master]
GO
/****** Object:  Database [SWP391_G6]    Script Date: 5/27/2024 10:14:21 AM ******/
CREATE DATABASE [SWP391_G6]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP391_G6', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SWP391_G6.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP391_G6_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SWP391_G6_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SWP391_G6] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP391_G6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP391_G6] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP391_G6] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP391_G6] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP391_G6] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP391_G6] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP391_G6] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SWP391_G6] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP391_G6] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP391_G6] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP391_G6] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP391_G6] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP391_G6] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP391_G6] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP391_G6] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP391_G6] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SWP391_G6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP391_G6] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP391_G6] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP391_G6] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP391_G6] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP391_G6] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP391_G6] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP391_G6] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SWP391_G6] SET  MULTI_USER 
GO
ALTER DATABASE [SWP391_G6] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP391_G6] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP391_G6] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP391_G6] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP391_G6] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP391_G6] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SWP391_G6] SET QUERY_STORE = ON
GO
ALTER DATABASE [SWP391_G6] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SWP391_G6]
GO
/****** Object:  Table [dbo].[answers]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create database [SWP391_G6]
CREATE TABLE [dbo].[answers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[answer_detail] [varchar](max) NULL,
	[created_at] [date] NULL,
	[update_at] [date] NULL,
	[creator_id] [int] NULL,
	[is_correct] [int] NULL,
 CONSTRAINT [PK_answers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blogs]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blogs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[author_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[content] [varchar](max) NULL,
	[status] [int] NULL,
	[thumbnail] [varchar](max) NULL,
	[briefinfo] [varchar](max) NULL,
 CONSTRAINT [PK_blogs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NULL,
	[created_by] [int] NOT NULL,
	[updated_by] [int] NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_has_quiz]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_has_quiz](
	[lesson_id] [int] NULL,
	[quiz_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lessons]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lessons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[creator_id] [int] NULL,
	[update_at] [date] NULL,
	[created_at] [date] NULL,
	[status] [int] NULL,
	[content] [text] NULL,
	[media] [nvarchar](255) NULL,
 CONSTRAINT [PK_lessons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payments]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[method] [varchar](max) NULL,
	[payment_date] [date] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_payments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_has_answer]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_has_answer](
	[question_id] [int] NULL,
	[answer_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questions]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detail] [varchar](max) NULL,
 CONSTRAINT [PK_questions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quiz_has_question]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quiz_has_question](
	[quiz_id] [int] NULL,
	[question_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quizs]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quizs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[created_at] [date] NULL,
	[update_ad] [date] NULL,
	[creator_id] [varchar](max) NULL,
	[score] [float] NULL,
	[time] [int] NULL,
 CONSTRAINT [PK_quizs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] NOT NULL,
	[name] [varchar](max) NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject_has_lesson]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject_has_lesson](
	[subject_id] [int] NULL,
	[lesson_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjects]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[creator_id] [int] NULL,
	[creater_at] [date] NULL,
	[update_at] [date] NULL,
	[status] [int] NULL,
	[img] [varchar](max) NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_subjects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_has_subject]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_has_subject](
	[user_id] [int] NULL,
	[subject_id] [int] NULL,
	[start_date] [nchar](10) NULL,
	[end_date] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 5/27/2024 10:14:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](max) NULL,
	[last_name] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[phone_number] [varchar](max) NULL,
	[gender] [int] NULL,
	[dob] [date] NULL,
	[profile_img] [varchar](max) NULL,
	[username] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[role_id] [int] NULL,
	[status_id] [int] NULL,
	[token] [varchar](30) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[blogs] ON 

INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (7, N'Latest Tech Trends', 3, CAST(N'2024-05-01T10:00:00.000' AS DateTime), CAST(N'2024-05-01T10:00:00.000' AS DateTime), N'Content about latest technology trends...', 1, N'thumbnail1.jpg', N'A brief about latest technology trends.')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (8, N'Healthy Living Tips', 4, CAST(N'2024-05-02T11:00:00.000' AS DateTime), CAST(N'2024-05-02T11:00:00.000' AS DateTime), N'Content about healthy living tips...', 1, N'thumbnail2.jpg', N'A brief about healthy living tips.')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (9, N'My First Blog Post', 4, CAST(N'2024-05-22T10:00:00.000' AS DateTime), CAST(N'2024-05-22T10:00:00.000' AS DateTime), N'This is the content of my first blog post.', 1, N'thumbnail.jpg', N'A brief introduction to my first blog post.')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (10, N'My First Blog Post', 3, CAST(N'2024-05-22T10:00:00.000' AS DateTime), CAST(N'2024-05-22T10:00:00.000' AS DateTime), N'This is the content of my first blog post.', 1, N'thumbnail.jpg', N'A brief introduction to my first blog post.')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (11, N'My First Blog Post', 3, CAST(N'2024-05-22T10:00:00.000' AS DateTime), CAST(N'2024-05-22T10:00:00.000' AS DateTime), N'This is the content of my first blog post.', 1, N'thumbnail.jpg', N'A brief introduction to my first blog post.')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (12, N'My First Blog Post', 3, CAST(N'2024-05-22T10:00:00.000' AS DateTime), CAST(N'2024-05-22T10:00:00.000' AS DateTime), N'This is the content of my first blog post.', 1, N'thumbnail.jpg', N'A brief introduction to my first blog post.')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (13, N'My First Blog Post', 4, CAST(N'2024-05-22T10:00:00.000' AS DateTime), CAST(N'2024-05-22T10:00:00.000' AS DateTime), N'This is the content of my first blog post.', 1, N'thumbnail.jpg', N'A brief introduction to my first blog post.')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (14, N'My First Blog Post', 4, CAST(N'2024-05-22T10:00:00.000' AS DateTime), CAST(N'2024-05-22T10:00:00.000' AS DateTime), N'This is the content of my first blog post.', 1, N'thumbnail.jpg', N'A brief introduction to my first blog post.')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (15, N'My First Blog Post', 4, CAST(N'2024-05-22T10:00:00.000' AS DateTime), CAST(N'2024-05-22T10:00:00.000' AS DateTime), N'This is the content of my first blog post.', 1, N'thumbnail.jpg', N'A brief introduction to my first blog post.')
SET IDENTITY_INSERT [dbo].[blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name], [created_at], [updated_at], [created_by], [updated_by]) VALUES (8, N'Technology', CAST(N'2024-05-01T00:00:00.000' AS DateTime), CAST(N'2024-05-01T00:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[categories] ([id], [name], [created_at], [updated_at], [created_by], [updated_by]) VALUES (9, N'Health', CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), 4, 4)
INSERT [dbo].[categories] ([id], [name], [created_at], [updated_at], [created_by], [updated_by]) VALUES (10, N'Technology', CAST(N'2024-05-01T00:00:00.000' AS DateTime), CAST(N'2024-05-01T00:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[categories] ([id], [name], [created_at], [updated_at], [created_by], [updated_by]) VALUES (11, N'Health', CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), 4, 4)
INSERT [dbo].[categories] ([id], [name], [created_at], [updated_at], [created_by], [updated_by]) VALUES (12, N'Technology', CAST(N'2024-05-01T00:00:00.000' AS DateTime), CAST(N'2024-05-01T00:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[categories] ([id], [name], [created_at], [updated_at], [created_by], [updated_by]) VALUES (13, N'Health', CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), 4, 4)
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([id], [name]) VALUES (1, N'User')
INSERT [dbo].[roles] ([id], [name]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
INSERT [dbo].[status] ([id], [name]) VALUES (1, N'Unactive')
INSERT [dbo].[status] ([id], [name]) VALUES (2, N'Active')
INSERT [dbo].[status] ([id], [name]) VALUES (3, N'Block')
GO
SET IDENTITY_INSERT [dbo].[subjects] ON 

INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description]) VALUES (2, N'Math', 4, CAST(N'2024-04-10' AS Date), CAST(N'2024-04-15' AS Date), 1, N'https://haenglish.edu.vn/wp-content/uploads/2023/10/161720d2d73196098f3bc7896777216ff157c89d-1651561144-5c8764f4-1920x1280-1.jpg', N'Mathematics is a fundamental and ancient discipline that has been central to human knowledge and civilization for millennia. It is the study of numbers, quantities, shapes, and patterns, and it provides a framework for understanding and describing the world around us. Mathematics can be broadly categorized into several branches, each with its own unique focus and methods')
INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description]) VALUES (6, N'Physics', 3, CAST(N'2024-05-25' AS Date), CAST(N'2024-05-25' AS Date), 1, N'https://media.geeksforgeeks.org/wp-content/uploads/20240502160218/Physics.webp', N'Physics is a fundamental natural science that seeks to understand the principles governing the behavior of matter and energy in the universe. It explores a wide range of phenomena, from the smallest subatomic particles to the vastness of galaxies and the universe itself. Physics aims to uncover the laws of nature and explain how the world works at every scale.')
INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description]) VALUES (7, N'Chemistry', 4, CAST(N'2024-05-25' AS Date), CAST(N'2024-05-25' AS Date), 1, N'https://www.thoughtco.com/thmb/6MsMmUK27akFhb8i89kj95J5iko=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-545286316-433dd345105e4c6ebe4cdd8d2317fdaa.jpg', N'Chemistry is the scientific study of matter, its properties, composition, structure, and the changes it undergoes during chemical reactions. Often referred to as the "central science," chemistry bridges the physical sciences with life sciences and applied sciences, playing a crucial role in understanding the material world and in the development of new technologies.')
INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description]) VALUES (8, N'Biology', 3, CAST(N'2024-05-25' AS Date), CAST(N'2024-05-25' AS Date), 1, N'https://as1.ftcdn.net/v2/jpg/04/07/37/74/1000_F_407377427_cAi21m47R3TLy1vulqo0W7P9aWV9eiQ7.jpg', N'Biology is the scientific study of life and living organisms, encompassing their structure, function, growth, evolution, distribution, and taxonomy. As one of the natural sciences, biology seeks to understand the living world at all levels, from molecules and cells to ecosystems and the biosphere. The field is vast and diverse, intersecting with other sciences such as chemistry, physics, and environmental science.')
INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description]) VALUES (9, N'History', 5, CAST(N'2024-05-25' AS Date), CAST(N'2024-05-25' AS Date), 1, N'https://haenglish.edu.vn/wp-content/uploads/2023/08/ielts-speaking-history-1.jpg', N'History is the study of past events, particularly in human affairs. It encompasses a wide range of topics, including the development of civilizations, the rise and fall of empires, social and cultural transformations, and the lives of influential individuals. By examining historical records, artifacts, and other sources, historians seek to understand how past events have shaped the present and can inform the future.')
INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description]) VALUES (10, N'English', 5, CAST(N'2024-05-25' AS Date), CAST(N'2024-05-25' AS Date), 1, N'https://media.istockphoto.com/id/1047570732/vi/vec-to/ti%E1%BA%BFng-anh.jpg?s=612x612&w=0&k=20&c=TeGfoGzmcloQfFxk2z7EhPw4KX4b3ys7f4s3aaAqtzg=', N'English is a West Germanic language that originated in medieval England and is now one of the most widely spoken languages in the world. It serves as the primary or secondary language in many countries and is an official language of international institutions such as the United Nations and the European Union. English is renowned for its rich vocabulary, complex grammar, and the diversity of its dialects and accents.')
SET IDENTITY_INSERT [dbo].[subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [first_name], [last_name], [email], [phone_number], [gender], [dob], [profile_img], [username], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (3, N'John', N'Doe', N'john.doe@example.com', N'1234567890', 1, CAST(N'1985-01-01' AS Date), N'images/pic-1.jpg', N'johndoe', N'password123', CAST(N'2024-05-01' AS Date), CAST(N'2024-05-01' AS Date), 1, 1, N'token123')
INSERT [dbo].[users] ([id], [first_name], [last_name], [email], [phone_number], [gender], [dob], [profile_img], [username], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (4, N'Jane', N'Smith', N'jane.smith@example.com', N'0987654321', 2, CAST(N'1990-02-02' AS Date), N'images/pic-1.jpg', N'janesmith', N'password456', CAST(N'2024-05-02' AS Date), CAST(N'2024-05-02' AS Date), 2, 1, N'token456')
INSERT [dbo].[users] ([id], [first_name], [last_name], [email], [phone_number], [gender], [dob], [profile_img], [username], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (5, N'John', N'Doe', N'john.doe@example.com', N'1234567890', 1, CAST(N'1985-01-01' AS Date), N'images/pic-1.jpg', N'johndoe', N'password123', CAST(N'2024-05-01' AS Date), CAST(N'2024-05-01' AS Date), 1, 1, N'token123')
INSERT [dbo].[users] ([id], [first_name], [last_name], [email], [phone_number], [gender], [dob], [profile_img], [username], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (6, N'Jane', N'Smith', N'jane.smith@example.com', N'0987654321', 2, CAST(N'1990-02-02' AS Date), N'images/pic-1.jpg', N'janesmith', N'password456', CAST(N'2024-05-02' AS Date), CAST(N'2024-05-02' AS Date), 2, 1, N'token456')
INSERT [dbo].[users] ([id], [first_name], [last_name], [email], [phone_number], [gender], [dob], [profile_img], [username], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (7, N'John', N'Doe', N'john.doe@example.com', N'1234567890', 1, CAST(N'1985-01-01' AS Date), N'images/pic-1.jpg', N'johndoe', N'password123', CAST(N'2024-05-01' AS Date), CAST(N'2024-05-01' AS Date), 1, 1, N'token123')
INSERT [dbo].[users] ([id], [first_name], [last_name], [email], [phone_number], [gender], [dob], [profile_img], [username], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (8, N'Jane', N'Smith', N'jane.smith@example.com', N'0987654321', 2, CAST(N'1990-02-02' AS Date), N'images/pic-1.jpg', N'janesmith', N'password456', CAST(N'2024-05-02' AS Date), CAST(N'2024-05-02' AS Date), 2, 1, N'token456')
INSERT [dbo].[users] ([id], [first_name], [last_name], [email], [phone_number], [gender], [dob], [profile_img], [username], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (9, N'Teedy', N'Smith', N'vannghibg03@gmail.com', N'0364920299', 1, CAST(N'2003-08-29' AS Date), N'images/pic-1.jpg', N'nghibg2003', N'6361614211bff9a6d7d432cc7c29a15b63f18e519aa846f6262e6771bb3fcf9a35bcece7ad325dc0d84bf6ab2781e37cbfc2bc1c2fcd27e4c8e62beecbf133b0', CAST(N'2024-05-24' AS Date), CAST(N'2024-05-24' AS Date), 1, 2, N'jESFDqVK1PXcmMlHSwO56g2GgtcTi5')
INSERT [dbo].[users] ([id], [first_name], [last_name], [email], [phone_number], [gender], [dob], [profile_img], [username], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (10, N'an', N'shelter', N'phuonglan35@gmail.com', N'0399506258', 1, CAST(N'2003-02-02' AS Date), N'images/pic-1.jpg', N'user1', N'2fc2f24239ae0376aba5129007a513ae4e0f13bc8307d68c2f6e15a36457cb03a20318d6c4f194f752660b30315f68be2e2d40d191439b603c262dd91cb8dd84', CAST(N'2024-05-26' AS Date), CAST(N'2024-05-26' AS Date), 1, 2, N'FxwBqdgsqWqwkOgxaQezipfFcDoF71')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[blogs]  WITH CHECK ADD  CONSTRAINT [FK_blogs_users] FOREIGN KEY([author_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[blogs] CHECK CONSTRAINT [FK_blogs_users]
GO
ALTER TABLE [dbo].[categories]  WITH CHECK ADD  CONSTRAINT [FK_categories_users] FOREIGN KEY([created_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[categories] CHECK CONSTRAINT [FK_categories_users]
GO
ALTER TABLE [dbo].[categories]  WITH CHECK ADD  CONSTRAINT [FK_categories_users1] FOREIGN KEY([updated_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[categories] CHECK CONSTRAINT [FK_categories_users1]
GO
ALTER TABLE [dbo].[lesson_has_quiz]  WITH CHECK ADD  CONSTRAINT [FK_lesson_has_quiz_lessons] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[lessons] ([id])
GO
ALTER TABLE [dbo].[lesson_has_quiz] CHECK CONSTRAINT [FK_lesson_has_quiz_lessons]
GO
ALTER TABLE [dbo].[lesson_has_quiz]  WITH CHECK ADD  CONSTRAINT [FK_lesson_has_quiz_quizs] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[quizs] ([id])
GO
ALTER TABLE [dbo].[lesson_has_quiz] CHECK CONSTRAINT [FK_lesson_has_quiz_quizs]
GO
ALTER TABLE [dbo].[payments]  WITH CHECK ADD  CONSTRAINT [FK_payments_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[payments] CHECK CONSTRAINT [FK_payments_users]
GO
ALTER TABLE [dbo].[question_has_answer]  WITH CHECK ADD  CONSTRAINT [FK_question_has_answer_answers] FOREIGN KEY([answer_id])
REFERENCES [dbo].[answers] ([id])
GO
ALTER TABLE [dbo].[question_has_answer] CHECK CONSTRAINT [FK_question_has_answer_answers]
GO
ALTER TABLE [dbo].[question_has_answer]  WITH CHECK ADD  CONSTRAINT [FK_question_has_answer_questions] FOREIGN KEY([question_id])
REFERENCES [dbo].[questions] ([id])
GO
ALTER TABLE [dbo].[question_has_answer] CHECK CONSTRAINT [FK_question_has_answer_questions]
GO
ALTER TABLE [dbo].[quiz_has_question]  WITH CHECK ADD  CONSTRAINT [FK_quiz_has_question_questions] FOREIGN KEY([question_id])
REFERENCES [dbo].[questions] ([id])
GO
ALTER TABLE [dbo].[quiz_has_question] CHECK CONSTRAINT [FK_quiz_has_question_questions]
GO
ALTER TABLE [dbo].[quiz_has_question]  WITH CHECK ADD  CONSTRAINT [FK_quiz_has_question_quizs] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[quizs] ([id])
GO
ALTER TABLE [dbo].[quiz_has_question] CHECK CONSTRAINT [FK_quiz_has_question_quizs]
GO
ALTER TABLE [dbo].[subject_has_lesson]  WITH CHECK ADD  CONSTRAINT [FK_subject_has_lesson_lessons] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[lessons] ([id])
GO
ALTER TABLE [dbo].[subject_has_lesson] CHECK CONSTRAINT [FK_subject_has_lesson_lessons]
GO
ALTER TABLE [dbo].[subject_has_lesson]  WITH CHECK ADD  CONSTRAINT [FK_subject_has_lesson_subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[subjects] ([id])
GO
ALTER TABLE [dbo].[subject_has_lesson] CHECK CONSTRAINT [FK_subject_has_lesson_subjects]
GO
ALTER TABLE [dbo].[subjects]  WITH CHECK ADD  CONSTRAINT [fk_user] FOREIGN KEY([creator_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[subjects] CHECK CONSTRAINT [fk_user]
GO
ALTER TABLE [dbo].[user_has_subject]  WITH CHECK ADD  CONSTRAINT [FK_user_has_subject_subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[subjects] ([id])
GO
ALTER TABLE [dbo].[user_has_subject] CHECK CONSTRAINT [FK_user_has_subject_subjects]
GO
ALTER TABLE [dbo].[user_has_subject]  WITH CHECK ADD  CONSTRAINT [FK_user_has_subject_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[user_has_subject] CHECK CONSTRAINT [FK_user_has_subject_users]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_roles]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_status]
GO
USE [master]
GO
ALTER DATABASE [SWP391_G6] SET  READ_WRITE 
GO
