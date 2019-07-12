USE [Test2]
GO
/****** Object:  Table [dbo].[ActionInfo]    Script Date: 2019/7/10 16:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActionType] [nvarchar](256) NOT NULL,
	[ActionName] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](512) NOT NULL,
	[HttpMethod] [nvarchar](512) NOT NULL,
	[SubTime] [datetime] NOT NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ActionInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceCmd]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceCmd](
	[Id] [varchar](50) NOT NULL,
	[DeviceName] [int] NOT NULL,
	[CmdCode] [char](1) NOT NULL,
	[CmdData] [nvarchar](255) NULL,
	[CreateTime] [datetime] NULL,
	[CmdState] [nvarchar](255) NOT NULL,
	[FinishTime] [datetime] NULL,
 CONSTRAINT [PK_DeviceCmd] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceHistoryData]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceHistoryData](
	[Id] [varchar](50) NOT NULL,
	[DeviceName] [int] NOT NULL,
	[NowOutput] [int] NOT NULL,
	[StatusFlag] [nvarchar](255) NOT NULL,
	[SingleProgress] [int] NOT NULL,
	[StartTime] [datetime] NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_DEVICEHISTORYDATA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceHistoryWarning]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceHistoryWarning](
	[Id] [varchar](50) NOT NULL,
	[DeviceName] [int] NOT NULL,
	[WarningMessage] [nchar](10) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[StopTime] [datetime] NULL,
 CONSTRAINT [PK_DEVICEHISTORYWARNING] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceInfo]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceInfo](
	[Id] [varchar](50) NOT NULL,
	[DeviceName] [int] NOT NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_DEVICEINFO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceRealtimeData]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceRealtimeData](
	[Id] [varchar](50) NOT NULL,
	[DeviceName] [int] NOT NULL,
	[StatusFlag] [nvarchar](255) NOT NULL,
	[SingleProgress] [int] NOT NULL,
	[NowOutput] [int] NOT NULL,
	[StartTime] [datetime] NULL,
	[StopTime] [datetime] NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_DEVICEREALTIMEDATA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceRealtimeWarning]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceRealtimeWarning](
	[Id] [varchar](50) NOT NULL,
	[DeviceName] [int] NOT NULL,
	[WarningMessage] [nvarchar](255) NOT NULL,
	[StartTime] [datetime] NOT NULL,
 CONSTRAINT [PK_DEVICEREALTIMEWARNING] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupInfo]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GName] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
	[SubTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GroupInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationLog]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UName] [nvarchar](256) NOT NULL,
	[ActionType] [nvarchar](256) NOT NULL,
	[ActionName] [nvarchar](256) NOT NULL,
	[OperationObj] [nvarchar](max) NOT NULL,
	[Ip] [nvarchar](max) NOT NULL,
	[Mac] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[SubTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OperationLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_GroupInfo_DeviceInfo]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_GroupInfo_DeviceInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupInfoId] [int] NOT NULL,
	[DeviceInfoId] [varchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_R_GroupInfo_DeviceInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_RoleInfo_ActionInfo]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_RoleInfo_ActionInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleInfoId] [int] NOT NULL,
	[ActionInfoId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_R_RoleInfo_ActionInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_UserInfo_RoleInfo]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_UserInfo_RoleInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserInfoId] [int] NOT NULL,
	[RoleInfoId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_R_UserInfo_RoleInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleInfo]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](32) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Remark] [nvarchar](64) NULL,
	[SubTime] [datetime] NOT NULL,
 CONSTRAINT [PK_RoleInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamInfo]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TName] [nvarchar](256) NULL,
	[StartTime] [time](7) NULL,
	[StopTime] [time](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[SubTime] [datetime] NOT NULL,
 CONSTRAINT [PK_TeamInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2019/7/10 16:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UCode] [nvarchar](32) NOT NULL,
	[UName] [nvarchar](32) NULL,
	[Pwd] [nvarchar](64) NOT NULL,
	[StatusFlag] [bit] NOT NULL,
	[Remark] [nvarchar](256) NULL,
	[Gender] [nvarchar](64) NULL,
	[Picture] [nvarchar](512) NULL,
	[Phone] [nvarchar](256) NULL,
	[Email] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[SubTime] [datetime] NOT NULL,
	[TeamInfoId] [int] NOT NULL,
	[GroupInfoId] [int] NOT NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ActionInfo] ON 

INSERT [dbo].[ActionInfo] ([Id], [ActionType], [ActionName], [Url], [HttpMethod], [SubTime], [IsDeleted]) VALUES (1, N'设备管理', N'查看设备', N'/Device/Delete', N'POST', CAST(N'2018-12-17T11:15:18.000' AS DateTime), NULL)
INSERT [dbo].[ActionInfo] ([Id], [ActionType], [ActionName], [Url], [HttpMethod], [SubTime], [IsDeleted]) VALUES (2, N'设备管理', N'删除设备', N'/Device/IsLayeradddevice', N'GET', CAST(N'2018-12-17T15:18:16.000' AS DateTime), NULL)
INSERT [dbo].[ActionInfo] ([Id], [ActionType], [ActionName], [Url], [HttpMethod], [SubTime], [IsDeleted]) VALUES (3, N'设备管理', N'添加设备', N'/Device/Devicedetail', N'GET', CAST(N'2018-12-17T15:18:16.000' AS DateTime), NULL)
INSERT [dbo].[ActionInfo] ([Id], [ActionType], [ActionName], [Url], [HttpMethod], [SubTime], [IsDeleted]) VALUES (4, N'人员管理', N'查找设备', N'/Device', N'GET', CAST(N'2018-12-19T15:16:18.000' AS DateTime), NULL)
INSERT [dbo].[ActionInfo] ([Id], [ActionType], [ActionName], [Url], [HttpMethod], [SubTime], [IsDeleted]) VALUES (5, N'人员管理', N'人员查看', N'/User', N'GET', CAST(N'2018-12-19T15:15:18.000' AS DateTime), NULL)
INSERT [dbo].[ActionInfo] ([Id], [ActionType], [ActionName], [Url], [HttpMethod], [SubTime], [IsDeleted]) VALUES (6, N'报警管理', N'人员删除', N'/User', N'GET', CAST(N'2018-12-19T15:16:18.000' AS DateTime), NULL)
INSERT [dbo].[ActionInfo] ([Id], [ActionType], [ActionName], [Url], [HttpMethod], [SubTime], [IsDeleted]) VALUES (7, N'报警管理', N'报警查看', N'/Uins', N'GET', CAST(N'2018-12-19T16:18:19.000' AS DateTime), NULL)
INSERT [dbo].[ActionInfo] ([Id], [ActionType], [ActionName], [Url], [HttpMethod], [SubTime], [IsDeleted]) VALUES (8, N'系统管理', N'报警删除', N'/UserInfo/GetAllUserInfos', N'GET', CAST(N'2018-12-19T15:16:18.000' AS DateTime), NULL)
INSERT [dbo].[ActionInfo] ([Id], [ActionType], [ActionName], [Url], [HttpMethod], [SubTime], [IsDeleted]) VALUES (9, N'系统管理', N'编辑员工', N'/UserInfo', N'GET', CAST(N'2018-12-19T19:18:16.000' AS DateTime), NULL)
INSERT [dbo].[ActionInfo] ([Id], [ActionType], [ActionName], [Url], [HttpMethod], [SubTime], [IsDeleted]) VALUES (10, N'系统管理', N'删除员工', N'/UserInfo', N'GET', CAST(N'2018-12-19T18:19:20.000' AS DateTime), NULL)
INSERT [dbo].[ActionInfo] ([Id], [ActionType], [ActionName], [Url], [HttpMethod], [SubTime], [IsDeleted]) VALUES (11, N'系统管理', N'添加员工', N'/UserInfo', N'GET', CAST(N'2018-12-19T19:16:15.000' AS DateTime), NULL)
INSERT [dbo].[ActionInfo] ([Id], [ActionType], [ActionName], [Url], [HttpMethod], [SubTime], [IsDeleted]) VALUES (12, N'系统管理', N'查找员工', N'、', N'dfde', CAST(N'2018-12-20T15:16:18.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ActionInfo] OFF
INSERT [dbo].[DeviceHistoryData] ([Id], [DeviceName], [NowOutput], [StatusFlag], [SingleProgress], [StartTime], [CreateTime]) VALUES (N'8d1334f2-555a-4228-8ed0-9b8533aa08c7', 123, 0, N'离线中', 0, CAST(N'2019-07-10T10:10:46.007' AS DateTime), CAST(N'2019-07-10T10:10:57.833' AS DateTime))
INSERT [dbo].[DeviceHistoryData] ([Id], [DeviceName], [NowOutput], [StatusFlag], [SingleProgress], [StartTime], [CreateTime]) VALUES (N'9759dd53-e6f9-45a5-bdc3-c77deba66522', 123, 0, N'已上线', 0, CAST(N'2019-07-10T10:10:46.180' AS DateTime), CAST(N'2019-07-10T10:10:46.180' AS DateTime))
INSERT [dbo].[DeviceHistoryData] ([Id], [DeviceName], [NowOutput], [StatusFlag], [SingleProgress], [StartTime], [CreateTime]) VALUES (N'fbb0c900-c396-4fde-9cde-241f1affe0fa', 123, 0, N'已上线', 0, CAST(N'2019-07-10T10:10:45.127' AS DateTime), CAST(N'2019-07-10T10:10:45.127' AS DateTime))
INSERT [dbo].[DeviceInfo] ([Id], [DeviceName], [CreateTime]) VALUES (N'19ac1392-7e30-40a1-af74-253d2031648c', 123, CAST(N'2019-07-10T10:10:44.340' AS DateTime))
INSERT [dbo].[DeviceRealtimeData] ([Id], [DeviceName], [StatusFlag], [SingleProgress], [NowOutput], [StartTime], [StopTime], [CreateTime]) VALUES (N'42bf068a-9345-4ff3-96a7-e1ac152747fb', 123, N'离线中', 0, 0, CAST(N'2019-07-10T10:10:46.007' AS DateTime), CAST(N'2019-07-10T10:10:57.723' AS DateTime), CAST(N'2019-07-10T10:10:57.723' AS DateTime))
SET IDENTITY_INSERT [dbo].[GroupInfo] ON 

INSERT [dbo].[GroupInfo] ([Id], [GName], [IsDeleted], [SubTime]) VALUES (1, N'未设置', 0, CAST(N'2019-01-06T12:15:19.000' AS DateTime))
INSERT [dbo].[GroupInfo] ([Id], [GName], [IsDeleted], [SubTime]) VALUES (1005, N'1组', 0, CAST(N'2019-01-19T19:03:38.700' AS DateTime))
INSERT [dbo].[GroupInfo] ([Id], [GName], [IsDeleted], [SubTime]) VALUES (1006, N'2组', 0, CAST(N'2019-01-19T19:03:43.387' AS DateTime))
INSERT [dbo].[GroupInfo] ([Id], [GName], [IsDeleted], [SubTime]) VALUES (1007, N'3组', 0, CAST(N'2019-01-19T19:03:47.683' AS DateTime))
SET IDENTITY_INSERT [dbo].[GroupInfo] OFF
SET IDENTITY_INSERT [dbo].[OperationLog] ON 

INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6065, N'admin', N'系统管理', N'添加员工', N'老张', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:28:16.987' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6066, N'admin', N'系统管理', N'添加员工', N'老王', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:28:28.940' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6067, N'admin', N'系统管理', N'添加员工', N'老李', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:28:46.120' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6068, N'admin', N'设备管理', N'查看设备', N'0003', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:33:53.647' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6069, N'admin', N'设备管理', N'查看设备', N'0007', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:34:11.383' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6070, N'admin', N'设备管理', N'查看设备', N'0007', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:35:12.320' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6071, N'admin', N'设备管理', N'查看设备', N'0006', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:36:01.153' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6072, N'admin', N'设备管理', N'查看设备', N'0007', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:36:10.470' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6073, N'admin', N'设备管理', N'查看设备', N'0006', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:36:17.613' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6074, N'admin', N'设备管理', N'查看设备', N'0007', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:36:24.290' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6075, N'admin', N'设备管理', N'查看设备', N'0007', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:37:03.437' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6076, N'admin', N'设备管理', N'查看设备', N'0007', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:37:46.047' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6077, N'admin', N'设备管理', N'查看设备', N'0007', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:37:50.317' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6078, N'admin', N'设备管理', N'查看设备', N'0006', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:37:55.787' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6079, N'admin', N'设备管理', N'查看设备', N'0006', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:38:16.950' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6080, N'admin', N'设备管理', N'查看设备', N'0007', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:38:23.500' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6081, N'admin', N'设备管理', N'查看设备', N'0007', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:40:12.340' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6082, N'admin', N'设备管理', N'查看设备', N'0007', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:42:02.477' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6083, N'admin', N'设备管理', N'查看设备', N'0007', N'::1', N'DC-0E-A1-64-B5-9F', 0, CAST(N'2019-01-19T19:53:09.137' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6084, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T19:55:02.063' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6085, N'admin', N'设备管理', N'查看设备', N'0007', N'::1', N'DC-0E-A1-64-B5-9F', 0, CAST(N'2019-01-19T20:00:56.170' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6086, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'DC-0E-A1-64-B5-9F', 0, CAST(N'2019-01-19T20:01:07.233' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6087, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T20:01:26.223' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6088, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'DC-0E-A1-64-B5-9F', 0, CAST(N'2019-01-19T20:07:46.247' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6089, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-19T20:14:17.457' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6090, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-21T12:37:24.153' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6091, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-21T12:37:50.113' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6092, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-21T16:56:34.047' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6093, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-21T17:00:45.087' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6094, N'admin', N'报警管理', N'报警查看', N'报警', N'::1', N'DC-0E-A1-64-B5-9F', 0, CAST(N'2019-01-21T18:24:43.940' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6095, N'admin', N'报警管理', N'报警查看', N'报警', N'::1', N'DC-0E-A1-64-B5-9F', 0, CAST(N'2019-01-21T18:43:11.253' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6096, N'admin', N'报警管理', N'报警查看', N'报警', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-21T19:13:51.237' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6097, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T09:59:45.630' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6098, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T09:59:52.397' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6099, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:06:18.623' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6100, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:07:51.287' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6101, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:08:26.647' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6102, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:08:56.070' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6103, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:09:23.383' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6104, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:09:31.393' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6105, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:10:07.073' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6106, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:10:22.153' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6107, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:10:29.183' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6108, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:10:51.557' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6109, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:11:43.470' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6110, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:11:57.300' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6111, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:12:29.690' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6112, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:19:16.437' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6113, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-22T10:20:18.967' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6114, N'admin', N'系统管理', N'添加员工', N'老大', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-23T13:41:12.267' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6115, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-23T13:50:54.490' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6116, N'admin', N'系统管理', N'添加员工', N'老韩', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-23T13:52:07.060' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6117, N'admin', N'设备管理', N'添加设备', N'0009', N'::1', N'28-D2-44-94-A8-A1', 0, CAST(N'2019-01-23T14:14:36.197' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6118, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'DC-0E-A1-64-B5-9F', 0, CAST(N'2019-03-22T14:17:24.900' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (6119, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', N'DC-0E-A1-64-B5-9F', 0, CAST(N'2019-03-22T14:20:11.807' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7118, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T20:49:45.763' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7119, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:22:16.047' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7120, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:30:14.940' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7121, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:31:09.150' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7122, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:32:25.443' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7123, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:35:17.397' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7124, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:38:49.537' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7125, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:39:48.577' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7126, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:42:32.543' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7127, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:43:38.010' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7128, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:44:31.743' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7129, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:47:05.187' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7130, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:51:43.633' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7131, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T21:57:13.373' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7132, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T22:00:20.647' AS DateTime))
INSERT [dbo].[OperationLog] ([Id], [UName], [ActionType], [ActionName], [OperationObj], [Ip], [Mac], [IsDeleted], [SubTime]) VALUES (7133, N'admin', N'设备管理', N'查看设备', N'0001', N'::1', NULL, 0, CAST(N'2019-07-02T22:06:03.013' AS DateTime))
SET IDENTITY_INSERT [dbo].[OperationLog] OFF
SET IDENTITY_INSERT [dbo].[R_RoleInfo_ActionInfo] ON 

INSERT [dbo].[R_RoleInfo_ActionInfo] ([Id], [RoleInfoId], [ActionInfoId], [IsDeleted]) VALUES (2499, 1, 1, 0)
INSERT [dbo].[R_RoleInfo_ActionInfo] ([Id], [RoleInfoId], [ActionInfoId], [IsDeleted]) VALUES (2500, 1, 2, 0)
INSERT [dbo].[R_RoleInfo_ActionInfo] ([Id], [RoleInfoId], [ActionInfoId], [IsDeleted]) VALUES (2501, 1, 3, 0)
INSERT [dbo].[R_RoleInfo_ActionInfo] ([Id], [RoleInfoId], [ActionInfoId], [IsDeleted]) VALUES (2502, 1, 4, 0)
INSERT [dbo].[R_RoleInfo_ActionInfo] ([Id], [RoleInfoId], [ActionInfoId], [IsDeleted]) VALUES (2503, 1, 5, 0)
INSERT [dbo].[R_RoleInfo_ActionInfo] ([Id], [RoleInfoId], [ActionInfoId], [IsDeleted]) VALUES (2504, 1, 6, 0)
INSERT [dbo].[R_RoleInfo_ActionInfo] ([Id], [RoleInfoId], [ActionInfoId], [IsDeleted]) VALUES (2505, 1, 7, 0)
INSERT [dbo].[R_RoleInfo_ActionInfo] ([Id], [RoleInfoId], [ActionInfoId], [IsDeleted]) VALUES (2506, 1, 8, 0)
INSERT [dbo].[R_RoleInfo_ActionInfo] ([Id], [RoleInfoId], [ActionInfoId], [IsDeleted]) VALUES (2507, 1, 9, 0)
INSERT [dbo].[R_RoleInfo_ActionInfo] ([Id], [RoleInfoId], [ActionInfoId], [IsDeleted]) VALUES (2508, 1, 10, 0)
INSERT [dbo].[R_RoleInfo_ActionInfo] ([Id], [RoleInfoId], [ActionInfoId], [IsDeleted]) VALUES (2509, 1, 11, 0)
INSERT [dbo].[R_RoleInfo_ActionInfo] ([Id], [RoleInfoId], [ActionInfoId], [IsDeleted]) VALUES (2510, 1, 12, 0)
SET IDENTITY_INSERT [dbo].[R_RoleInfo_ActionInfo] OFF
SET IDENTITY_INSERT [dbo].[R_UserInfo_RoleInfo] ON 

INSERT [dbo].[R_UserInfo_RoleInfo] ([Id], [UserInfoId], [RoleInfoId], [IsDeleted]) VALUES (1, 1, 1, 0)
INSERT [dbo].[R_UserInfo_RoleInfo] ([Id], [UserInfoId], [RoleInfoId], [IsDeleted]) VALUES (3016, 2037, 3, 0)
INSERT [dbo].[R_UserInfo_RoleInfo] ([Id], [UserInfoId], [RoleInfoId], [IsDeleted]) VALUES (3017, 2038, 3, 0)
INSERT [dbo].[R_UserInfo_RoleInfo] ([Id], [UserInfoId], [RoleInfoId], [IsDeleted]) VALUES (3018, 2039, 3, 0)
INSERT [dbo].[R_UserInfo_RoleInfo] ([Id], [UserInfoId], [RoleInfoId], [IsDeleted]) VALUES (3019, 2040, 3, 0)
INSERT [dbo].[R_UserInfo_RoleInfo] ([Id], [UserInfoId], [RoleInfoId], [IsDeleted]) VALUES (3020, 2041, 3, 0)
SET IDENTITY_INSERT [dbo].[R_UserInfo_RoleInfo] OFF
SET IDENTITY_INSERT [dbo].[RoleInfo] ON 

INSERT [dbo].[RoleInfo] ([Id], [RoleName], [IsDeleted], [Remark], [SubTime]) VALUES (1, N'超级管理员', 0, NULL, CAST(N'2018-12-17T11:15:16.000' AS DateTime))
INSERT [dbo].[RoleInfo] ([Id], [RoleName], [IsDeleted], [Remark], [SubTime]) VALUES (2, N'组长', 0, NULL, CAST(N'2018-12-17T15:16:18.000' AS DateTime))
INSERT [dbo].[RoleInfo] ([Id], [RoleName], [IsDeleted], [Remark], [SubTime]) VALUES (3, N'操作工', 0, NULL, CAST(N'2018-12-17T15:18:19.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[RoleInfo] OFF
SET IDENTITY_INSERT [dbo].[TeamInfo] ON 

INSERT [dbo].[TeamInfo] ([Id], [TName], [StartTime], [StopTime], [IsDeleted], [SubTime]) VALUES (1, N'未设置', NULL, NULL, 0, CAST(N'2019-01-05T15:15:16.000' AS DateTime))
INSERT [dbo].[TeamInfo] ([Id], [TName], [StartTime], [StopTime], [IsDeleted], [SubTime]) VALUES (8, N'A班', CAST(N'00:00:00' AS Time), CAST(N'05:04:00' AS Time), 0, CAST(N'2019-01-21T19:15:02.703' AS DateTime))
INSERT [dbo].[TeamInfo] ([Id], [TName], [StartTime], [StopTime], [IsDeleted], [SubTime]) VALUES (9, N'B班', CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), 0, CAST(N'2019-01-19T19:02:49.590' AS DateTime))
INSERT [dbo].[TeamInfo] ([Id], [TName], [StartTime], [StopTime], [IsDeleted], [SubTime]) VALUES (10, N'C班', CAST(N'16:00:00' AS Time), CAST(N'22:00:00' AS Time), 0, CAST(N'2019-01-19T19:03:12.850' AS DateTime))
INSERT [dbo].[TeamInfo] ([Id], [TName], [StartTime], [StopTime], [IsDeleted], [SubTime]) VALUES (11, N'D班', CAST(N'22:00:00' AS Time), CAST(N'08:00:00' AS Time), 0, CAST(N'2019-01-19T19:03:24.977' AS DateTime))
INSERT [dbo].[TeamInfo] ([Id], [TName], [StartTime], [StopTime], [IsDeleted], [SubTime]) VALUES (12, N'E', CAST(N'02:00:02' AS Time), CAST(N'18:00:00' AS Time), 0, CAST(N'2019-01-21T13:06:46.967' AS DateTime))
SET IDENTITY_INSERT [dbo].[TeamInfo] OFF
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([Id], [UCode], [UName], [Pwd], [StatusFlag], [Remark], [Gender], [Picture], [Phone], [Email], [IsDeleted], [SubTime], [TeamInfoId], [GroupInfoId]) VALUES (1, N'000', N'admin', N'202cb962ac59075b964b07152d234b70', 1, N'', N'男', N'/UploadFiles/UploadImgs/3e3a8040-71a2-428a-b6c5-476567f0053d-AVATAR.jpg', N'', N'', 0, CAST(N'2019-06-20T11:02:22.377' AS DateTime), 1, 1)
INSERT [dbo].[UserInfo] ([Id], [UCode], [UName], [Pwd], [StatusFlag], [Remark], [Gender], [Picture], [Phone], [Email], [IsDeleted], [SubTime], [TeamInfoId], [GroupInfoId]) VALUES (2037, N'002', N'test', N'202cb962ac59075b964b07152d234b70', 1, NULL, NULL, NULL, N'13826804690', NULL, 0, CAST(N'2019-01-19T19:28:16.737' AS DateTime), 8, 1005)
INSERT [dbo].[UserInfo] ([Id], [UCode], [UName], [Pwd], [StatusFlag], [Remark], [Gender], [Picture], [Phone], [Email], [IsDeleted], [SubTime], [TeamInfoId], [GroupInfoId]) VALUES (2038, N'003', N'老王', N'202cb962ac59075b964b07152d234b70', 1, NULL, NULL, NULL, N' ', NULL, 0, CAST(N'2019-01-19T19:28:28.850' AS DateTime), 9, 1006)
INSERT [dbo].[UserInfo] ([Id], [UCode], [UName], [Pwd], [StatusFlag], [Remark], [Gender], [Picture], [Phone], [Email], [IsDeleted], [SubTime], [TeamInfoId], [GroupInfoId]) VALUES (2039, N'004', N'老李', N'202cb962ac59075b964b07152d234b70', 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(N'2019-01-19T19:28:46.083' AS DateTime), 10, 1007)
INSERT [dbo].[UserInfo] ([Id], [UCode], [UName], [Pwd], [StatusFlag], [Remark], [Gender], [Picture], [Phone], [Email], [IsDeleted], [SubTime], [TeamInfoId], [GroupInfoId]) VALUES (2040, N'005', N'老大', N'202cb962ac59075b964b07152d234b70', 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(N'2019-01-23T13:41:12.083' AS DateTime), 9, 1005)
INSERT [dbo].[UserInfo] ([Id], [UCode], [UName], [Pwd], [StatusFlag], [Remark], [Gender], [Picture], [Phone], [Email], [IsDeleted], [SubTime], [TeamInfoId], [GroupInfoId]) VALUES (2041, N'006', N'老韩', N'202cb962ac59075b964b07152d234b70', 1, NULL, NULL, NULL, NULL, NULL, 0, CAST(N'2019-01-23T13:52:06.907' AS DateTime), 10, 1006)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
ALTER TABLE [dbo].[R_GroupInfo_DeviceInfo]  WITH CHECK ADD  CONSTRAINT [FK_GroupInfoR_GroupInfo_DeviceInfo] FOREIGN KEY([GroupInfoId])
REFERENCES [dbo].[GroupInfo] ([Id])
GO
ALTER TABLE [dbo].[R_GroupInfo_DeviceInfo] CHECK CONSTRAINT [FK_GroupInfoR_GroupInfo_DeviceInfo]
GO
ALTER TABLE [dbo].[R_GroupInfo_DeviceInfo]  WITH CHECK ADD  CONSTRAINT [FK_R_GroupInfo_DeviceInfoDeviceInfo] FOREIGN KEY([DeviceInfoId])
REFERENCES [dbo].[DeviceInfo] ([Id])
GO
ALTER TABLE [dbo].[R_GroupInfo_DeviceInfo] CHECK CONSTRAINT [FK_R_GroupInfo_DeviceInfoDeviceInfo]
GO
ALTER TABLE [dbo].[R_RoleInfo_ActionInfo]  WITH CHECK ADD  CONSTRAINT [FK_R_RoleInfo_ActionInfoActionInfo] FOREIGN KEY([ActionInfoId])
REFERENCES [dbo].[ActionInfo] ([Id])
GO
ALTER TABLE [dbo].[R_RoleInfo_ActionInfo] CHECK CONSTRAINT [FK_R_RoleInfo_ActionInfoActionInfo]
GO
ALTER TABLE [dbo].[R_RoleInfo_ActionInfo]  WITH CHECK ADD  CONSTRAINT [FK_RoleInfoR_RoleInfo_ActionInfo] FOREIGN KEY([RoleInfoId])
REFERENCES [dbo].[RoleInfo] ([Id])
GO
ALTER TABLE [dbo].[R_RoleInfo_ActionInfo] CHECK CONSTRAINT [FK_RoleInfoR_RoleInfo_ActionInfo]
GO
ALTER TABLE [dbo].[R_UserInfo_RoleInfo]  WITH CHECK ADD  CONSTRAINT [FK_RoleInfoR_UserInfo_RoleInfo] FOREIGN KEY([RoleInfoId])
REFERENCES [dbo].[RoleInfo] ([Id])
GO
ALTER TABLE [dbo].[R_UserInfo_RoleInfo] CHECK CONSTRAINT [FK_RoleInfoR_UserInfo_RoleInfo]
GO
ALTER TABLE [dbo].[R_UserInfo_RoleInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserInfoR_UserInfo_RoleInfo] FOREIGN KEY([UserInfoId])
REFERENCES [dbo].[UserInfo] ([Id])
GO
ALTER TABLE [dbo].[R_UserInfo_RoleInfo] CHECK CONSTRAINT [FK_UserInfoR_UserInfo_RoleInfo]
GO
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [FK_GroupInfoUserInfo] FOREIGN KEY([GroupInfoId])
REFERENCES [dbo].[GroupInfo] ([Id])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_GroupInfoUserInfo]
GO
ALTER TABLE [dbo].[UserInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_TeamInfoUserInfo] FOREIGN KEY([TeamInfoId])
REFERENCES [dbo].[TeamInfo] ([Id])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_TeamInfoUserInfo]
GO
