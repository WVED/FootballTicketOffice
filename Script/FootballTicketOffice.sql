USE [FootballTicketOffice]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 06.06.2021 16:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Birthday] [date] NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoryAuthorize]    Script Date: 06.06.2021 16:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryAuthorize](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HistoryAuthorize] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Match]    Script Date: 06.06.2021 16:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstTeamId] [int] NOT NULL,
	[SecondTeamId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Match] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 06.06.2021 16:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 06.06.2021 16:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 06.06.2021 16:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Price] [money] NOT NULL,
	[ClientId] [int] NOT NULL,
	[Sector] [int] NOT NULL,
	[Row] [int] NOT NULL,
	[Site] [int] NOT NULL,
	[PurchaseDate] [datetime] NOT NULL,
	[MatchId] [int] NOT NULL,
	[CashierId] [int] NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 06.06.2021 16:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (1, N'Иосиф', N'Голубев', CAST(N'1982-05-06' AS Date), N'smcnabb@att.net', N'7(78)972-73-11 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (2, N'Алла', N'Ермакова', CAST(N'1976-01-22' AS Date), N'whimsy@aol.com', N'7(06)437-13-73 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (3, N'Глеб', N'Селиверстов', CAST(N'1999-06-20' AS Date), N'jigsaw@sbcglobal.net', N'7(20)554-28-68 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (4, N'Юстиниан', N'Агафонов', CAST(N'1997-02-02' AS Date), N'staffelb@sbcglobal.net', N'7(303)810-28-78 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (5, N'Злата', N'Колобова', CAST(N'1994-08-25' AS Date), N'sinkou@aol.com', N'7(50)884-07-35 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (6, N'Дарина', N'Сысоева', CAST(N'1982-02-03' AS Date), N'treit@verizon.net', N'7(0698)387-96-04 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (7, N'Варлам', N'Некрасов', CAST(N'2000-11-12' AS Date), N'dogdude@verizon.net', N'7(019)258-06-35 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (8, N'Наум', N'Крюков', CAST(N'1993-11-17' AS Date), N'floxy@hotmail.com', N'7(81)657-88-92 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (9, N'Татьяна', N'Сидорова', CAST(N'1974-04-24' AS Date), N'tbeck@mac.com', N'7(51)732-91-79 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (10, N'Альжбета', N'Трофимова', CAST(N'1988-10-22' AS Date), N'gbacon@mac.com', N'7(1084)658-92-95 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (11, N'Адриан', N'Новиков', CAST(N'1974-01-15' AS Date), N'multiplx@verizon.net', N'7(70)572-33-62 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (12, N'Иветта', N'Мишина', CAST(N'2002-10-05' AS Date), N'aukjan@yahoo.com', N'7(3926)244-81-96 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (13, N'Геннадий', N'Шестаков', CAST(N'2001-07-01' AS Date), N'tokuhirom@live.com', N'7(2066)037-11-60 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (14, N'Матвей', N'Зуев', CAST(N'1981-03-28' AS Date), N'brickbat@verizon.net', N'7(5383)893-04-66 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (15, N'Георгина', N'Турова', CAST(N'1974-05-28' AS Date), N'yruan@optonline.net', N'7(555)321-42-99 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (16, N'Валентин', N'Анисимов', CAST(N'2000-12-10' AS Date), N'aaribaud@hotmail.com', N'7(700)326-70-24 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (17, N'Тамара', N'Анисимова', CAST(N'1988-06-16' AS Date), N'schwaang@mac.com', N'7(66)128-04-10 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (18, N'Орест', N'Колобов', CAST(N'2001-07-14' AS Date), N'parkes@verizon.net', N'7(1680)508-58-26 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (19, N'Аристарх', N'Филатов', CAST(N'1989-05-29' AS Date), N'hampton@att.net', N'7(696)235-29-24 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (20, N'Влада', N'Орлова', CAST(N'1990-06-26' AS Date), N'rnelson@yahoo.ca', N'7(2506)433-38-35 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (21, N'Элина', N'Алексеева', CAST(N'2002-05-07' AS Date), N'pthomsen@verizon.net', N'7(8086)245-64-81 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (22, N'Агафон', N'Бобров', CAST(N'1995-07-29' AS Date), N'petersen@comcast.net', N'7(2159)507-39-57 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (23, N'Инара', N'Бирюкова', CAST(N'1978-07-21' AS Date), N'smpeters@hotmail.com', N'7(098)346-50-58 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (24, N'Марк', N'Панфилов', CAST(N'1991-04-13' AS Date), N'cremonini@optonline.net', N'7(764)282-55-22 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (25, N'Алина', N'Колесникова', CAST(N'2001-04-19' AS Date), N'gfxguy@outlook.com', N'7(74)977-39-71 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (26, N'Наум', N'Морозов', CAST(N'1985-07-04' AS Date), N'salesgeek@mac.com', N'7(636)050-96-13 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (27, N'Давид', N'Горбачёв', CAST(N'1983-05-22' AS Date), N'hedwig@att.net', N'7(53)602-85-41 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (28, N'Оскар', N'Васильев', CAST(N'1971-01-30' AS Date), N'miturria@verizon.net', N'7(585)801-94-29 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (29, N'Номи', N'Ершова', CAST(N'2001-09-13' AS Date), N'miltchev@mac.com', N'7(7757)315-90-99 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (30, N'Святослав', N'Медведев', CAST(N'1972-10-04' AS Date), N'hllam@comcast.net', N'7(3520)435-21-20 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (31, N'Эльмира', N'Баранова', CAST(N'1977-01-15' AS Date), N'jgmyers@comcast.net', N'7(9240)643-15-50 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (32, N'Харита', N'Попова', CAST(N'1997-12-16' AS Date), N'firstpr@verizon.net', N'7(335)386-81-06 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (33, N'Аверкий', N'Кудряшов', CAST(N'1991-07-26' AS Date), N'nanop@msn.com', N'7(88)732-96-30 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (34, N'Марта', N'Горшкова', CAST(N'2001-02-13' AS Date), N'gbacon@mac.com', N'7(544)650-59-03')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (35, N'Богдан', N'Кудрявцев', CAST(N'1988-02-27' AS Date), N'lukka@hotmail.com', N'7(20)131-84-09 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (36, N'Яков', N'Гусев', CAST(N'1995-12-10' AS Date), N'jdhedden@icloud.com', N'7(0972)781-11-37 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (37, N'Авигея', N'Крюкова', CAST(N'2000-08-10' AS Date), N'simone@gmail.com', N'7(499)318-88-53 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (38, N'Амелия', N'Степанова', CAST(N'1970-06-06' AS Date), N'rasca@hotmail.com', N'7(1217)441-28-42 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (39, N'Божена', N'Суворова', CAST(N'1981-03-09' AS Date), N'attwood@aol.com', N'7(347)895-86-57 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (40, N'Аввакум', N'Борисов', CAST(N'1974-04-25' AS Date), N'chlim@live.com', N'7(2296)930-08-88 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (41, N'Георгий', N'Бобылёв', CAST(N'1983-12-19' AS Date), N'csilvers@mac.com', N'7(88)685-13-51 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (42, N'Вольдемар', N'Дроздов', CAST(N'1976-02-07' AS Date), N'smpeters@me.com', N'7(307)456-99-05 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (43, N'Сабрина', N'Беляева', CAST(N'1972-07-26' AS Date), N'agapow@gmail.com', N'7(6580)534-32-58 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (44, N'Пантелеймон', N'Блохин', CAST(N'1978-03-06' AS Date), N'balchen@comcast.net', N'7(9524)556-48-98 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (45, N'Гелла', N'Шашкова', CAST(N'1979-02-24' AS Date), N'jadavis@mac.com', N'7(57)446-21-04 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (46, N'Артур', N'Калашников', CAST(N'1972-12-13' AS Date), N'oevans@aol.com', N'7(147)947-47-21 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (47, N'Анэля', N'Корнилова', CAST(N'1973-04-02' AS Date), N'jonathan@aol.com', N'7(20)980-01-60 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (48, N'Янита', N'Гущина', CAST(N'1999-03-02' AS Date), N'lishoy@att.net', N'7(4544)716-68-96 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (49, N'Людвиг', N'Волков', CAST(N'1977-12-27' AS Date), N'jrkorson@msn.com', N'7(8459)592-05-58 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (50, N'Терентий', N'Князев', CAST(N'1991-06-19' AS Date), N'rjones@aol.com', N'7(98)397-23-23 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (51, N'Гаянэ', N'Силин', CAST(N'1976-05-27' AS Date), N'multiplx@comcast.net', N'7(4547)615-22-69 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (52, N'Дмитрий', N'Казаков', CAST(N'1978-12-15' AS Date), N'ozawa@verizon.net', N'7(51)682-19-40 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (53, N'Роза', N'Гусева', CAST(N'1999-02-13' AS Date), N'martyloo@live.com', N'7(23)064-51-84 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (54, N'Марфа', N'Мамонтова', CAST(N'1984-10-19' AS Date), N'rfoley@verizon.net', N'7(38)095-64-18 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (55, N'Эрик', N'Галкин', CAST(N'1975-01-18' AS Date), N'snunez@verizon.net', N'7(759)873-77-39 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (56, N'Прасковья', N'Архипова', CAST(N'1979-01-09' AS Date), N'cgcra@live.com', N'7(86)540-10-21 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (57, N'Лаура', N'Овчинникова', CAST(N'1992-04-03' AS Date), N'carcus@yahoo.ca', N'7(85)829-33-79 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (58, N'Патрисия', N'Андреева', CAST(N'1993-11-18' AS Date), N'jigsaw@aol.com', N'7(9648)953-81-26 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (59, N'Самуил', N'Авдеев', CAST(N'1996-07-04' AS Date), N'cliffordj@mac.com', N'7(3168)043-63-31 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (60, N'Светлана', N'Бурова', CAST(N'1979-01-04' AS Date), N'wsnyder@aol.com', N'7(358)173-82-21 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (61, N'Глеб', N'Ершов', CAST(N'1970-06-14' AS Date), N'sjava@aol.com', N'7(2608)298-40-82 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (62, N'Захар', N'Игнатов', CAST(N'1998-10-07' AS Date), N'dieman@icloud.com', N'7(578)574-73-36 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (63, N'Амалия', N'Комиссарова', CAST(N'1971-08-18' AS Date), N'jorgb@msn.com', N'7(22)647-46-32 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (64, N'Трофим', N'Быков', CAST(N'1994-12-20' AS Date), N'jguyer@aol.com', N'7(3414)460-12-05 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (65, N'Леонтий', N'Кузьмин', CAST(N'2000-05-05' AS Date), N'msloan@hotmail.com', N'7(1340)148-90-68 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (66, N'Диана', N'Белозёрова', CAST(N'1989-02-27' AS Date), N'dialworld@aol.com', N'7(9900)174-59-87 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (67, N'Евгений', N'Блинов', CAST(N'1994-01-05' AS Date), N'moxfulder@outlook.com', N'7(0852)321-82-64 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (68, N'Алексей', N'Лазарев', CAST(N'1977-03-10' AS Date), N'claesjac@me.com', N'7(0055)737-37-48 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (69, N'Розалия', N'Афанасьева', CAST(N'1977-05-01' AS Date), N'malattia@hotmail.com', N'7(0661)413-23-32 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (70, N'Эдита', N'Дементьева', CAST(N'1975-09-17' AS Date), N'frosal@hotmail.com', N'7(198)922-28-76 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (71, N'Петр', N'Калинин', CAST(N'1993-09-08' AS Date), N'aschmitz@hotmail.com', N'7(90)316-07-17 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (72, N'Станислав', N'Андреев', CAST(N'1975-10-10' AS Date), N'budinger@mac.com', N'7(02)993-91-28 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (73, N'Устин', N'Киселёв', CAST(N'1985-01-08' AS Date), N'dalamb@verizon.net', N'7(83)334-52-76 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (74, N'Павел', N'Гордеев', CAST(N'1984-09-06' AS Date), N'dawnsong@verizon.net', N'7(5243)599-66-72 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (75, N'Никки', N'Горбачёва', CAST(N'1987-04-21' AS Date), N'chinthaka@att.net', N'7(94)789-69-20 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (76, N'Касьян', N'Копылов', CAST(N'1983-08-04' AS Date), N'crobles@sbcglobal.net', N'7(5774)679-82-06 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (77, N'Витольд', N'Ефремов', CAST(N'1975-12-02' AS Date), N'kwilliams@yahoo.ca', N'7(93)922-14-03 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (78, N'Михаил', N'Баранов', CAST(N'1997-07-12' AS Date), N'bigmauler@outlook.com', N'7(750)985-94-13 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (79, N'Элина', N'Дмитриева', CAST(N'1988-12-10' AS Date), N'vmalik@live.com', N'7(787)140-48-84 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (80, N'Осип', N'Федотов', CAST(N'1971-04-13' AS Date), N'breegster@hotmail.com', N'7(590)702-33-06 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (81, N'Тала', N'Быкова', CAST(N'2000-02-22' AS Date), N'ganter@optonline.net', N'7(13)915-53-53 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (82, N'Вадим', N'Дементьев', CAST(N'1993-07-10' AS Date), N'jacks@aol.com', N'7(79)330-46-15 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (83, N'Макар', N'Евсеев', CAST(N'1977-09-13' AS Date), N'parsimony@sbcglobal.net', N'7(2141)077-85-70 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (84, N'Станислав', N'Абрамов', CAST(N'1989-05-18' AS Date), N'solomon@att.net', N'7(6545)478-87-79 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (85, N'Лиза', N'Артемьева', CAST(N'1996-05-17' AS Date), N'snunez@yahoo.ca', N'7(696)972-70-21 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (86, N'Дэнна', N'Кузьмина', CAST(N'1993-08-24' AS Date), N'nichoj@mac.com', N'7(9940)977-45-73 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (87, N'Магда', N'Ефимова', CAST(N'1995-08-16' AS Date), N'rbarreira@me.com', N'7(9261)386-15-92 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (88, N'Альберт', N'Ефимов', CAST(N'1997-10-29' AS Date), N'houle@live.com', N'7(416)375-97-19 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (89, N'Эльвина', N'Лазарева', CAST(N'1996-02-16' AS Date), N'ahuillet@comcast.net', N'7(5564)609-81-37 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (90, N'Изабелла', N'Воронова', CAST(N'1999-09-24' AS Date), N'kildjean@sbcglobal.net', N'7(17)433-44-98 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (91, N'Эвелина', N'Куликова', CAST(N'1997-11-14' AS Date), N'ilikered@hotmail.com', N'7(0236)682-42-78 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (92, N'Амалия', N'Егорова', CAST(N'1999-09-28' AS Date), N'drezet@yahoo.com', N'7(7486)408-12-26 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (93, N'Станислав', N'Александров', CAST(N'1981-07-04' AS Date), N'bigmauler@aol.com', N'7(18)164-05-12 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (94, N'Демьян', N'Цветков', CAST(N'1996-03-29' AS Date), N'hauma@icloud.com', N'7(93)546-43-73 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (95, N'Юнона', N'Устинова', CAST(N'1982-08-08' AS Date), N'kempsonc@live.com', N'7(33)367-13-07')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (96, N'Любава', N'Костина', CAST(N'1972-07-13' AS Date), N'gordonjcp@hotmail.com', N'7(6419)959-21-87 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (97, N'Мартын', N'Смирнов', CAST(N'1996-06-25' AS Date), N'haddawy@live.com', N'7(6251)589-02-43 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (98, N'Сандра', N'Федотова', CAST(N'1985-03-29' AS Date), N'penna@verizon.net', N'7(126)195-25-86 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (99, N'Леонтий', N'Журавлёв', CAST(N'2000-03-02' AS Date), N'cmdrgravy@me.com', N'7(4403)308-56-96 ')
GO
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (100, N'Вадим', N'Большаков', CAST(N'1970-05-15' AS Date), N'uncle@gmail.com', N'7(386)641-13-37 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (1002, N'Тала', N'Быкова', CAST(N'2021-05-13' AS Date), N'ganter@optonline.net', N'7(13)915-53-53 ')
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Birthday], [Email], [Phone]) VALUES (1003, N'Павел', N'Гордеев', CAST(N'2021-05-07' AS Date), N'dawnsong@verizon.net', N'7(5243)599-66-72 ')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[HistoryAuthorize] ON 

INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1, 101, CAST(N'2021-05-13T18:43:45.917' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2, 101, CAST(N'2021-05-13T19:13:25.243' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (3, 2, CAST(N'2021-05-13T19:15:01.873' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (4, 101, CAST(N'2021-05-13T19:16:09.577' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (5, 101, CAST(N'2021-05-13T19:21:55.990' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (6, 101, CAST(N'2021-05-13T19:22:52.130' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (7, 101, CAST(N'2021-05-13T19:24:09.647' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (8, 102, CAST(N'2021-05-13T19:25:52.203' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (9, 101, CAST(N'2021-05-13T19:27:23.300' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (10, 101, CAST(N'2021-05-13T21:46:50.387' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (11, 102, CAST(N'2021-05-13T21:47:05.463' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (12, 102, CAST(N'2021-05-13T21:47:07.113' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (13, 101, CAST(N'2021-05-13T21:47:14.557' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (14, 101, CAST(N'2021-05-13T21:47:15.537' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (15, 101, CAST(N'2021-05-15T15:38:48.653' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (16, 101, CAST(N'2021-05-15T15:41:37.430' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (17, 101, CAST(N'2021-05-15T15:42:19.520' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (18, 101, CAST(N'2021-05-15T15:44:16.957' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (19, 101, CAST(N'2021-05-15T15:54:52.637' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (20, 101, CAST(N'2021-05-15T15:55:58.797' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (21, 101, CAST(N'2021-05-15T15:58:06.170' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (22, 101, CAST(N'2021-05-15T16:00:34.910' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (23, 101, CAST(N'2021-05-15T16:01:02.147' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (24, 101, CAST(N'2021-05-15T16:05:38.223' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (25, 101, CAST(N'2021-05-15T16:06:22.007' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (26, 101, CAST(N'2021-05-15T16:09:40.103' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (27, 27, CAST(N'2021-05-15T16:23:49.343' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (28, 103, CAST(N'2021-05-15T16:24:43.977' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (29, 103, CAST(N'2021-05-15T16:27:26.583' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (30, 103, CAST(N'2021-05-15T16:32:14.777' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (31, 103, CAST(N'2021-05-15T16:32:47.730' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (32, 103, CAST(N'2021-05-15T16:33:49.360' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (33, 103, CAST(N'2021-05-15T16:39:55.577' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (34, 103, CAST(N'2021-05-15T16:40:39.877' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (35, 103, CAST(N'2021-05-15T16:44:50.857' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (36, 103, CAST(N'2021-05-15T16:51:42.047' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (37, 103, CAST(N'2021-05-15T17:04:12.253' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (38, 101, CAST(N'2021-05-15T17:04:25.963' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (39, 103, CAST(N'2021-05-15T17:12:12.030' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (40, 101, CAST(N'2021-05-15T17:12:20.653' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (41, 101, CAST(N'2021-05-15T17:13:23.477' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (42, 101, CAST(N'2021-05-15T17:14:19.743' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (43, 101, CAST(N'2021-05-15T17:15:07.200' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (44, 103, CAST(N'2021-05-16T11:58:04.400' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (45, 101, CAST(N'2021-05-16T11:58:15.890' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (46, 101, CAST(N'2021-05-16T12:05:17.537' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (47, 101, CAST(N'2021-05-16T12:06:23.300' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (48, 101, CAST(N'2021-05-16T12:14:41.370' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (49, 103, CAST(N'2021-05-16T12:15:39.870' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (50, 101, CAST(N'2021-05-16T12:15:54.200' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (51, 101, CAST(N'2021-05-16T12:17:06.387' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1002, 103, CAST(N'2021-05-22T20:21:45.227' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1003, 101, CAST(N'2021-05-22T20:21:54.207' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1004, 102, CAST(N'2021-05-22T20:22:08.863' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1005, 102, CAST(N'2021-05-22T20:44:57.653' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1006, 101, CAST(N'2021-05-22T20:45:50.647' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1007, 101, CAST(N'2021-05-22T21:18:32.333' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1008, 101, CAST(N'2021-05-23T12:36:18.837' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1009, 101, CAST(N'2021-05-23T12:45:04.490' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1010, 101, CAST(N'2021-05-23T12:52:08.097' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1011, 101, CAST(N'2021-05-23T12:53:09.860' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1012, 101, CAST(N'2021-05-23T13:07:57.563' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1013, 101, CAST(N'2021-05-23T13:22:57.080' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1014, 103, CAST(N'2021-05-24T20:13:20.477' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1015, 103, CAST(N'2021-05-24T20:14:16.530' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1016, 101, CAST(N'2021-05-24T20:14:23.033' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1017, 101, CAST(N'2021-05-24T20:14:58.477' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1018, 101, CAST(N'2021-05-24T20:15:19.170' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1019, 101, CAST(N'2021-05-24T20:18:59.803' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1020, 101, CAST(N'2021-05-24T20:19:24.183' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1021, 101, CAST(N'2021-05-24T20:20:29.437' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1022, 101, CAST(N'2021-05-24T20:21:28.430' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1023, 101, CAST(N'2021-05-24T20:54:08.050' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1024, 101, CAST(N'2021-05-24T20:56:52.487' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1025, 101, CAST(N'2021-05-24T20:58:58.237' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1026, 101, CAST(N'2021-05-24T20:59:35.647' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1027, 101, CAST(N'2021-05-24T21:04:52.837' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1028, 101, CAST(N'2021-05-25T15:44:22.607' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1029, 101, CAST(N'2021-05-25T16:53:51.570' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1030, 102, CAST(N'2021-05-25T16:54:56.037' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1031, 102, CAST(N'2021-05-25T17:43:14.723' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1032, 102, CAST(N'2021-05-27T15:45:21.333' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1033, 102, CAST(N'2021-05-27T15:46:02.690' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1034, 101, CAST(N'2021-05-29T20:36:25.143' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1035, 102, CAST(N'2021-05-29T21:07:59.493' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1036, 102, CAST(N'2021-05-29T21:10:46.657' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1037, 102, CAST(N'2021-05-29T21:17:14.510' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1038, 102, CAST(N'2021-05-29T21:56:50.313' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1039, 101, CAST(N'2021-05-31T11:01:21.130' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1040, 101, CAST(N'2021-05-31T11:02:56.433' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1041, 102, CAST(N'2021-05-31T11:17:38.193' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1042, 102, CAST(N'2021-05-31T11:21:17.377' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1043, 102, CAST(N'2021-05-31T11:22:04.057' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1044, 102, CAST(N'2021-05-31T11:23:24.853' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1045, 102, CAST(N'2021-05-31T11:24:39.020' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1046, 102, CAST(N'2021-05-31T11:25:52.923' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1047, 102, CAST(N'2021-05-31T11:26:13.340' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1048, 102, CAST(N'2021-05-31T11:30:16.873' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1049, 102, CAST(N'2021-05-31T11:31:38.277' AS DateTime), N'Successful')
GO
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1050, 102, CAST(N'2021-05-31T11:37:58.647' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1051, 102, CAST(N'2021-05-31T11:43:30.463' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1052, 102, CAST(N'2021-05-31T11:44:39.657' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1053, 102, CAST(N'2021-05-31T11:45:27.450' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1054, 102, CAST(N'2021-05-31T11:47:18.683' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1055, 102, CAST(N'2021-05-31T12:13:06.817' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1056, 102, CAST(N'2021-05-31T12:20:49.217' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1057, 102, CAST(N'2021-05-31T12:21:42.537' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1058, 102, CAST(N'2021-05-31T12:23:09.997' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1059, 102, CAST(N'2021-05-31T12:25:00.373' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1060, 102, CAST(N'2021-05-31T12:27:04.773' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1061, 102, CAST(N'2021-05-31T12:29:55.160' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1062, 102, CAST(N'2021-05-31T12:34:26.167' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1063, 102, CAST(N'2021-05-31T12:36:21.387' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1064, 102, CAST(N'2021-05-31T12:37:00.770' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1065, 102, CAST(N'2021-05-31T12:37:56.423' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1066, 102, CAST(N'2021-05-31T12:43:52.290' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1067, 102, CAST(N'2021-05-31T13:06:44.513' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1068, 102, CAST(N'2021-05-31T13:07:40.490' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1069, 102, CAST(N'2021-05-31T13:13:04.247' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1070, 102, CAST(N'2021-05-31T13:15:24.470' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1071, 102, CAST(N'2021-05-31T13:16:32.197' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1072, 102, CAST(N'2021-05-31T13:16:35.893' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1073, 102, CAST(N'2021-05-31T13:18:43.070' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1074, 102, CAST(N'2021-05-31T13:19:57.400' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1075, 102, CAST(N'2021-05-31T13:23:41.737' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1076, 102, CAST(N'2021-05-31T13:26:29.210' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1077, 102, CAST(N'2021-05-31T13:30:23.483' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1078, 102, CAST(N'2021-05-31T13:32:00.493' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1079, 102, CAST(N'2021-05-31T13:42:42.367' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1080, 102, CAST(N'2021-05-31T13:45:32.063' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1081, 102, CAST(N'2021-05-31T13:46:23.407' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1082, 102, CAST(N'2021-05-31T13:47:06.637' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1083, 102, CAST(N'2021-05-31T13:47:28.123' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1084, 102, CAST(N'2021-05-31T13:47:58.897' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1085, 102, CAST(N'2021-05-31T13:48:26.773' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1086, 102, CAST(N'2021-05-31T13:56:09.483' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1087, 102, CAST(N'2021-05-31T14:00:06.983' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1088, 102, CAST(N'2021-05-31T14:00:51.550' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1089, 102, CAST(N'2021-05-31T14:01:11.393' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1090, 102, CAST(N'2021-05-31T14:01:33.820' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1091, 102, CAST(N'2021-05-31T14:02:22.110' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1092, 102, CAST(N'2021-05-31T14:02:58.987' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1093, 102, CAST(N'2021-05-31T14:04:02.963' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1094, 102, CAST(N'2021-05-31T14:06:40.357' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1095, 102, CAST(N'2021-05-31T14:08:49.867' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1096, 102, CAST(N'2021-05-31T14:24:47.683' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1097, 102, CAST(N'2021-05-31T14:25:50.167' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1098, 102, CAST(N'2021-05-31T14:29:03.177' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1099, 102, CAST(N'2021-05-31T14:29:44.093' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1100, 102, CAST(N'2021-05-31T14:32:47.533' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1101, 102, CAST(N'2021-05-31T14:34:25.463' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1102, 102, CAST(N'2021-05-31T14:35:14.360' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1103, 102, CAST(N'2021-05-31T14:46:16.230' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1104, 102, CAST(N'2021-05-31T14:48:21.347' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1105, 102, CAST(N'2021-05-31T14:50:15.703' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1106, 102, CAST(N'2021-05-31T14:52:33.080' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1107, 102, CAST(N'2021-05-31T14:53:42.113' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1108, 102, CAST(N'2021-05-31T14:55:25.253' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1109, 102, CAST(N'2021-05-31T14:57:00.933' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1110, 102, CAST(N'2021-05-31T14:57:52.683' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1111, 102, CAST(N'2021-05-31T14:59:13.933' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1112, 102, CAST(N'2021-05-31T15:01:01.093' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1113, 102, CAST(N'2021-05-31T15:01:44.897' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1114, 102, CAST(N'2021-05-31T15:02:27.610' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1115, 102, CAST(N'2021-05-31T15:03:18.630' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1116, 102, CAST(N'2021-05-31T15:05:45.340' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1117, 102, CAST(N'2021-05-31T15:07:38.733' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1118, 102, CAST(N'2021-05-31T15:08:32.023' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1119, 102, CAST(N'2021-05-31T15:09:27.250' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1120, 102, CAST(N'2021-05-31T15:11:25.710' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1121, 102, CAST(N'2021-05-31T15:18:50.037' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1122, 102, CAST(N'2021-05-31T15:19:14.583' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1123, 102, CAST(N'2021-05-31T15:25:16.873' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1124, 102, CAST(N'2021-05-31T15:25:53.303' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1125, 102, CAST(N'2021-05-31T15:26:30.850' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1126, 102, CAST(N'2021-05-31T15:36:20.667' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1127, 102, CAST(N'2021-05-31T15:39:42.550' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1128, 102, CAST(N'2021-05-31T15:41:07.043' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1129, 102, CAST(N'2021-05-31T15:41:55.100' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1130, 102, CAST(N'2021-05-31T15:42:37.777' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1131, 102, CAST(N'2021-05-31T15:43:04.420' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1132, 102, CAST(N'2021-05-31T15:44:16.643' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1133, 102, CAST(N'2021-05-31T15:45:07.370' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1134, 102, CAST(N'2021-05-31T16:02:16.030' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1135, 102, CAST(N'2021-05-31T16:03:08.267' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1136, 102, CAST(N'2021-05-31T16:05:31.517' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1137, 102, CAST(N'2021-05-31T16:07:03.670' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1138, 102, CAST(N'2021-05-31T16:08:11.720' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1139, 102, CAST(N'2021-05-31T16:08:38.237' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1140, 102, CAST(N'2021-05-31T16:08:42.643' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1141, 102, CAST(N'2021-05-31T16:08:46.117' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1142, 102, CAST(N'2021-05-31T16:08:50.733' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1143, 102, CAST(N'2021-05-31T16:08:53.233' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1144, 102, CAST(N'2021-05-31T16:09:00.103' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1145, 102, CAST(N'2021-05-31T16:09:15.440' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1146, 102, CAST(N'2021-05-31T16:09:16.770' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1147, 102, CAST(N'2021-05-31T16:09:21.727' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1148, 102, CAST(N'2021-05-31T16:09:22.923' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1149, 102, CAST(N'2021-05-31T16:09:55.507' AS DateTime), N'Successful')
GO
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1150, 102, CAST(N'2021-05-31T16:14:11.473' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1151, 102, CAST(N'2021-05-31T16:14:12.897' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1152, 102, CAST(N'2021-05-31T16:14:32.270' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1153, 102, CAST(N'2021-05-31T16:14:46.990' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1154, 102, CAST(N'2021-05-31T16:14:48.580' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1155, 102, CAST(N'2021-05-31T16:14:49.737' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1156, 102, CAST(N'2021-05-31T16:15:24.487' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1157, 102, CAST(N'2021-05-31T16:15:25.713' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1158, 102, CAST(N'2021-05-31T16:16:19.227' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1159, 102, CAST(N'2021-05-31T16:16:20.137' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1160, 102, CAST(N'2021-05-31T16:16:58.750' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1161, 102, CAST(N'2021-05-31T16:16:59.873' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1162, 102, CAST(N'2021-05-31T16:18:22.883' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1163, 102, CAST(N'2021-05-31T16:19:21.650' AS DateTime), N'Access denied')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1164, 102, CAST(N'2021-05-31T16:19:29.300' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1165, 102, CAST(N'2021-05-31T20:25:06.113' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1166, 102, CAST(N'2021-05-31T20:25:24.477' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1167, 102, CAST(N'2021-05-31T20:25:32.793' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1168, 102, CAST(N'2021-05-31T20:30:01.170' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1169, 102, CAST(N'2021-05-31T20:30:12.010' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1170, 102, CAST(N'2021-05-31T20:31:17.953' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1171, 102, CAST(N'2021-05-31T20:31:43.200' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1172, 102, CAST(N'2021-05-31T20:31:59.613' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1173, 102, CAST(N'2021-05-31T20:32:09.597' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1174, 102, CAST(N'2021-06-01T15:48:33.497' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1175, 102, CAST(N'2021-06-01T15:58:34.920' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1176, 102, CAST(N'2021-06-01T16:05:59.327' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1177, 102, CAST(N'2021-06-01T16:10:42.190' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1178, 102, CAST(N'2021-06-01T16:13:02.133' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1179, 101, CAST(N'2021-06-01T16:21:01.610' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1180, 102, CAST(N'2021-06-01T16:35:17.920' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1181, 102, CAST(N'2021-06-01T16:35:49.270' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1182, 101, CAST(N'2021-06-01T16:35:57.610' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1183, 101, CAST(N'2021-06-01T16:37:18.513' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1184, 101, CAST(N'2021-06-01T16:38:28.957' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1185, 101, CAST(N'2021-06-01T16:39:04.310' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1186, 103, CAST(N'2021-06-01T17:26:55.590' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1187, 102, CAST(N'2021-06-01T17:29:44.700' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1188, 103, CAST(N'2021-06-01T17:30:18.320' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1189, 101, CAST(N'2021-06-01T17:30:46.973' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1190, 102, CAST(N'2021-06-01T18:59:45.857' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1191, 103, CAST(N'2021-06-01T19:37:55.730' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1192, 103, CAST(N'2021-06-01T19:39:18.573' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1193, 103, CAST(N'2021-06-01T19:46:46.987' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1194, 103, CAST(N'2021-06-02T16:22:18.357' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1195, 102, CAST(N'2021-06-02T17:24:39.080' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1196, 103, CAST(N'2021-06-02T17:42:26.553' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1197, 103, CAST(N'2021-06-02T17:44:32.823' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1198, 103, CAST(N'2021-06-02T17:46:13.277' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1199, 102, CAST(N'2021-06-02T17:54:11.423' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1200, 103, CAST(N'2021-06-02T18:17:10.473' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1201, 103, CAST(N'2021-06-02T18:18:03.423' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1202, 102, CAST(N'2021-06-02T18:19:36.707' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1203, 103, CAST(N'2021-06-02T18:20:20.053' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (1204, 101, CAST(N'2021-06-02T18:20:48.523' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2196, 101, CAST(N'2021-06-03T17:08:12.040' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2197, 102, CAST(N'2021-06-03T17:09:07.990' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2198, 103, CAST(N'2021-06-03T17:09:17.253' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2199, 101, CAST(N'2021-06-03T17:09:32.020' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2200, 102, CAST(N'2021-06-04T20:14:02.370' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2201, 102, CAST(N'2021-06-05T13:44:52.547' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2202, 103, CAST(N'2021-06-05T14:14:23.290' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2203, 103, CAST(N'2021-06-05T14:42:06.807' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2204, 103, CAST(N'2021-06-05T14:46:12.140' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2205, 103, CAST(N'2021-06-05T14:47:12.963' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2206, 103, CAST(N'2021-06-05T14:50:42.593' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2207, 103, CAST(N'2021-06-05T15:04:39.970' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2208, 103, CAST(N'2021-06-05T15:06:18.650' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2209, 103, CAST(N'2021-06-05T15:07:13.183' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2210, 103, CAST(N'2021-06-05T15:07:53.690' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2211, 103, CAST(N'2021-06-05T15:08:30.520' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2212, 103, CAST(N'2021-06-05T15:11:16.027' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2213, 103, CAST(N'2021-06-05T15:14:59.953' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2214, 103, CAST(N'2021-06-05T15:15:42.950' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2215, 103, CAST(N'2021-06-05T15:19:30.973' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2216, 103, CAST(N'2021-06-05T15:26:44.997' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2217, 103, CAST(N'2021-06-05T15:38:23.667' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2218, 103, CAST(N'2021-06-05T18:24:55.273' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2219, 102, CAST(N'2021-06-05T18:28:41.213' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2220, 2, CAST(N'2021-06-05T18:30:35.317' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2221, 2, CAST(N'2021-06-05T18:32:48.883' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2222, 102, CAST(N'2021-06-06T11:31:00.187' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2223, 102, CAST(N'2021-06-06T11:32:22.423' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2224, 101, CAST(N'2021-06-06T11:36:43.183' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2225, 101, CAST(N'2021-06-06T11:38:37.793' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2226, 101, CAST(N'2021-06-06T11:39:07.713' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2227, 101, CAST(N'2021-06-06T11:41:42.183' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2228, 101, CAST(N'2021-06-06T11:42:23.577' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2229, 101, CAST(N'2021-06-06T11:43:25.297' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2230, 101, CAST(N'2021-06-06T11:44:01.533' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2231, 103, CAST(N'2021-06-06T11:45:09.223' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2232, 102, CAST(N'2021-06-06T11:46:14.257' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2233, 2, CAST(N'2021-06-06T11:46:43.293' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2234, 3, CAST(N'2021-06-06T11:47:22.620' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2235, 103, CAST(N'2021-06-06T11:48:00.073' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2236, 102, CAST(N'2021-06-06T11:49:44.930' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2237, 6, CAST(N'2021-06-06T11:50:53.183' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2238, 11, CAST(N'2021-06-06T11:51:32.470' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2239, 103, CAST(N'2021-06-06T11:52:03.997' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2240, 103, CAST(N'2021-06-06T11:53:20.900' AS DateTime), N'Successful')
GO
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2241, 102, CAST(N'2021-06-06T11:54:24.603' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2242, 103, CAST(N'2021-06-06T11:54:27.293' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2243, 103, CAST(N'2021-06-06T11:59:26.183' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2244, 102, CAST(N'2021-06-06T12:17:43.260' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2245, 103, CAST(N'2021-06-06T12:28:33.803' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2246, 103, CAST(N'2021-06-06T12:51:40.297' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2247, 102, CAST(N'2021-06-06T13:58:22.100' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2248, 103, CAST(N'2021-06-06T14:05:45.180' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2249, 102, CAST(N'2021-06-06T14:10:27.903' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2250, 20, CAST(N'2021-06-06T14:12:46.300' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2251, 103, CAST(N'2021-06-06T14:13:40.310' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2252, 102, CAST(N'2021-06-06T14:15:35.933' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2253, 103, CAST(N'2021-06-06T14:15:38.947' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2254, 103, CAST(N'2021-06-06T14:15:41.560' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2255, 29, CAST(N'2021-06-06T14:26:18.390' AS DateTime), N'Successful')
INSERT [dbo].[HistoryAuthorize] ([Id], [UserId], [DateTime], [Status]) VALUES (2256, 103, CAST(N'2021-06-06T14:27:23.140' AS DateTime), N'Successful')
SET IDENTITY_INSERT [dbo].[HistoryAuthorize] OFF
GO
SET IDENTITY_INSERT [dbo].[Match] ON 

INSERT [dbo].[Match] ([Id], [FirstTeamId], [SecondTeamId], [Date]) VALUES (9, 5, 4, CAST(N'2021-06-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Match] ([Id], [FirstTeamId], [SecondTeamId], [Date]) VALUES (10, 4, 1, CAST(N'2021-06-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Match] ([Id], [FirstTeamId], [SecondTeamId], [Date]) VALUES (11, 5, 3, CAST(N'2021-06-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Match] ([Id], [FirstTeamId], [SecondTeamId], [Date]) VALUES (12, 2, 5, CAST(N'2021-06-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Match] ([Id], [FirstTeamId], [SecondTeamId], [Date]) VALUES (13, 1007, 1006, CAST(N'2021-06-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Match] ([Id], [FirstTeamId], [SecondTeamId], [Date]) VALUES (14, 1006, 2, CAST(N'2021-07-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Match] ([Id], [FirstTeamId], [SecondTeamId], [Date]) VALUES (15, 1006, 3, CAST(N'2021-07-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Match] ([Id], [FirstTeamId], [SecondTeamId], [Date]) VALUES (16, 1, 1007, CAST(N'2021-07-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Match] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Cashier')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Accountant')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([Id], [Title]) VALUES (1, N'Барселона')
INSERT [dbo].[Team] ([Id], [Title]) VALUES (2, N'Арсенал')
INSERT [dbo].[Team] ([Id], [Title]) VALUES (3, N'ЦСКА')
INSERT [dbo].[Team] ([Id], [Title]) VALUES (4, N'Аргентина')
INSERT [dbo].[Team] ([Id], [Title]) VALUES (5, N'Динамо Москва')
INSERT [dbo].[Team] ([Id], [Title]) VALUES (1005, N'Динамо Киев')
INSERT [dbo].[Team] ([Id], [Title]) VALUES (1006, N'Реал Мадрид')
INSERT [dbo].[Team] ([Id], [Title]) VALUES (1007, N'Тоттэнхэм')
SET IDENTITY_INSERT [dbo].[Team] OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket] ON 

INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1035, 5555.0000, 9, 2, 1, 3, CAST(N'2021-06-06T11:51:02.583' AS DateTime), 12, 6)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1036, 3124.0000, 28, 6, 4, 3, CAST(N'2021-06-06T11:51:11.330' AS DateTime), 10, 6)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1037, 3567.0000, 6, 4, 8, 1, CAST(N'2021-06-06T11:51:23.110' AS DateTime), 12, 6)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1038, 4455.0000, 1, 3, 1, 2, CAST(N'2021-06-06T11:51:41.413' AS DateTime), 10, 11)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1039, 5656.0000, 67, 6, 8, 10, CAST(N'2021-06-06T11:51:51.337' AS DateTime), 12, 11)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1040, 768.0000, 8, 3, 1, 9, CAST(N'2021-06-06T11:51:59.197' AS DateTime), 11, 11)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1046, 888.0000, 31, 5, 7, 7, CAST(N'2021-06-06T14:12:54.910' AS DateTime), 15, 20)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1047, 8767.0000, 9, 3, 1, 8, CAST(N'2021-06-06T14:13:02.057' AS DateTime), 13, 20)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1048, 434.0000, 6, 4, 4, 3, CAST(N'2021-06-06T14:13:10.053' AS DateTime), 15, 20)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1049, 333.0000, 10, 5, 6, 5, CAST(N'2021-06-06T14:13:18.200' AS DateTime), 13, 20)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1050, 999.0000, 51, 4, 8, 7, CAST(N'2021-06-06T14:13:35.207' AS DateTime), 15, 20)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1052, 555.0000, 10, 3, 5, 4, CAST(N'2021-06-06T14:26:46.557' AS DateTime), 11, 29)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1053, 999.0000, 31, 2, 6, 6, CAST(N'2021-06-06T14:26:58.347' AS DateTime), 15, 29)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1054, 989.0000, 17, 3, 3, 4, CAST(N'2021-06-06T14:27:06.727' AS DateTime), 9, 29)
INSERT [dbo].[Ticket] ([Id], [Price], [ClientId], [Sector], [Row], [Site], [PurchaseDate], [MatchId], [CashierId]) VALUES (1055, 888.0000, 61, 6, 8, 10, CAST(N'2021-06-06T14:27:18.273' AS DateTime), 16, 29)
SET IDENTITY_INSERT [dbo].[Ticket] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (1, N'Clareta', N'Hacking', N'chacking', N'4tzqHdkqzo4', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (2, N'Northrop', N'Mably', N'nmably1', N'ukM0e6', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (3, N'Fabian', N'Rolf', N'frolf', N'7QpCwac0yi', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (4, N'Lauree', N'Raden', N'lraden3', N'5Ydp2mz', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (5, N'Barby', N'Follos', N'bfollos4', N'ckmAJPQV', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (6, N'Mile', N'Enterle', N'menterle5', N'0PRom6i', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (7, N'Midge', N'Peaker', N'mpeaker6', N'0Tc5oRc', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (8, N'Manon', N'Robichon', N'mrobichon7', N'LEwEjMlmE5X', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (9, N'Stavro', N'Robken', N'srobken8', N'Cbmj3Yi', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (10, N'Bryan', N'Tidmas', N'btidmas9', N'dYDHbBQfK', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (11, N'Jeannette', N'Fussie', N'jfussiea', N'EGxXuLQ9', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (12, N'Stephen', N'Antonacci', N'santonaccib', N'YcXAhY3Pja', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (13, N'Niccolo', N'Bountiff', N'nbountiffc', N'5xfyjS9ZULGA', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (14, N'Clemente', N'Benjefield', N'cbenjefieldd', N'tQOsP0ei9TuD', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (15, N'Orlan', N'Corbyn', N'ocorbyne', N'bG1ZIzwIoU', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (16, N'Coreen', N'Stickins', N'cstickinsf', N'QRYADbgNj', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (17, N'Daveta', N'Clarage', N'dclarageg', N'Yp59ZIDnWe', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (18, N'Javier', N'McCawley', N'jmccawleyh', N'g58zLcmCYON', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (19, N'Daile', N'Band', N'dbandi', N'yFAaYuVW', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (20, N'Angil', N'Buttery', N'abutteryj', N'ttOFbWWGtD', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (21, N'Kyla', N'Kinman', N'kkinmank', N'qUr6fdWP6L5G', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (22, N'Selena', N'Skepper', N'sskepperl', N'jHYN0v3', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (23, N'Alyson', N'Yeoland', N'ayeolandm', N'QQezRBV9', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (24, N'Claudie', N'Speeding', N'cspeedingn', N'UCLYITfw2Vo', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (25, N'Alaric', N'Scarisbrick', N'ascarisbricko', N'fzBcv6GbyCp', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (26, N'Marie', N'Thurby', N'mthurbyp', N'wg0uIskqei', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (27, N'Cloe', N'Roxbrough', N'croxbroughq', N'67CVVym', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (28, N'Pegeen', N'McCotter', N'pmccotterr', N'QG5tdzRpGZJ2', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (29, N'Iggie', N'Calleja', N'icallejas', N'aeDvZk8o9', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (30, N'Nelle', N'Brosch', N'nbroscht', N'DmPJt2', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (31, N'Shae', N'Allsepp', N'sallseppu', N't0ko0854Cpvv', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (32, N'Eldridge', N'Abbatucci', N'eabbatucciv', N'gUtNdsDu', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (33, N'Skip', N'Garnham', N'sgarnhamw', N'eml6RqbK', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (34, N'Ric', N'Kitchenside', N'rkitchensidex', N'xaa7miQ7yB', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (35, N'Urbanus', N'Di Meo', N'udiy', N'dHqu78cU6NOP', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (36, N'Monty', N'Beidebeke', N'mbeidebekez', N'F5T5spAU9A4O', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (37, N'Byrann', N'Savins', N'bsavins10', N'l6sYf29NLN', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (38, N'Sonnie', N'Riby', N'sriby11', N'Va34LYqFh', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (39, N'Sherill', N'Birney', N'sbirney12', N'Ggygo2ePsETs', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (40, N'Indira', N'Kleanthous', N'ikleanthous13', N'3H0GS7a', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (41, N'Maison', N'Skerme', N'mskerme14', N'wy1HWA', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (44, N'Jeddy', N'De Souza', N'jde17', N'gK6Hsl8Q', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (45, N'Flossi', N'McLeoid', N'fmcleoid18', N'B9zr0N7cJw', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (46, N'Nikoletta', N'Megainey', N'nmegainey19', N'gph7QurFf', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (47, N'Adan', N'Bliven', N'abliven1a', N'vVxlf94KpeX', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (48, N'Mohandis', N'Rossoni', N'mrossoni1b', N'nLXj2lS', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (49, N'Nappie', N'Redington', N'nredington1c', N'DCbOb1SX', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (50, N'Lenka', N'Francie', N'lfrancie1d', N'DoGeHWuAAM', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (51, N'Ashley', N'Blowin', N'ablowin1e', N'aQygVtMjN', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (52, N'Vale', N'Goroni', N'vgoroni1f', N'bWr0QU', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (53, N'Suki', N'Grafom', N'sgrafom1g', N'JcNcVDAouYzA', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (54, N'Justis', N'Gianneschi', N'jgianneschi1h', N'oieX5u3sUfpD', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (55, N'Emilie', N'Collett', N'ecollett1i', N'Y0uMyKB0W', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (56, N'Byrom', N'Terrell', N'bterrell1j', N'hswseW', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (57, N'Daphne', N'Bifield', N'dbifield1k', N'oYAQ4URihIA', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (58, N'Blanca', N'Staig', N'bstaig1l', N'MygqEtjMtUbC', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (59, N'Adriaens', N'Kennsley', N'akennsley1m', N'CTUdBfJsy6qF', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (60, N'Emlyn', N'Bartak', N'ebartak1n', N'y3t4H1', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (61, N'Victoria', N'Willshire', N'vwillshire1o', N'VFSLc2t', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (62, N'Egon', N'Savin', N'esavin1p', N'axnJY9s', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (63, N'Phillie', N'Elsom', N'pelsom1q', N'OXzMECG', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (64, N'Adan', N'Semaine', N'asemaine1r', N'MdJRkHor5SP', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (65, N'Constantino', N'Northrop', N'cnorthrop1s', N'UIwCvTA7MRS0', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (66, N'Rodie', N'Easson', N'reasson1t', N'3J0jgg9RWlXs', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (67, N'Alida', N'Boleyn', N'aboleyn1u', N'3q2mQdDRmtr', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (68, N'Hill', N'Scholfield', N'hscholfield1v', N'1Pbs3K6qXYB', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (69, N'Cordell', N'Cowpe', N'ccowpe1w', N'VHr417Ft0', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (70, N'Alexandro', N'Eldon', N'aeldon1x', N'rrywOQRmFKyh', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (71, N'Kayle', N'Collin', N'kcollin1y', N'Q0ZV21vew0', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (72, N'Inesita', N'Larkins', N'ilarkins1z', N'DEFNpHtU', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (73, N'Waylin', N'Lound', N'wlound20', N'a2G4Ihh2o', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (74, N'Mechelle', N'Gillogley', N'mgillogley21', N'EjUHfCUFqF', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (75, N'Donal', N'Muccino', N'dmuccino22', N'E4okVgx', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (76, N'Joye', N'Leadbetter', N'jleadbetter23', N'ZNsaKdgb', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (77, N'Gianina', N'Trump', N'gtrump24', N'6XXY7IS26Ci', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (78, N'Read', N'LeEstut', N'rleestut25', N'zq3C4rUR', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (79, N'Jill', N'Anscott', N'janscott26', N'5maCRrCZLu', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (80, N'Bud', N'Douch', N'bdouch27', N'KAkwrli', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (81, N'Cicily', N'Ossenna', N'cossenna28', N'vfKJkCeohOzZ', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (82, N'Hew', N'Izzat', N'hizzat29', N'Uifdtu', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (83, N'Eddie', N'Gimeno', N'egimeno2a', N'oF1hbmKlZ', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (84, N'Sybyl', N'Fierro', N'sfierro2b', N'VjUrQ2', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (85, N'Nicol', N'Troup', N'ntroup2c', N'KmDDYf1Pu', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (86, N'Bondy', N'Pattenden', N'bpattenden2d', N'IOUkHpOn', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (87, N'Angus', N'Cockman', N'acockman2e', N'fDKhK7OK', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (88, N'Mord', N'Hanscome', N'mhanscome2f', N'xBHzpa7eP0u', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (89, N'Susy', N'Leblanc', N'sleblanc2g', N'T2et1U5M', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (90, N'Gerard', N'Ciccoloi', N'gciccoloi2h', N'w4dZ3hxiCiAg', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (91, N'Seamus', N'Sayburn', N'ssayburn2i', N'1hTM7EVKaS', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (92, N'Washington', N'Gentiry', N'wgentiry2j', N'z2X9UH5', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (93, N'Rebekkah', N'Westall', N'rwestall2k', N'xLgunbO9x6', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (94, N'Court', N'Kulic', N'ckulic2l', N'FLHYRN', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (95, N'Lorilee', N'Roux', N'lroux2m', N'98cCxHeeK31', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (96, N'Modestine', N'Rolinson', N'mrolinson2n', N'faGzyW8hEca', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (97, N'Shelbi', N'Ellgood', N'sellgood2o', N'3do5MME', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (98, N'Barbabra', N'Retchless', N'bretchless2p', N'WraGihh', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (99, N'Robinetta', N'Jerzak', N'rjerzak2q', N'hAp8jki', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (100, N'Vance', N'Boots', N'vboots2r', N'bgJfSDEVEQm6', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (101, N'admin', N'admin', N'admin', N'admin', 1)
GO
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (102, N'manager', N'manager', N'manager', N'manager', 2)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (103, N'111111111111111', N'11111111111111', N'1', N'1', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (1002, N'Lorilee', N'Roux', N'lroux2m', N'98cCxHeeK31', 3)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (1004, N'Lauree', N'Raden', N'lraden', N'5Ydp2mz', 1)
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Login], [Password], [RoleId]) VALUES (1006, N'Manon', N'Robichon', N'mrobichon', N'LEwEjMlmE5X', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[HistoryAuthorize]  WITH CHECK ADD  CONSTRAINT [FK_HistoryAuthorize_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistoryAuthorize] CHECK CONSTRAINT [FK_HistoryAuthorize_User]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Team_FirstTeam] FOREIGN KEY([FirstTeamId])
REFERENCES [dbo].[Team] ([Id])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Team_FirstTeam]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Team_SecondTeam] FOREIGN KEY([SecondTeamId])
REFERENCES [dbo].[Team] ([Id])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Team_SecondTeam]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Client] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Client]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Match] FOREIGN KEY([MatchId])
REFERENCES [dbo].[Match] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Match]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_User] FOREIGN KEY([CashierId])
REFERENCES [dbo].[User] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO

