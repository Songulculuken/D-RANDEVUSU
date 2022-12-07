USE [master]
GO
/****** Object:  Database [DB_DisHekimiRandevu]    Script Date: 4.11.2022 18:58:43 ******/
CREATE DATABASE [DB_DisHekimiRandevu]
GO
USE [DB_DisHekimiRandevu]
GO
/****** Object:  Table [dbo].[Hastalar]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hastalar](
	[hastaID] [int] NOT NULL,
	[hastaAd] [nvarchar](50) NULL,
	[hastaSoyad] [nvarchar](50) NULL,
	[hastaTelefon] [nvarchar](20) NULL,
	[hastaEposta] [nvarchar](250) NULL,
	[hastaTCKimlik] [nvarchar](15) NULL,
	[hastaAdres] [nvarchar](500) NULL,
	[IlID] [int] NULL,
	[ilceID] [int] NULL,
	[cinsiyetID] [int] NULL,
	[hastaAktifMi] [bit] NULL,
	[hastaAciklama] [nvarchar](500) NULL,
	[hastaKanGrubu] [nvarchar](5) NULL,
 CONSTRAINT [PK_Hastalar] PRIMARY KEY CLUSTERED 
(
	[hastaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Randevular]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Randevular](
	[randevuID] [int] NOT NULL,
	[hastaID] [int] NOT NULL,
	[randevuTarihi] [datetime] NULL,
	[randevuAktifMi] [bit] NULL,
	[randevuHastaSikayet] [nvarchar](500) NULL,
	[randevuEpikriz] [nvarchar](500) NULL,
	[randevuRecete] [nvarchar](500) NULL,
	[randevuSonrakiRandevuID] [int] NULL,
	[randevuOkMi] [bit] NULL,
	[randevuAciklama] [nvarchar](500) NULL,
	[randevuYapilanIslem] [nvarchar](500) NULL,
 CONSTRAINT [PK_Randevular_1] PRIMARY KEY CLUSTERED 
(
	[randevuID] ASC,
	[hastaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Cinsiyet]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Cinsiyet](
	[CinsiyetId] [int] IDENTITY(1,1) NOT NULL,
	[CinsiyetAd] [nvarchar](20) NOT NULL,
	[CinsiyetAciklama] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[CinsiyetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Il]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Il](
	[IlId] [int] IDENTITY(1,1) NOT NULL,
	[IlAd] [nvarchar](50) NOT NULL,
	[IlAciklama] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[IlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Ilce]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Ilce](
	[IlceId] [int] IDENTITY(1,1) NOT NULL,
	[IlceAd] [nvarchar](50) NOT NULL,
	[IlceAciklama] [nvarchar](150) NULL,
	[IlId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IlceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Cinsiyet] ON 
GO
INSERT [dbo].[tbl_Cinsiyet] ([CinsiyetId], [CinsiyetAd], [CinsiyetAciklama]) VALUES (1, N'BAY', N'BAY')
GO
INSERT [dbo].[tbl_Cinsiyet] ([CinsiyetId], [CinsiyetAd], [CinsiyetAciklama]) VALUES (2, N'BAYAN', N'BAYAN')
GO
INSERT [dbo].[tbl_Cinsiyet] ([CinsiyetId], [CinsiyetAd], [CinsiyetAciklama]) VALUES (3, N'BELİRTMEK İSTEMİYOR', N'BELİRTMEK İSTEMİYOR')
GO
INSERT [dbo].[tbl_Cinsiyet] ([CinsiyetId], [CinsiyetAd], [CinsiyetAciklama]) VALUES (4, N'DİĞER', N'DİĞER')
GO
SET IDENTITY_INSERT [dbo].[tbl_Cinsiyet] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Il] ON 
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (1, N'ADANA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (2, N'ADIYAMAN', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (3, N'AFYON', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (4, N'AĞRI', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (5, N'AMASYA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (6, N'ANKARA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (7, N'ANTALYA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (8, N'ARTVİN', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (9, N'AYDIN', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (10, N'BALIKESİR', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (11, N'BİLECİK', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (12, N'BİNGÖL', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (13, N'BİTLİS', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (14, N'BOLU', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (15, N'BURDUR', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (16, N'BURSA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (17, N'ÇANAKKALE', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (18, N'ÇANKIRI', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (19, N'ÇORUM', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (20, N'DENİZLİ', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (21, N'DİYARBAKIR', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (22, N'EDİRNE', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (23, N'ELAZIĞ', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (24, N'ERZİNCAN', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (25, N'ERZURUM', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (26, N'ESKİŞEHİR', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (27, N'GAZİANTEP', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (28, N'GİRESUN', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (29, N'GÜMÜŞHANE', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (30, N'HAKKARİ', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (31, N'HATAY', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (32, N'ISPARTA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (33, N'İÇEL', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (34, N'İSTANBUL', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (35, N'İZMİR', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (36, N'KARS', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (37, N'KASTAMONU', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (38, N'KAYSERİ', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (39, N'KIRKLARELİ', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (40, N'KIRŞEHİR', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (41, N'KOCAELİ', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (42, N'KONYA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (43, N'KÜTAHYA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (44, N'MALATYA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (45, N'MANİSA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (46, N'KAHRAMANMARAŞ', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (47, N'MARDİN', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (48, N'MUĞLA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (49, N'MUŞ', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (50, N'NEVŞEHİR', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (51, N'NİĞDE', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (52, N'ORDU', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (53, N'RİZE', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (54, N'SAKARYA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (55, N'SAMSUN', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (56, N'SİİRT', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (57, N'SİNOP', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (58, N'SİVAS', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (59, N'TEKİRDAĞ', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (60, N'TOKAT', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (61, N'TRABZON', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (62, N'TUNCELİ', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (63, N'ŞANLIURFA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (64, N'UŞAK', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (65, N'VAN', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (66, N'YOZGAT', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (67, N'ZONGULDAK', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (68, N'AKSARAY', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (69, N'BAYBURT', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (70, N'KARAMAN', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (71, N'KIRIKKALE', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (72, N'BATMAN', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (73, N'ŞIRNAK', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (74, N'BARTIN', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (75, N'ARDAHAN', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (76, N'IĞDIR', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (77, N'YALOVA', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (78, N'KARABÜK', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (79, N'KİLİS', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (80, N'OSMANİYE', N'il Adı')
GO
INSERT [dbo].[tbl_Il] ([IlId], [IlAd], [IlAciklama]) VALUES (81, N'DÜZCE', N'il Adı')
GO
SET IDENTITY_INSERT [dbo].[tbl_Il] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Ilce] ON 
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (1, N'SEYHAN', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (2, N'CEYHAN', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (3, N'FEKE', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (4, N'KARAİSALI', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (5, N'KARATAŞ', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (6, N'KOZAN', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (7, N'POZANTI', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (8, N'SAİMBEYLİ', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (9, N'TUFANBEYLİ', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (10, N'YUMURTALIK', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (11, N'YÜREĞİR', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (12, N'ALADAĞ', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (13, N'İMAMOĞLU', N'Aciklama', 1)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (14, N'ADIYAMAN MERKEZ', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (15, N'BESNİ', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (16, N'ÇELİKHAN', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (17, N'GERGER', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (18, N'GÖLBAŞI', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (19, N'KAHTA', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (20, N'SAMSAT', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (21, N'SİNCİK', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (22, N'TUT', N'Aciklama', 2)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (23, N'AFYONMERKEZ', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (24, N'BOLVADİN', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (25, N'ÇAY', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (26, N'DAZKIRI', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (27, N'DİNAR', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (28, N'EMİRDAĞ', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (29, N'İHSANİYE', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (30, N'SANDIKLI', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (31, N'SİNANPAŞA', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (32, N'SULDANDAĞI', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (33, N'ŞUHUT', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (34, N'BAŞMAKÇI', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (35, N'BAYAT', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (36, N'İŞCEHİSAR', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (37, N'ÇOBANLAR', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (38, N'EVCİLER', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (39, N'HOCALAR', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (40, N'KIZILÖREN', N'Aciklama', 3)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (41, N'AKSARAY MERKEZ', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (42, N'ORTAKÖY', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (43, N'AĞAÇÖREN', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (44, N'GÜZELYURT', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (45, N'SARIYAHŞİ', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (46, N'ESKİL', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (47, N'GÜLAĞAÇ', N'Aciklama', 68)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (48, N'AMASYA MERKEZ', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (49, N'GÖYNÜÇEK', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (50, N'GÜMÜŞHACIKÖYÜ', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (51, N'MERZİFON', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (52, N'SULUOVA', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (53, N'TAŞOVA', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (54, N'HAMAMÖZÜ', N'Aciklama', 5)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (55, N'ALTINDAĞ', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (56, N'AYAS', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (57, N'BALA', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (58, N'BEYPAZARI', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (59, N'ÇAMLIDERE', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (60, N'ÇANKAYA', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (61, N'ÇUBUK', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (62, N'ELMADAĞ', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (63, N'GÜDÜL', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (64, N'HAYMANA', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (65, N'KALECİK', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (66, N'KIZILCAHAMAM', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (67, N'NALLIHAN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (68, N'POLATLI', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (69, N'ŞEREFLİKOÇHİSAR', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (70, N'YENİMAHALLE', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (71, N'GÖLBAŞI', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (72, N'KEÇİÖREN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (73, N'MAMAK', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (74, N'SİNCAN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (75, N'KAZAN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (76, N'AKYURT', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (77, N'ETİMESGUT', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (78, N'EVREN', N'Aciklama', 6)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (79, N'ANSEKİ', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (80, N'ALANYA', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (81, N'ANTALYA MERKEZİ', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (82, N'ELMALI', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (83, N'FİNİKE', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (84, N'GAZİPAŞA', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (85, N'GÜNDOĞMUŞ', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (86, N'KAŞ', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (87, N'KORKUTELİ', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (88, N'KUMLUCA', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (89, N'MANAVGAT', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (90, N'SERİK', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (91, N'DEMRE', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (92, N'İBRADI', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (93, N'KEMER', N'Aciklama', 7)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (94, N'ARDAHAN MERKEZ', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (95, N'GÖLE', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (96, N'ÇILDIR', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (97, N'HANAK', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (98, N'POSOF', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (99, N'DAMAL', N'Aciklama', 75)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (100, N'ARDANUÇ', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (101, N'ARHAVİ', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (102, N'ARTVİN MERKEZ', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (103, N'BORÇKA', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (104, N'HOPA', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (105, N'ŞAVŞAT', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (106, N'YUSUFELİ', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (107, N'MURGUL', N'Aciklama', 8)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (108, N'AYDIN MERKEZ', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (109, N'BOZDOĞAN', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (110, N'ÇİNE', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (111, N'GERMENCİK', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (112, N'KARACASU', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (113, N'KOÇARLI', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (114, N'KUŞADASI', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (115, N'KUYUCAK', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (116, N'NAZİLLİ', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (117, N'SÖKE', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (118, N'SULTANHİSAR', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (119, N'YENİPAZAR', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (120, N'BUHARKENT', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (121, N'İNCİRLİOVA', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (122, N'KARPUZLU', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (123, N'KÖŞK', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (124, N'DİDİM', N'Aciklama', 9)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (125, N'AĞRI MERKEZ', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (126, N'DİYADİN', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (127, N'DOĞUBEYAZIT', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (128, N'ELEŞKİRT', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (129, N'HAMUR', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (130, N'PATNOS', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (131, N'TAŞLIÇAY', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (132, N'TUTAK', N'Aciklama', 4)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (133, N'AYVALIK', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (134, N'BALIKESİR MERKEZ', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (135, N'BALYA', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (136, N'BANDIRMA', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (137, N'BİGADİÇ', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (138, N'BURHANİYE', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (139, N'DURSUNBEY', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (140, N'EDREMİT', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (141, N'ERDEK', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (142, N'GÖNEN', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (143, N'HAVRAN', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (144, N'İVRİNDİ', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (145, N'KEPSUT', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (146, N'MANYAS', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (147, N'SAVAŞTEPE', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (148, N'SINDIRGI', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (149, N'SUSURLUK', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (150, N'MARMARA', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (151, N'GÖMEÇ', N'Aciklama', 10)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (152, N'BARTIN MERKEZ', N'Aciklama', 74)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (153, N'KURUCAŞİLE', N'Aciklama', 74)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (154, N'ULUS', N'Aciklama', 74)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (155, N'AMASRA', N'Aciklama', 74)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (156, N'BATMAN MERKEZ', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (157, N'BEŞİRİ', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (158, N'GERCÜŞ', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (159, N'KOZLUK', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (160, N'SASON', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (161, N'HASANKEYF', N'Aciklama', 72)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (162, N'BAYBURT MERKEZ', N'Aciklama', 69)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (163, N'AYDINTEPE', N'Aciklama', 69)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (164, N'DEMİRÖZÜ', N'Aciklama', 69)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (165, N'BOLU MERKEZ', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (166, N'GEREDE', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (167, N'GÖYNÜK', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (168, N'KIBRISCIK', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (169, N'MENGEN', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (170, N'MUDURNU', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (171, N'SEBEN', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (172, N'DÖRTDİVAN', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (173, N'YENİÇAĞA', N'Aciklama', 14)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (174, N'AĞLASUN', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (175, N'BUCAK', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (176, N'BURDUR MERKEZ', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (177, N'GÖLHİSAR', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (178, N'TEFENNİ', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (179, N'YEŞİLOVA', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (180, N'KARAMANLI', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (181, N'KEMER', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (182, N'ALTINYAYLA', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (183, N'ÇAVDIR', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (184, N'ÇELTİKÇİ', N'Aciklama', 15)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (185, N'GEMLİK', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (186, N'İNEGÖL', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (187, N'İZNİK', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (188, N'KARACABEY', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (189, N'KELES', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (190, N'MUDANYA', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (191, N'MUSTAFA K. PAŞA', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (192, N'ORHANELİ', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (193, N'ORHANGAZİ', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (194, N'YENİŞEHİR', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (195, N'BÜYÜK ORHAN', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (196, N'HARMANCIK', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (197, N'NÜLİFER', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (198, N'OSMAN GAZİ', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (199, N'YILDIRIM', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (200, N'GÜRSU', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (201, N'KESTEL', N'Aciklama', 16)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (202, N'BİLECİK MERKEZ', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (203, N'BOZÜYÜK', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (204, N'GÖLPAZARI', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (205, N'OSMANELİ', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (206, N'PAZARYERİ', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (207, N'SÖĞÜT', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (208, N'YENİPAZAR', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (209, N'İNHİSAR', N'Aciklama', 11)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (210, N'BİNGÖL MERKEZ', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (211, N'GENÇ', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (212, N'KARLIOVA', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (213, N'KİGI', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (214, N'SOLHAN', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (215, N'ADAKLI', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (216, N'YAYLADERE', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (217, N'YEDİSU', N'Aciklama', 12)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (218, N'ADİLCEVAZ', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (219, N'AHLAT', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (220, N'BİTLİS MERKEZ', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (221, N'HİZAN', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (222, N'MUTKİ', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (223, N'TATVAN', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (224, N'GÜROYMAK', N'Aciklama', 13)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (225, N'DENİZLİ MERKEZ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (226, N'ACIPAYAM', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (227, N'BULDAN', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (228, N'ÇAL', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (229, N'ÇAMELİ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (230, N'ÇARDAK', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (231, N'ÇİVRİL', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (232, N'GÜNEY', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (233, N'KALE', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (234, N'SARAYKÖY', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (235, N'TAVAS', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (236, N'BABADAĞ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (237, N'BEKİLLİ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (238, N'HONAZ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (239, N'SERİNHİSAR', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (240, N'AKKÖY', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (241, N'BAKLAN', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (242, N'BEYAĞAÇ', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (243, N'BOZKURT', N'Aciklama', 20)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (244, N'DÜZCE MERKEZ', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (245, N'AKÇAKOCA', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (246, N'YIĞILCA', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (247, N'CUMAYERİ', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (248, N'GÖLYAKA', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (249, N'ÇİLİMLİ', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (250, N'GÜMÜŞOVA', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (251, N'KAYNAŞLI', N'Aciklama', 81)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (252, N'DİYARBAKIR MERKEZ', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (253, N'BİSMİL', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (254, N'ÇERMİK', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (255, N'ÇINAR', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (256, N'ÇÜNGÜŞ', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (257, N'DİCLE', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (258, N'ERGANİ', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (259, N'HANİ', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (260, N'HAZRO', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (261, N'KULP', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (262, N'LİCE', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (263, N'SİLVAN', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (264, N'EĞİL', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (265, N'KOCAKÖY', N'Aciklama', 21)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (266, N'EDİRNE MERKEZ', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (267, N'ENEZ', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (268, N'HAVSA', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (269, N'İPSALA', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (270, N'KEŞAN', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (271, N'LALAPAŞA', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (272, N'MERİÇ', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (273, N'UZUNKÖPRÜ', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (274, N'SÜLOĞLU', N'Aciklama', 22)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (275, N'ELAZIĞ MERKEZ', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (276, N'AĞIN', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (277, N'BASKİL', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (278, N'KARAKOÇAN', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (279, N'KEBAN', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (280, N'MADEN', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (281, N'PALU', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (282, N'SİVRİCE', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (283, N'ARICAK', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (284, N'KOVANCILAR', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (285, N'ALACAKAYA', N'Aciklama', 23)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (286, N'ERZURUM MERKEZ', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (287, N'PALANDÖKEN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (288, N'AŞKALE', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (289, N'ÇAT', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (290, N'HINIS', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (291, N'HORASAN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (292, N'OLTU', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (293, N'İSPİR', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (294, N'KARAYAZI', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (295, N'NARMAN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (296, N'OLUR', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (297, N'PASİNLER', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (298, N'ŞENKAYA', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (299, N'TEKMAN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (300, N'TORTUM', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (301, N'KARAÇOBAN', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (302, N'UZUNDERE', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (303, N'PAZARYOLU', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (304, N'ILICA', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (305, N'KÖPRÜKÖY', N'Aciklama', 25)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (306, N'ÇAYIRLI', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (307, N'ERZİNCAN MERKEZ', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (308, N'İLİÇ', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (309, N'KEMAH', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (310, N'KEMALİYE', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (311, N'REFAHİYE', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (312, N'TERCAN', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (313, N'OTLUKBELİ', N'Aciklama', 24)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (314, N'ESKİŞEHİR MERKEZ', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (315, N'ÇİFTELER', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (316, N'MAHMUDİYE', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (317, N'MİHALIÇLIK', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (318, N'SARICAKAYA', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (319, N'SEYİTGAZİ', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (320, N'SİVRİHİSAR', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (321, N'ALPU', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (322, N'BEYLİKOVA', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (323, N'İNÖNÜ', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (324, N'GÜNYÜZÜ', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (325, N'HAN', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (326, N'MİHALGAZİ', N'Aciklama', 26)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (327, N'ARABAN', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (328, N'İSLAHİYE', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (329, N'NİZİP', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (330, N'OĞUZELİ', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (331, N'YAVUZELİ', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (332, N'ŞAHİNBEY', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (333, N'ŞEHİT KAMİL', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (334, N'KARKAMIŞ', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (335, N'NURDAĞI', N'Aciklama', 27)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (336, N'GÜMÜŞHANE MERKEZ', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (337, N'KELKİT', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (338, N'ŞİRAN', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (339, N'TORUL', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (340, N'KÖSE', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (341, N'KÜRTÜN', N'Aciklama', 29)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (342, N'ALUCRA', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (343, N'BULANCAK', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (344, N'DERELİ', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (345, N'ESPİYE', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (346, N'EYNESİL', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (347, N'GİRESUN MERKEZ', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (348, N'GÖRELE', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (349, N'KEŞAP', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (350, N'ŞEBİNKARAHİSAR', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (351, N'TİREBOLU', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (352, N'PİPAZİZ', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (353, N'YAĞLIDERE', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (354, N'ÇAMOLUK', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (355, N'ÇANAKÇI', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (356, N'DOĞANKENT', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (357, N'GÜCE', N'Aciklama', 28)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (358, N'HAKKARİ MERKEZ', N'Aciklama', 30)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (359, N'ÇUKURCA', N'Aciklama', 30)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (360, N'ŞEMDİNLİ', N'Aciklama', 30)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (361, N'YÜKSEKOVA', N'Aciklama', 30)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (362, N'ALTINÖZÜ', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (363, N'DÖRTYOL', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (364, N'HATAY MERKEZ', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (365, N'HASSA', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (366, N'İSKENDERUN', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (367, N'KIRIKHAN', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (368, N'REYHANLI', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (369, N'SAMANDAĞ', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (370, N'YAYLADAĞ', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (371, N'ERZİN', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (372, N'BELEN', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (373, N'KUMLU', N'Aciklama', 31)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (374, N'ISPARTA MERKEZ', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (375, N'ATABEY', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (376, N'KEÇİBORLU', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (377, N'EĞİRDİR', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (378, N'GELENDOST', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (379, N'SİNİRKENT', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (380, N'ULUBORLU', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (381, N'YALVAÇ', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (382, N'AKSU', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (383, N'GÖNEN', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (384, N'YENİŞAR BADEMLİ', N'Aciklama', 32)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (385, N'IĞDIR MERKEZ', N'Aciklama', 76)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (386, N'ARALIK', N'Aciklama', 76)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (387, N'TUZLUCA', N'Aciklama', 76)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (388, N'KARAKOYUNLU', N'Aciklama', 76)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (389, N'AFŞİN', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (390, N'ANDIRIN', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (391, N'ELBİSTAN', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (392, N'GÖKSUN', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (393, N'KAHRAMANMARAŞ MERKEZ', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (394, N'PAZARCIK', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (395, N'TÜRKOĞLU', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (396, N'ÇAĞLAYANCERİT', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (397, N'EKİNÖZÜ', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (398, N'NURHAK', N'Aciklama', 46)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (399, N'EFLANİ', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (400, N'ESKİPAZAR', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (401, N'KARABÜK MERKEZ', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (402, N'OVACIK', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (403, N'SAFRANBOLU', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (404, N'YENİCE', N'Aciklama', 78)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (405, N'ERMENEK', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (406, N'KARAMAN MERKEZ', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (407, N'AYRANCI', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (408, N'KAZIMKARABEKİR', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (409, N'BAŞYAYLA', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (410, N'SARIVELİLER', N'Aciklama', 70)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (411, N'KARS MERKEZ', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (412, N'ARPAÇAY', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (413, N'DİGOR', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (414, N'KAĞIZMAN', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (415, N'SARIKAMIŞ', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (416, N'SELİM', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (417, N'SUSUZ', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (418, N'AKYAKA', N'Aciklama', 36)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (419, N'ABANA', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (420, N'KASTAMONU MERKEZ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (421, N'ARAÇ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (422, N'AZDAVAY', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (423, N'BOZKURT', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (424, N'CİDE', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (425, N'ÇATALZEYTİN', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (426, N'DADAY', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (427, N'DEVREKANİ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (428, N'İNEBOLU', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (429, N'KÜRE', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (430, N'TAŞKÖPRÜ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (431, N'TOSYA', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (432, N'İHSANGAZİ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (433, N'PINARBAŞI', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (434, N'ŞENPAZAR', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (435, N'AĞLI', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (436, N'DOĞANYURT', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (437, N'HANÖNÜ', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (438, N'SEYDİLER', N'Aciklama', 37)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (439, N'BÜNYAN', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (440, N'DEVELİ', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (441, N'FELAHİYE', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (442, N'İNCESU', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (443, N'PINARBAŞI', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (444, N'SARIOĞLAN', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (445, N'SARIZ', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (446, N'TOMARZA', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (447, N'YAHYALI', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (448, N'YEŞİLHİSAR', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (449, N'AKKIŞLA', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (450, N'TALAS', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (451, N'KOCASİNAN', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (452, N'MELİKGAZİ', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (453, N'HACILAR', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (454, N'ÖZVATAN', N'Aciklama', 38)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (455, N'DERİCE', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (456, N'KESKİN', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (457, N'KIRIKKALE MERKEZ', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (458, N'SALAK YURT', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (459, N'BAHŞİLİ', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (460, N'BALIŞEYH', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (461, N'ÇELEBİ', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (462, N'KARAKEÇİLİ', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (463, N'YAHŞİHAN', N'Aciklama', 71)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (464, N'KIRKKLARELİ MERKEZ', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (465, N'BABAESKİ', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (466, N'DEMİRKÖY', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (467, N'KOFÇAY', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (468, N'LÜLEBURGAZ', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (469, N'VİZE', N'Aciklama', 39)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (470, N'KIRŞEHİR MERKEZ', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (471, N'ÇİÇEKDAĞI', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (472, N'KAMAN', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (473, N'MUCUR', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (474, N'AKPINAR', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (475, N'AKÇAKENT', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (476, N'BOZTEPE', N'Aciklama', 40)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (477, N'KOCAELİ MERKEZ', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (478, N'GEBZE', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (479, N'GÖLCÜK', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (480, N'KANDIRA', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (481, N'KARAMÜRSEL', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (482, N'KÖRFEZ', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (483, N'DERİNCE', N'Aciklama', 41)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (484, N'KONYA MERKEZ', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (485, N'AKŞEHİR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (486, N'BEYŞEHİR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (487, N'BOZKIR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (488, N'CİHANBEYLİ', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (489, N'ÇUMRA', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (490, N'DOĞANHİSAR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (491, N'EREĞLİ', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (492, N'HADİM', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (493, N'ILGIN', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (494, N'KADINHANI', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (495, N'KARAPINAR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (496, N'KULU', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (497, N'SARAYÖNÜ', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (498, N'SEYDİŞEHİR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (499, N'YUNAK', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (500, N'AKÖREN', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (501, N'ALTINEKİN', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (502, N'DEREBUCAK', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (503, N'HÜYÜK', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (504, N'KARATAY', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (505, N'MERAM', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (506, N'SELÇUKLU', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (507, N'TAŞKENT', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (508, N'AHIRLI', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (509, N'ÇELTİK', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (510, N'DERBENT', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (511, N'EMİRGAZİ', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (512, N'GÜNEYSINIR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (513, N'HALKAPINAR', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (514, N'TUZLUKÇU', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (515, N'YALIHÜYÜK', N'Aciklama', 42)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (516, N'KÜTAHYA  MERKEZ', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (517, N'ALTINTAŞ', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (518, N'DOMANİÇ', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (519, N'EMET', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (520, N'GEDİZ', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (521, N'SİMAV', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (522, N'TAVŞANLI', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (523, N'ASLANAPA', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (524, N'DUMLUPINAR', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (525, N'HİSARCIK', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (526, N'ŞAPHANE', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (527, N'ÇAVDARHİSAR', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (528, N'PAZARLAR', N'Aciklama', 43)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (529, N'KİLİS MERKEZ', N'Aciklama', 79)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (530, N'ELBEYLİ', N'Aciklama', 79)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (531, N'MUSABEYLİ', N'Aciklama', 79)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (532, N'POLATELİ', N'Aciklama', 79)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (533, N'MALATYA MERKEZ', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (534, N'AKÇADAĞ', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (535, N'ARAPGİR', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (536, N'ARGUVAN', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (537, N'DARENDE', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (538, N'DOĞANŞEHİR', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (539, N'HEKİMHAN', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (540, N'PÜTÜRGE', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (541, N'YEŞİLYURT', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (542, N'BATTALGAZİ', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (543, N'DOĞANYOL', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (544, N'KALE', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (545, N'KULUNCAK', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (546, N'YAZIHAN', N'Aciklama', 44)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (547, N'AKHİSAR', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (548, N'ALAŞEHİR', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (549, N'DEMİRCİ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (550, N'GÖRDES', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (551, N'KIRKAĞAÇ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (552, N'KULA', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (553, N'MANİSA MERKEZ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (554, N'SALİHLİ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (555, N'SARIGÖL', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (556, N'SARUHANLI', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (557, N'SELENDİ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (558, N'SOMA', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (559, N'TURGUTLU', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (560, N'AHMETLİ', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (561, N'GÖLMARMARA', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (562, N'KÖPRÜBAŞI', N'Aciklama', 45)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (563, N'DERİK', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (564, N'KIZILTEPE', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (565, N'MARDİN MERKEZ', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (566, N'MAZIDAĞI', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (567, N'MİDYAT', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (568, N'NUSAYBİN', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (569, N'ÖMERLİ', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (570, N'SAVUR', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (571, N'YEŞİLLİ', N'Aciklama', 47)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (572, N'MERSİN MERKEZ', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (573, N'ANAMUR', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (574, N'ERDEMLİ', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (575, N'GÜLNAR', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (576, N'MUT', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (577, N'SİLİFKE', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (578, N'TARSUS', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (579, N'AYDINCIK', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (580, N'BOZYAZI', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (581, N'ÇAMLIYAYLA', N'Aciklama', 33)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (582, N'BODRUM', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (583, N'DATÇA', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (584, N'FETHİYE', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (585, N'KÖYCEĞİZ', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (586, N'MARMARİS', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (587, N'MİLAS', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (588, N'MUĞLA MERKEZ', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (589, N'ULA', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (590, N'YATAĞAN', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (591, N'DALAMAN', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (592, N'KAVAKLI DERE', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (593, N'ORTACA', N'Aciklama', 48)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (594, N'BULANIK', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (595, N'MALAZGİRT', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (596, N'MUŞ MERKEZ', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (597, N'VARTO', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (598, N'HASKÖY', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (599, N'KORKUT', N'Aciklama', 49)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (600, N'NEVŞEHİR MERKEZ', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (601, N'AVANOS', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (602, N'DERİNKUYU', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (603, N'GÜLŞEHİR', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (604, N'HACIBEKTAŞ', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (605, N'KOZAKLI', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (606, N'ÜRGÜP', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (607, N'ACIGÖL', N'Aciklama', 50)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (608, N'NİĞDE MERKEZ', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (609, N'BOR', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (610, N'ÇAMARDI', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (611, N'ULUKIŞLA', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (612, N'ALTUNHİSAR', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (613, N'ÇİFTLİK', N'Aciklama', 51)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (614, N'AKKUŞ', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (615, N'AYBASTI', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (616, N'FATSA', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (617, N'GÖLKÖY', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (618, N'KORGAN', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (619, N'KUMRU', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (620, N'MESUDİYE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (621, N'ORDU MERKEZ', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (622, N'PERŞEMBE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (623, N'ULUBEY', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (624, N'ÜNYE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (625, N'GÜLYALI', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (626, N'GÜRGENTEPE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (627, N'ÇAMAŞ', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (628, N'ÇATALPINAR', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (629, N'ÇAYBAŞI', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (630, N'İKİZCE', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (631, N'KABADÜZ', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (632, N'KABATAŞ', N'Aciklama', 52)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (633, N'BAHÇE', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (634, N'KADİRLİ', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (635, N'OSMANİYE MERKEZ', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (636, N'DÜZİÇİ', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (637, N'HASANBEYLİ', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (638, N'SUMBAŞ', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (639, N'TOPRAKKALE', N'Aciklama', 80)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (640, N'RİZE MERKEZ', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (641, N'ARDEŞEN', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (642, N'ÇAMLIHEMŞİN', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (643, N'ÇAYELİ', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (644, N'FINDIKLI', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (645, N'İKİZDERE', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (646, N'KALKANDERE', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (647, N'PAZAR', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (648, N'GÜNEYSU', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (649, N'DEREPAZARI', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (650, N'HEMŞİN', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (651, N'İYİDERE', N'Aciklama', 53)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (652, N'AKYAZI', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (653, N'GEYVE', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (654, N'HENDEK', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (655, N'KARASU', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (656, N'KAYNARCA', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (657, N'SAKARYA MERKEZ', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (658, N'PAMUKOVA', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (659, N'TARAKLI', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (660, N'FERİZLİ', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (661, N'KARAPÜRÇEK', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (662, N'SÖĞÜTLÜ', N'Aciklama', 54)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (663, N'ALAÇAM', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (664, N'BAFRA', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (665, N'ÇARŞAMBA', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (666, N'HAVZA', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (667, N'KAVAK', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (668, N'LADİK', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (669, N'SAMSUN MERKEZ', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (670, N'TERME', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (671, N'VEZİRKÖPRÜ', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (672, N'ASARCIK', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (673, N'ONDOKUZMAYIS', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (674, N'SALIPAZARI', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (675, N'TEKKEKÖY', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (676, N'AYVACIK', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (677, N'YAKAKENT', N'Aciklama', 55)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (678, N'AYANCIK', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (679, N'BOYABAT', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (680, N'SİNOP MERKEZ', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (681, N'DURAĞAN', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (682, N'ERGELEK', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (683, N'GERZE', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (684, N'TÜRKELİ', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (685, N'DİKMEN', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (686, N'SARAYDÜZÜ', N'Aciklama', 57)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (687, N'DİVRİĞİ', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (688, N'GEMEREK', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (689, N'GÜRÜN', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (690, N'HAFİK', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (691, N'İMRANLI', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (692, N'KANGAL', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (693, N'KOYUL HİSAR', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (694, N'SİVAS MERKEZ', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (695, N'SU ŞEHRİ', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (696, N'ŞARKIŞLA', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (697, N'YILDIZELİ', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (698, N'ZARA', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (699, N'AKINCILAR', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (700, N'ALTINYAYLA', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (701, N'DOĞANŞAR', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (702, N'GÜLOVA', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (703, N'ULAŞ', N'Aciklama', 58)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (704, N'BAYKAN', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (705, N'ERUH', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (706, N'KURTALAN', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (707, N'PERVARİ', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (708, N'SİİRT MERKEZ', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (709, N'ŞİRVARİ', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (710, N'AYDINLAR', N'Aciklama', 56)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (711, N'TEKİRDAĞ MERKEZ', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (712, N'ÇERKEZKÖY', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (713, N'ÇORLU', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (714, N'HAYRABOLU', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (715, N'MALKARA', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (716, N'MURATLI', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (717, N'SARAY', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (718, N'ŞARKÖY', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (719, N'MARAMARAEREĞLİSİ', N'Aciklama', 59)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (720, N'ALMUS', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (721, N'ARTOVA', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (722, N'TOKAT MERKEZ', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (723, N'ERBAA', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (724, N'NİKSAR', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (725, N'REŞADİYE', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (726, N'TURHAL', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (727, N'ZİLE', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (728, N'PAZAR', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (729, N'YEŞİLYURT', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (730, N'BAŞÇİFTLİK', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (731, N'SULUSARAY', N'Aciklama', 60)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (732, N'TRABZON MERKEZ', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (733, N'AKÇAABAT', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (734, N'ARAKLI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (735, N'ARŞİN', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (736, N'ÇAYKARA', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (737, N'MAÇKA', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (738, N'OF', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (739, N'SÜRMENE', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (740, N'TONYA', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (741, N'VAKFIKEBİR', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (742, N'YOMRA', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (743, N'BEŞİKDÜZÜ', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (744, N'ŞALPAZARI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (745, N'ÇARŞIBAŞI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (746, N'DERNEKPAZARI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (747, N'DÜZKÖY', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (748, N'HAYRAT', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (749, N'KÖPRÜBAŞI', N'Aciklama', 61)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (750, N'TUNCELİ MERKEZ', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (751, N'ÇEMİŞGEZEK', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (752, N'HOZAT', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (753, N'MAZGİRT', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (754, N'NAZİMİYE', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (755, N'OVACIK', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (756, N'PERTEK', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (757, N'PÜLÜMÜR', N'Aciklama', 62)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (758, N'BANAZ', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (759, N'EŞME', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (760, N'KARAHALLI', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (761, N'SİVASLI', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (762, N'ULUBEY', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (763, N'UŞAK MERKEZ', N'Aciklama', 64)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (764, N'BAŞKALE', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (765, N'VAN MERKEZ', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (766, N'EDREMİT', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (767, N'ÇATAK', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (768, N'ERCİŞ', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (769, N'GEVAŞ', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (770, N'GÜRPINAR', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (771, N'MURADİYE', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (772, N'ÖZALP', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (773, N'BAHÇESARAY', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (774, N'ÇALDIRAN', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (775, N'SARAY', N'Aciklama', 65)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (776, N'YALOVA MERKEZ', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (777, N'ALTINOVA', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (778, N'ARMUTLU', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (779, N'ÇINARCIK', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (780, N'ÇİFTLİKKÖY', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (781, N'TERMAL', N'Aciklama', 77)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (782, N'AKDAĞMADENİ', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (783, N'BOĞAZLIYAN', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (784, N'YOZGAT MERKEZ', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (785, N'ÇAYIRALAN', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (786, N'ÇEKEREK', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (787, N'SARIKAYA', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (788, N'SORGUN', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (789, N'ŞEFAATLI', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (790, N'YERKÖY', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (791, N'KADIŞEHRİ', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (792, N'SARAYKENT', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (793, N'YENİFAKILI', N'Aciklama', 66)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (794, N'ÇAYCUMA', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (795, N'DEVREK', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (796, N'ZONGULDAK MERKEZ', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (797, N'EREĞLİ', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (798, N'ALAPLI', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (799, N'GÖKÇEBEY', N'Aciklama', 67)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (800, N'ÇANAKKALE MERKEZ', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (801, N'AYVACIK', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (802, N'BAYRAMİÇ', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (803, N'BİGA', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (804, N'BOZCAADA', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (805, N'ÇAN', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (806, N'ECEABAT', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (807, N'EZİNE', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (808, N'LAPSEKİ', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (809, N'YENİCE', N'Aciklama', 17)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (810, N'ÇANKIRI MERKEZ', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (811, N'ÇERKEŞ', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (812, N'ELDİVAN', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (813, N'ILGAZ', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (814, N'KURŞUNLU', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (815, N'ORTA', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (816, N'ŞABANÖZÜ', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (817, N'YAPRAKLI', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (818, N'ATKARACALAR', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (819, N'KIZILIRMAK', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (820, N'BAYRAMÖREN', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (821, N'KORGUN', N'Aciklama', 18)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (822, N'ALACA', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (823, N'BAYAT', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (824, N'ÇORUM MERKEZ', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (825, N'İKSİPLİ', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (826, N'KARGI', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (827, N'MECİTÖZÜ', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (828, N'ORTAKÖY', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (829, N'OSMANCIK', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (830, N'SUNGURLU', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (831, N'DODURGA', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (832, N'LAÇİN', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (833, N'OĞUZLAR', N'Aciklama', 19)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (834, N'ADALAR', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (835, N'BAKIRKÖY', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (836, N'BEŞİKTAŞ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (837, N'BEYKOZ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (838, N'BEYOĞLU', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (839, N'ÇATALCA', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (840, N'EMİNÖNÜ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (841, N'EYÜP', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (842, N'FATİH', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (843, N'GAZİOSMANPAŞA', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (844, N'KADIKÖY', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (845, N'KARTAL', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (846, N'SARIYER', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (847, N'SİLİVRİ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (848, N'ŞİLE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (849, N'ŞİŞLİ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (850, N'ÜSKÜDAR', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (851, N'ZEYTİNBURNU', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (852, N'BÜYÜKÇEKMECE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (853, N'KAĞITHANE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (854, N'KÜÇÜKÇEKMECE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (855, N'PENDİK', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (856, N'ÜMRANİYE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (857, N'BAYRAMPAŞA', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (858, N'AVCILAR', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (859, N'BAĞCILAR', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (860, N'BAHÇELİEVLER', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (861, N'GÜNGÖREN', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (862, N'MALTEPE', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (863, N'SULTANBEYLİ', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (864, N'TUZLA', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (865, N'ESENLER', N'Aciklama', 34)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (866, N'ALİAĞA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (867, N'BAYINDIR', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (868, N'BERGAMA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (869, N'BORNOVA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (870, N'ÇEŞME', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (871, N'DİKİLİ', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (872, N'FOÇA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (873, N'KARABURUN', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (874, N'KARŞIYAKA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (875, N'KEMALPAŞA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (876, N'KINIK', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (877, N'KİRAZ', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (878, N'MENEMEN', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (879, N'ÖDEMİŞ', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (880, N'SEFERİHİSAR', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (881, N'SELÇUK', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (882, N'TİRE', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (883, N'TORBALI', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (884, N'URLA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (885, N'BEYDAĞ', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (886, N'BUCA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (887, N'KONAK', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (888, N'MENDERES', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (889, N'BALÇOVA', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (890, N'ÇİGLİ', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (891, N'GAZİEMİR', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (892, N'NARLIDERE', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (893, N'GÜZELBAHÇE', N'Aciklama', 35)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (894, N'ŞANLIURFA MERKEZ', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (895, N'AKÇAKALE', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (896, N'BİRECİK', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (897, N'BOZOVA', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (898, N'CEYLANPINAR', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (899, N'HALFETİ', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (900, N'HİLVAN', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (901, N'SİVEREK', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (902, N'SURUÇ', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (903, N'VİRANŞEHİR', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (904, N'HARRAN', N'Aciklama', 63)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (905, N'BEYTÜŞŞEBAP', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (906, N'ŞIRNAK MERKEZ', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (907, N'CİZRE', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (908, N'İDİL', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (909, N'SİLOPİ', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (910, N'ULUDERE', N'Aciklama', 73)
GO
INSERT [dbo].[tbl_Ilce] ([IlceId], [IlceAd], [IlceAciklama], [IlId]) VALUES (911, N'GÜÇLÜKONAK', N'Aciklama', 73)
GO
SET IDENTITY_INSERT [dbo].[tbl_Ilce] OFF
GO
/****** Object:  Index [IX_Randevular]    Script Date: 4.11.2022 18:58:43 ******/
ALTER TABLE [dbo].[Randevular] ADD  CONSTRAINT [IX_Randevular] UNIQUE NONCLUSTERED 
(
	[randevuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hastalar]  WITH CHECK ADD  CONSTRAINT [FK_Hastalar_tbl_Cinsiyet] FOREIGN KEY([cinsiyetID])
REFERENCES [dbo].[tbl_Cinsiyet] ([CinsiyetId])
GO
ALTER TABLE [dbo].[Hastalar] CHECK CONSTRAINT [FK_Hastalar_tbl_Cinsiyet]
GO
ALTER TABLE [dbo].[Hastalar]  WITH CHECK ADD  CONSTRAINT [FK_Hastalar_tbl_Il] FOREIGN KEY([IlID])
REFERENCES [dbo].[tbl_Il] ([IlId])
GO
ALTER TABLE [dbo].[Hastalar] CHECK CONSTRAINT [FK_Hastalar_tbl_Il]
GO
ALTER TABLE [dbo].[Hastalar]  WITH CHECK ADD  CONSTRAINT [FK_Hastalar_tbl_Ilce] FOREIGN KEY([ilceID])
REFERENCES [dbo].[tbl_Ilce] ([IlceId])
GO
ALTER TABLE [dbo].[Hastalar] CHECK CONSTRAINT [FK_Hastalar_tbl_Ilce]
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD  CONSTRAINT [FK_Randevular_Hastalar] FOREIGN KEY([hastaID])
REFERENCES [dbo].[Hastalar] ([hastaID])
GO
ALTER TABLE [dbo].[Randevular] CHECK CONSTRAINT [FK_Randevular_Hastalar]
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD  CONSTRAINT [FK_Randevular_Randevular] FOREIGN KEY([randevuSonrakiRandevuID])
REFERENCES [dbo].[Randevular] ([randevuID])
GO
ALTER TABLE [dbo].[Randevular] CHECK CONSTRAINT [FK_Randevular_Randevular]
GO
ALTER TABLE [dbo].[tbl_Ilce]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ilce_tbl_Il] FOREIGN KEY([IlId])
REFERENCES [dbo].[tbl_Il] ([IlId])
GO
ALTER TABLE [dbo].[tbl_Ilce] CHECK CONSTRAINT [FK_tbl_Ilce_tbl_Il]
GO
/****** Object:  StoredProcedure [dbo].[spAdSoyadaGoreRandevuVeHastaListesiGetir]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Hasta Ad veya Soyada göreRandevu Listeleme
create proc [dbo].[spAdSoyadaGoreRandevuVeHastaListesiGetir]
(
@istenenAd nvarchar(50),
@istenenSoyad nvarchar(50)
)
AS
BEGIN
select * from Randevular as r
JOIN Hastalar as h ON r.hastaID=h.hastaID
where h.hastaAd like '@istenenAd%' OR h.hastaSoyad like '@istenenSoyad%'
END
GO
/****** Object:  StoredProcedure [dbo].[spHastaDuzenleWithID]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Hasta Kaydı Düzenleme
create proc [dbo].[spHastaDuzenleWithID]
(
		@hastaID int,
		@hastaAd nvarchar(50),
        @hastaSoyad nvarchar(50),
        @hastaTelefon nvarchar(20),
        @hastaEposta nvarchar(250),
        @hastaTCKimlik nvarchar(15),
        @hastaAdres nvarchar(500),
        @IlID int,
        @ilceID int,
        @cinsiyetID int,
        @hastaAktifMi bit,
        @hastaAciklama nvarchar(500),
        @hastaKanGrubu nvarchar(5)
)
AS
BEGIN
UPDATE [dbo].[Hastalar]
   SET 
      [hastaAd] = @hastaAd
      ,[hastaSoyad] = @hastaSoyad
      ,[hastaTelefon] = @hastaTelefon  
      ,[hastaEposta] = @hastaEposta 
      ,[hastaTCKimlik] = @hastaTCKimlik 
      ,[hastaAdres] = @hastaAdres
      ,[IlID] = @IlID 
      ,[ilceID] = @ilceID
      ,[cinsiyetID] = @cinsiyetID
      ,[hastaAktifMi] = @hastaAktifMi
      ,[hastaAciklama] = @hastaAciklama
      ,[hastaKanGrubu] = @hastaKanGrubu
 WHERE [hastaID] = @hastaID 

END
GO
/****** Object:  StoredProcedure [dbo].[spHastaKayit]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Yeni Hasta Kaydı
create proc [dbo].[spHastaKayit]
(
           @hastaAd nvarchar(50),
           @hastaSoyad nvarchar(50),
           @hastaTelefon nvarchar(20),
           @hastaEposta nvarchar(250),
           @hastaTCKimlik nvarchar(15),
           @hastaAdres nvarchar(500),
           @IlID int,
           @ilceID int,
           @cinsiyetID int,
           @hastaAktifMi bit,
           @hastaAciklama nvarchar(500),
           @hastaKanGrubu nvarchar(5)
)
as
BEGIN
INSERT INTO [dbo].[Hastalar]
           (
		    [hastaAd]
           ,[hastaSoyad]
           ,[hastaTelefon]
           ,[hastaEposta]
           ,[hastaTCKimlik]
           ,[hastaAdres]
           ,[IlID]
           ,[ilceID]
           ,[cinsiyetID]
           ,[hastaAktifMi]
           ,[hastaAciklama]
           ,[hastaKanGrubu]
		   )
     VALUES
           (
		   @hastaAd,
           @hastaSoyad, 
           @hastaTelefon, 
           @hastaEposta, 
           @hastaTCKimlik, 
           @hastaAdres, 
           @IlID, 
           @ilceID, 
           @cinsiyetID,
           @hastaAktifMi, 
           @hastaAciklama,
           @hastaKanGrubu
		   )
END
GO
/****** Object:  StoredProcedure [dbo].[spHastaKayitSilmeWithID]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Hasta Kayıt Silme ( Aktif durumunu pasif yapma - Tamamen Silmememe)
create proc [dbo].[spHastaKayitSilmeWithID]
(
		@hastaID int,
        @hastaAktifMi bit
)
AS
BEGIN
UPDATE [dbo].[Hastalar]
   SET 
     [hastaAktifMi] = @hastaAktifMi
 WHERE [hastaID] = @hastaID 

END
GO
/****** Object:  StoredProcedure [dbo].[spHastaSilWithID]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Hasta Kaydı Silme
create proc [dbo].[spHastaSilWithID]
(
		@hastaID int
)
AS
BEGIN
DELETE FROM [dbo].[Hastalar]
      WHERE [hastaID] = @hastaID 
END
GO
/****** Object:  StoredProcedure [dbo].[spHastaTCyeGoreRandevuVeHastaListesiGetir]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Hasta TC kimlik No ya göre Randevu listeleme
create proc [dbo].[spHastaTCyeGoreRandevuVeHastaListesiGetir]
(
@istenenTC nvarchar(15)
)
AS
BEGIN
select * from Randevular as r
JOIN Hastalar as h ON r.hastaID=h.hastaID
where hastaTCKimlik like '@istenenTC%'
END
GO
/****** Object:  StoredProcedure [dbo].[spRandevuDuzenleWithRandevuID]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Randevu Düzenleme
create proc [dbo].[spRandevuDuzenleWithRandevuID]
(
			@randevuID int
			,@hastaID int
           ,@randevuTarihi datetime 
           ,@randevuAktifMi bit 
           ,@randevuHastaSikayet nvarchar(500) 
           ,@randevuEpikriz nvarchar(500) 
           ,@randevuRecete nvarchar(500) 
           ,@randevuSonrakiRandevuID int 
           ,@randevuOkMi bit 
           ,@randevuAciklama nvarchar(500) 
           ,@randevuYapilanIslem nvarchar(500) 
)
AS
BEGIN
UPDATE [dbo].[Randevular]
   SET 
		[hastaID]= @hastaID,
      [randevuTarihi]=  @randevuTarihi, 
      [randevuAktifMi]= @randevuAktifMi,  
      [randevuHastaSikayet]= @randevuHastaSikayet, 
      [randevuEpikriz]= @randevuEpikriz, 
      [randevuRecete]= @randevuRecete, 
      [randevuSonrakiRandevuID]= @randevuSonrakiRandevuID,
      [randevuOkMi]=@randevuOkMi,  
      [randevuAciklama]= @randevuAciklama, 
      [randevuYapilanIslem]= @randevuYapilanIslem
 WHERE randevuID=@randevuID
END
GO
/****** Object:  StoredProcedure [dbo].[spRandevuKayitWithHastaID]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Randevu Yeni Kayıt ve Aktarma
create proc [dbo].[spRandevuKayitWithHastaID]
(
            @hastaID int
           ,@randevuTarihi datetime 
           ,@randevuAktifMi bit 
           ,@randevuHastaSikayet nvarchar(500) 
           ,@randevuEpikriz nvarchar(500) 
           ,@randevuRecete nvarchar(500) 
           ,@randevuSonrakiRandevuID int 
           ,@randevuOkMi bit 
           ,@randevuAciklama nvarchar(500) 
           ,@randevuYapilanIslem nvarchar(500) 
)
AS
BEGIN
INSERT INTO [dbo].[Randevular]
           (
           [hastaID]
           ,[randevuTarihi]
           ,[randevuAktifMi]
           ,[randevuHastaSikayet]
           ,[randevuEpikriz]
           ,[randevuRecete]
           ,[randevuSonrakiRandevuID]
           ,[randevuOkMi]
           ,[randevuAciklama]
           ,[randevuYapilanIslem])
     VALUES
           (		   
           @hastaID,
           @randevuTarihi,  
           @randevuAktifMi,  
           @randevuHastaSikayet, 
           @randevuEpikriz, 
           @randevuRecete, 
           @randevuSonrakiRandevuID,  
           @randevuOkMi,  
           @randevuAciklama, 
           @randevuYapilanIslem
		   )
END
GO
/****** Object:  StoredProcedure [dbo].[spRandevuSilWithID]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 --Randevu Sil (Pasif Yap)
 create proc [dbo].[spRandevuSilWithID]
 (
 @randevuID int
,@hastaID int
,@randevuAktifMi bit 
 )
 AS
 BEGIN
 UPDATE [dbo].[Randevular]
   SET  [randevuAktifMi]= @randevuAktifMi  
 WHERE randevuID=@randevuID
 END
           
           
GO
/****** Object:  StoredProcedure [dbo].[spTarihlereGoreRandevuVeHastaListesiGetir]    Script Date: 4.11.2022 18:58:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--İki Tarih Aralığına Göre Randevuları listeleme
create proc [dbo].[spTarihlereGoreRandevuVeHastaListesiGetir]
(
@ilkTarih datetime,
@ikinciTarih datetime
)
AS
BEGIN
select * from Randevular as r
JOIN Hastalar as h ON r.hastaID=h.hastaID
where r.randevuTarihi between @ilkTarih and @ikinciTarih and hastaAktifMi=1
END

GO
USE [master]
GO
ALTER DATABASE [DB_DisHekimiRandevu] SET  READ_WRITE 
GO
