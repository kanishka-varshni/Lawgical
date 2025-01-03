

create PROCEDURE [dbo].[ddl_case_client] 
				   
AS
BEGIN

	SET NOCOUNT ON;
	    SELECT
					id
					,Name
			
	from dbo.Add_client_tbl 
	order by Name
END
GO
/****** Object:  StoredProcedure [dbo].[ddl_case_status]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ddl_case_status]
				   
AS
BEGIN

	SET NOCOUNT ON;
	    SELECT
					id
					,CaseStatus
			
	from dbo.CaseStatus_tbl 
	order by CaseStatus
END
GO
/****** Object:  StoredProcedure [dbo].[ddl_case_type]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ddl_case_type]
				   
AS
BEGIN

	SET NOCOUNT ON;
	    SELECT
					id
					,Casetype_Name
			
	from dbo.casetype_tbl 
	order by Casetype_Name
END
GO
/****** Object:  StoredProcedure [dbo].[ddl_court_type]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ddl_court_type] 
				   
AS
BEGIN

	SET NOCOUNT ON;
	    SELECT
					id
					,CourtType_Name
			
	from dbo.Courttype_tbl 
	order by CourtType_Name
END
GO
/****** Object:  StoredProcedure [dbo].[ddl_Judge_Type]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ddl_Judge_Type] 
				   
AS
BEGIN

	SET NOCOUNT ON;
	    SELECT
					id
					,JudgeType
			
	from dbo.Judetype_tbl 
	order by JudgeType
END
GO
/****** Object:  Table [dbo].[Add_client_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Add_client_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Middle_Name] [varchar](50) NULL,
	[Last_name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Emailid] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[Alternateno] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[counrty] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[Reference] [varchar](50) NULL,
	[refernceNo] [varchar](50) NULL,
	[Createddate] [varchar](50) NULL,
 CONSTRAINT [PK_Add_client_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddApppoinment_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddApppoinment_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NewClientName] [varchar](50) NULL,
	[MblNo] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL,
	[Note] [varchar](50) NULL,
 CONSTRAINT [PK_AddApppoinment_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddCase_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddCase_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [varchar](50) NULL,
	[ClientId] [int] NULL,
	[Type] [varchar](50) NULL,
	[ResPendName] [varchar](50) NULL,
	[ResPendAdvocate] [varchar](50) NULL,
	[CaseNo] [varchar](50) NULL,
	[CaseTypeId] [int] NULL,
	[CaseType] [varchar](50) NULL,
	[StateofCaseId] [int] NULL,
	[StateofCase] [varchar](50) NULL,
	[Priority] [varchar](50) NULL,
	[Act] [varchar](50) NULL,
	[FillingNum] [varchar](50) NULL,
	[FillingDate] [varchar](50) NULL,
	[RegisNum] [varchar](50) NULL,
	[RegistrationDate] [varchar](50) NULL,
	[CNRNum] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[PoliceStation] [varchar](50) NULL,
	[FIRNum] [varchar](50) NULL,
	[FIRDate] [varchar](50) NULL,
	[CourtNo] [varchar](50) NULL,
	[CourtTypeId] [int] NULL,
	[CourtType] [varchar](50) NULL,
	[CourtId] [int] NULL,
	[Court] [varchar](50) NULL,
	[JudgeTypeId] [int] NULL,
	[JudgeType] [varchar](50) NULL,
	[JudgeName] [varchar](50) NULL,
	[Remarks] [varchar](50) NULL,
	[Users] [varchar](50) NULL,
 CONSTRAINT [PK_AddCase_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddExpenseType_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddExpenseType_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_AddExpenseType_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddMember_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddMember_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[MblNo] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Zipcode] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[CPassword] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_AddMember_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddPayment_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddPayment_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [varchar](50) NULL,
	[ReceivingDate] [varchar](50) NULL,
	[PayMethod] [varchar](50) NULL,
	[RefNumber] [varchar](50) NULL,
	[Note] [varchar](50) NULL,
 CONSTRAINT [PK_AddPayment_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddRole_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddRole_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
	[RoleDes] [varchar](50) NULL,
 CONSTRAINT [PK_AddRole_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddService_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddService_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
 CONSTRAINT [PK_AddService_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddTask_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddTask_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [varchar](50) NULL,
	[StartDate] [varchar](50) NULL,
	[EndDate] [varchar](50) NULL,
	[SelectStsId] [int] NULL,
	[SelectStatus] [varchar](50) NULL,
	[Priority] [varchar](50) NULL,
	[AssignTo] [varchar](50) NULL,
	[RelatedTo] [varchar](50) NULL,
	[Case_1] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_AddTask_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddVendor_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddVendor_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CmpnyName] [varchar](50) NULL,
	[FistName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[MblNo] [varchar](50) NULL,
	[AlterMblNo] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[GSTIN] [varchar](50) NULL,
	[PAN] [varchar](50) NULL,
 CONSTRAINT [PK_AddVendor_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CaseStatus_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CaseStatus_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CaseStatus] [varchar](50) NULL,
 CONSTRAINT [PK_CaseStatus_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[casetype_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[casetype_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Casetype_Name] [varchar](50) NULL,
 CONSTRAINT [PK_casetype] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[court_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[court_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CourtType] [int] NULL,
	[courttype_name] [varchar](50) NULL,
	[Court_Name] [varchar](50) NULL,
 CONSTRAINT [PK_court_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Courttype_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Courttype_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CourtType_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Courttype_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Judetype_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Judetype_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[JudgeType] [varchar](50) NULL,
 CONSTRAINT [PK_Judetype_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tax_tbl]    Script Date: 17-02-24 3:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tax_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[TaxRate] [varchar](50) NULL,
	[Note] [varchar](50) NULL,
 CONSTRAINT [PK_Tax_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Add_client_tbl] ON 

INSERT [dbo].[Add_client_tbl] ([id], [Name], [Middle_Name], [Last_name], [Gender], [Emailid], [MobileNo], [Alternateno], [address], [counrty], [state], [city], [Reference], [refernceNo], [Createddate]) VALUES (1, N'keerthi', N's', N'vasan', N'Male', N'keerthi@gmail.com', N'9988774455', N'8877445566', N'cbe', N'india', N'tamilnadu', N'cbe', N'mani', N'7744556633', N'15-02-24')
SET IDENTITY_INSERT [dbo].[Add_client_tbl] OFF
SET IDENTITY_INSERT [dbo].[AddExpenseType_tbl] ON 

INSERT [dbo].[AddExpenseType_tbl] ([id], [Name], [Description]) VALUES (1, N'Snaks', N'Snaks')
SET IDENTITY_INSERT [dbo].[AddExpenseType_tbl] OFF
SET IDENTITY_INSERT [dbo].[AddMember_tbl] ON 

INSERT [dbo].[AddMember_tbl] ([id], [FirstName], [LastName], [Email], [MblNo], [Address], [Zipcode], [Password], [CPassword], [Country], [State], [City], [Role]) VALUES (1, N'Mahi', N'kumar', N'mahi@gmail.com', N'9988774455', N'cbe', NULL, NULL, NULL, N'india', N'tn', N'cbe', N'Staff')
SET IDENTITY_INSERT [dbo].[AddMember_tbl] OFF
SET IDENTITY_INSERT [dbo].[AddRole_tbl] ON 

INSERT [dbo].[AddRole_tbl] ([id], [RoleName], [RoleDes]) VALUES (1, N'Staff', N'Staff')
SET IDENTITY_INSERT [dbo].[AddRole_tbl] OFF
SET IDENTITY_INSERT [dbo].[AddService_tbl] ON 

INSERT [dbo].[AddService_tbl] ([id], [Name], [Amount]) VALUES (1, N'Leegal Counseling', N'50000')
SET IDENTITY_INSERT [dbo].[AddService_tbl] OFF
SET IDENTITY_INSERT [dbo].[AddTask_tbl] ON 

INSERT [dbo].[AddTask_tbl] ([id], [Subject], [StartDate], [EndDate], [SelectStsId], [SelectStatus], [Priority], [AssignTo], [RelatedTo], [Case_1], [Description]) VALUES (1, N'Find Evidance', N'2024-02-16', N'2024-02-18', 2, N'On-Trial', N'High', N'mani', N'Case', N'Murder', N'nil')
SET IDENTITY_INSERT [dbo].[AddTask_tbl] OFF
SET IDENTITY_INSERT [dbo].[AddVendor_tbl] ON 

INSERT [dbo].[AddVendor_tbl] ([id], [CmpnyName], [FistName], [LastName], [Email], [MblNo], [AlterMblNo], [Address], [Country], [State], [City], [GSTIN], [PAN]) VALUES (1, N'info tech', N'ravi', N'kumar', N'kumarravi@gmail.com', N'8877445566', N'8877445599', N'cbe', N'india', N'tamilnadu', N'cbe', N'4587gtrg478', N'2541fgrr2514')
SET IDENTITY_INSERT [dbo].[AddVendor_tbl] OFF
SET IDENTITY_INSERT [dbo].[CaseStatus_tbl] ON 

INSERT [dbo].[CaseStatus_tbl] ([id], [CaseStatus]) VALUES (2, N'On-Trial')
INSERT [dbo].[CaseStatus_tbl] ([id], [CaseStatus]) VALUES (3, N'Closed')
INSERT [dbo].[CaseStatus_tbl] ([id], [CaseStatus]) VALUES (4, N'Pending')
SET IDENTITY_INSERT [dbo].[CaseStatus_tbl] OFF
SET IDENTITY_INSERT [dbo].[casetype_tbl] ON 

INSERT [dbo].[casetype_tbl] ([id], [Casetype_Name]) VALUES (1, N'Murder')
INSERT [dbo].[casetype_tbl] ([id], [Casetype_Name]) VALUES (2, N'Robbery')
INSERT [dbo].[casetype_tbl] ([id], [Casetype_Name]) VALUES (3, N'Criminal')
SET IDENTITY_INSERT [dbo].[casetype_tbl] OFF
SET IDENTITY_INSERT [dbo].[court_tbl] ON 

INSERT [dbo].[court_tbl] ([id], [CourtType], [courttype_name], [Court_Name]) VALUES (1, 1, N'High Court', N'HC- Brach 2')
SET IDENTITY_INSERT [dbo].[court_tbl] OFF
SET IDENTITY_INSERT [dbo].[Courttype_tbl] ON 

INSERT [dbo].[Courttype_tbl] ([id], [CourtType_Name]) VALUES (1, N'High Court')
SET IDENTITY_INSERT [dbo].[Courttype_tbl] OFF
SET IDENTITY_INSERT [dbo].[Judetype_tbl] ON 

INSERT [dbo].[Judetype_tbl] ([id], [JudgeType]) VALUES (1, N'High Court judge')
INSERT [dbo].[Judetype_tbl] ([id], [JudgeType]) VALUES (2, N'Session Judge')
SET IDENTITY_INSERT [dbo].[Judetype_tbl] OFF
SET IDENTITY_INSERT [dbo].[Tax_tbl] ON 

INSERT [dbo].[Tax_tbl] ([id], [name], [TaxRate], [Note]) VALUES (1, N'Land Tax', N'12', N'Land Reform')
SET IDENTITY_INSERT [dbo].[Tax_tbl] OFF

