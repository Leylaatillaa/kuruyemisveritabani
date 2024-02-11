USE [kuruyemisveritabani]
GO
/****** Object:  Table [dbo].[BesinBilgileri]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BesinBilgileri](
	[BesinID] [int] NOT NULL,
	[Kalori] [int] NULL,
	[Protein] [int] NULL,
	[Yag] [int] NULL,
	[Karbonhidrat] [int] NULL,
	[Lif] [int] NULL,
	[Gram] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BesinID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FiyatBilgileri]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FiyatBilgileri](
	[FiyatID] [int] NOT NULL,
	[UrunID] [int] NULL,
	[Urunadi] [varchar](50) NULL,
	[Fiyat] [int] NULL,
	[PerakendeFiyat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FiyatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KargoBilgileri]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KargoBilgileri](
	[KargoID] [int] NOT NULL,
	[GonderenAdi] [varchar](50) NULL,
	[GonderenAdresi] [varchar](100) NULL,
	[AliciAdi] [varchar](50) NULL,
	[AliciAdresi] [varchar](100) NULL,
	[KargoTarihi] [date] NULL,
	[TeslimTarihi] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[KargoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KuruyemisBilgileri]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KuruyemisBilgileri](
	[KuruyemisID] [int] NOT NULL,
	[Adi] [varchar](50) NULL,
	[Miktar] [int] NULL,
	[Fiyat] [decimal](10, 2) NULL,
	[KargoID] [int] NULL,
	[TurID] [int] NULL,
	[FirmaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[KuruyemisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kuruyemisler]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kuruyemisler](
	[KuruyemisID] [int] NOT NULL,
	[TurAdi] [varchar](50) NULL,
	[Karbonhidrat] [decimal](10, 2) NULL,
	[Protein] [decimal](10, 2) NULL,
	[Yag] [decimal](10, 2) NULL,
	[Lif] [decimal](10, 2) NULL,
	[AileAdi] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[KuruyemisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KuruyemisTuru]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KuruyemisTuru](
	[TurID] [int] NOT NULL,
	[TurAdi] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MusteriBilgileri]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusteriBilgileri](
	[MusteriID] [int] NOT NULL,
	[Ad] [nvarchar](25) NULL,
	[Soyad] [nvarchar](25) NULL,
	[Email] [varchar](100) NULL,
	[Telefon] [varchar](25) NULL,
	[Adres] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaklamaBilgileri]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaklamaBilgileri](
	[SaklamaID] [int] NOT NULL,
	[UrunID] [int] NULL,
	[SaklamaKosullari] [varchar](100) NULL,
	[Sontuketimtarihi] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[SaklamaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaticiBilgileri]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaticiBilgileri](
	[SaticiID] [int] NOT NULL,
	[SaticiAdi] [varchar](50) NULL,
	[Sehir] [varchar](50) NULL,
	[Telefon] [varchar](15) NULL,
	[Eposta] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SaticiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparisler]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparisler](
	[SiparisID] [int] NOT NULL,
	[MusteriAdi] [varchar](50) NULL,
	[MusteriSoyadi] [varchar](50) NULL,
	[SaticiID] [int] NULL,
	[KuruyemisID] [int] NULL,
	[Gramaj] [decimal](10, 2) NULL,
	[Adres] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[SiparisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stok]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stok](
	[StokID] [int] NOT NULL,
	[UrunID] [int] NULL,
	[Stok] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StokID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedarikci]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikci](
	[FirmaID] [int] NOT NULL,
	[UreticiAdi] [nvarchar](30) NULL,
	[UrunID] [int] NULL,
	[Adres] [text] NULL,
	[Iletisimbilgileri] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[FirmaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UreticiFirma]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UreticiFirma](
	[FirmaID] [int] NOT NULL,
	[FirmaAdi] [varchar](50) NULL,
	[Adres] [varchar](100) NULL,
	[Telefon] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[FirmaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 29.12.2023 17:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunID] [int] NOT NULL,
	[Ad] [varchar](25) NULL,
	[Tur] [varchar](15) NULL,
	[Koken] [varchar](15) NULL,
	[BesinID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (1, 120, 10, 5, 15, 3, 100)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (2, 220, 15, 8, 25, 5, 150)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (3, 320, 20, 12, 35, 7, 200)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (4, 180, 12, 6, 20, 4, 120)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (5, 280, 18, 10, 30, 6, 180)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (6, 250, 16, 9, 28, 5, 170)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (7, 180, 12, 7, 20, 4, 130)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (8, 300, 22, 15, 35, 6, 190)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (9, 210, 14, 8, 25, 4, 150)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (10, 260, 18, 10, 30, 5, 160)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (11, 320, 24, 18, 40, 7, 200)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (12, 170, 11, 6, 18, 3, 110)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (13, 280, 20, 12, 32, 6, 180)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (14, 240, 16, 9, 26, 5, 150)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (15, 190, 13, 7, 22, 4, 140)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (16, 350, 25, 20, 45, 8, 220)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (17, 200, 14, 8, 24, 4, 160)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (18, 270, 19, 11, 28, 5, 190)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (19, 230, 15, 9, 24, 4, 170)
INSERT [dbo].[BesinBilgileri] ([BesinID], [Kalori], [Protein], [Yag], [Karbonhidrat], [Lif], [Gram]) VALUES (20, 290, 21, 13, 34, 7, 200)
GO
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (1, 1, N'Fındık', 100, 125)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (2, 2, N'Ceviz', 50, 62)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (3, 3, N'Antep Fıstığı', 200, 250)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (4, 4, N'Kaju', 75, 93)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (5, 5, N'Badem', 125, 156)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (6, 6, N'Yer Fıstığı', 50, 62)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (7, 7, N'Kabak Çekirdeği', 25, 31)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (8, 8, N'Brezilya Fıstığı', 100, 125)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (9, 9, N'İnci Fıstığı', 150, 187)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (10, 10, N'Pistacı', 250, 312)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (11, 11, N'Antep Fıstığı Ezmesi', 150, 187)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (12, 12, N'Fındık Ezmesi', 125, 156)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (13, 13, N'Ceviz Ezmesi', 100, 125)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (14, 14, N'Kaju Ezmesi', 75, 93)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (15, 15, N'Badem Ezmesi', 50, 62)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (16, 16, N'Yer Fıstığı Ezmesi', 25, 31)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (17, 17, N'Kabak Çekirdeği Ezmesi', 15, 18)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (18, 18, N'Brezilya Fıstığı Ezmesi', 10, 12)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (19, 19, N'Karayemiş', 100, 125)
INSERT [dbo].[FiyatBilgileri] ([FiyatID], [UrunID], [Urunadi], [Fiyat], [PerakendeFiyat]) VALUES (20, 20, N'Kuşburnu', 50, 62)
GO
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (1, N'Mustafa Yılmaz', N'İstanbul, Kadıköy, Bağdat Caddesi', N'Ali Can', N'Ankara, Çankaya, Kızılay', CAST(N'2023-12-25' AS Date), CAST(N'2023-12-27' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (2, N'Ayşegül Öztürk', N'İzmir, Bornova, Evka 3', N'Mehmet Emin', N'Adana, Seyhan, Çukurova', CAST(N'2023-12-26' AS Date), CAST(N'2023-12-28' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (3, N'Fatma Demir', N'Ankara, Çankaya, Balgat', N'Zeynep Kara', N'İstanbul, Fatih, Eminönü', CAST(N'2023-12-27' AS Date), CAST(N'2023-12-29' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (4, N'Ali Yılmaz', N'İstanbul, Beyoğlu, İstiklal Caddesi', N'Selin Öztürk', N'Antalya, Muratpaşa, Konyaaltı', CAST(N'2023-12-28' AS Date), CAST(N'2023-12-30' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (5, N'Mustafa Demir', N'İzmir, Konak, Alsancak', N'Ayşe Can', N'Bursa, Osmangazi, Nilüfer', CAST(N'2023-12-29' AS Date), CAST(N'2023-12-31' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (6, N'Fatma Öztürk', N'Ankara, Keçiören, İncirli', N'Mehmet Yılmaz', N'İstanbul, Şişli, Mecidiyeköy', CAST(N'2023-12-30' AS Date), CAST(N'2024-01-01' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (7, N'Zeynep Can', N'İstanbul, Üsküdar, Çengelköy', N'Ali Demir', N'Ankara, Çankaya, Çayyolu', CAST(N'2023-12-31' AS Date), CAST(N'2024-01-02' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (8, N'Mustafa Öztürk', N'İzmir, Karşıyaka, Bostanlı', N'Ayşe Demir', N'Adana, Seyhan, Yüreğir', CAST(N'2024-01-02' AS Date), CAST(N'2024-01-03' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (9, N'Fatma Yılmaz', N'Ankara, Yenimahalle, Demetevler', N'Mehmet Can', N'İstanbul, Kadıköy, Moda', CAST(N'2024-01-03' AS Date), CAST(N'2024-01-04' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (10, N'Zeynep Demir', N'İstanbul, Beykoz, Çubuklu', N'Ali Can', N'Ankara, Çankaya, Bilkent', CAST(N'2024-01-04' AS Date), CAST(N'2024-01-05' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (11, N'Mustafa Can', N'İzmir, Konak, Halkapınar', N'Ayşe Yılmaz', N'Adana, Seyhan, Sarıçam', CAST(N'2024-01-05' AS Date), CAST(N'2024-01-06' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (12, N'Fatma Demir', N'Ankara, Mamak, Akdere', N'Mehmet Öztürk', N'İstanbul, Fatih, Sultanahmet', CAST(N'2024-01-06' AS Date), CAST(N'2024-01-07' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (13, N'Zeynep Öztürk', N'İstanbul, Ümraniye, Dudullu', N'Ali Yılmaz', N'Ankara, Çankaya, Çayyolu', CAST(N'2024-01-07' AS Date), CAST(N'2024-01-08' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (14, N'Ali Demir', N'İstanbul, Bakırköy, Zeytinlik', N'Selin Öztürk', N'Antalya, Muratpaşa, Kepez', CAST(N'2024-01-08' AS Date), CAST(N'2024-01-09' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (15, N'Mustafa Öztürk', N'İzmir, Karşıyaka, Çarşı', N'Mehmet Yılmaz', N'Bursa, Osmangazi, Osmangazi', CAST(N'2024-01-09' AS Date), CAST(N'2024-01-10' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (16, N'Fatma Yılmaz', N'Ankara, Çankaya, Kızılay', N'Ayşe Can', N'İstanbul, Kadıköy, Fenerbahçe', CAST(N'2024-01-10' AS Date), CAST(N'2024-01-11' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (17, N'Zeynep Demir', N'İstanbul, Üsküdar, Ümraniye', N'Ali Yılmaz', N'Ankara, Çankaya, Çayyolu', CAST(N'2024-01-11' AS Date), CAST(N'2024-01-12' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (18, N'Mustafa Can', N'İzmir, Konak, Halkapınar', N'Ayşe Yılmaz', N'Adana, Seyhan, Seyhan', CAST(N'2024-01-12' AS Date), CAST(N'2024-01-13' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (19, N'Fatma Demir', N'Ankara, Mamak, Akdere', N'Mehmet Öztürk', N'İstanbul, Fatih, Eminönü', CAST(N'2024-01-13' AS Date), CAST(N'2024-01-14' AS Date))
INSERT [dbo].[KargoBilgileri] ([KargoID], [GonderenAdi], [GonderenAdresi], [AliciAdi], [AliciAdresi], [KargoTarihi], [TeslimTarihi]) VALUES (20, N'Yusuf Demir', N'İstanbul, Şişli, Mecidiyeköy', N'Ahmet Yılmaz', N'Ankara, Çankaya, Çayyolu', CAST(N'2024-01-14' AS Date), CAST(N'2024-01-15' AS Date))
GO
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (1, N'Fındık', 1000, CAST(100.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (2, N'Ceviz', 500, CAST(50.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (3, N'Antep Fıstığı', 250, CAST(200.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (4, N'Kaju', 100, CAST(75.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (5, N'Badem', 200, CAST(125.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (6, N'Yer Fıstığı', 500, CAST(50.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (7, N'Kabak Çekirdeği', 1000, CAST(25.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (8, N'Brezilya Fıstığı', 50, CAST(100.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (9, N'İnci Fıstığı', 200, CAST(150.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (10, N'Pistacı', 250, CAST(250.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (11, N'Antep Fıstığı Ezmesi', 500, CAST(150.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (12, N'Fındık Ezmesi', 1000, CAST(125.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (13, N'Ceviz Ezmesi', 500, CAST(100.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (14, N'Kaju Ezmesi', 250, CAST(75.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (15, N'Badem Ezmesi', 100, CAST(50.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (16, N'Yer Fıstığı Ezmesi', 250, CAST(25.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (17, N'Kabak Çekirdeği Ezmesi', 500, CAST(15.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (18, N'Brezilya Fıstığı Ezmesi', 100, CAST(10.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (19, N'Karayemiş', 100, CAST(100.00 AS Decimal(10, 2)), NULL, NULL, NULL)
INSERT [dbo].[KuruyemisBilgileri] ([KuruyemisID], [Adi], [Miktar], [Fiyat], [KargoID], [TurID], [FirmaID]) VALUES (20, N'Kuşburnu', 500, CAST(50.00 AS Decimal(10, 2)), NULL, NULL, NULL)
GO
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (1, N'Fıstık', CAST(10.50 AS Decimal(10, 2)), CAST(25.20 AS Decimal(10, 2)), CAST(45.00 AS Decimal(10, 2)), CAST(8.30 AS Decimal(10, 2)), N'Baklagiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (2, N'Badem', CAST(5.00 AS Decimal(10, 2)), CAST(21.10 AS Decimal(10, 2)), CAST(49.90 AS Decimal(10, 2)), CAST(12.50 AS Decimal(10, 2)), N'Gülgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (3, N'Kaju', CAST(15.70 AS Decimal(10, 2)), CAST(18.20 AS Decimal(10, 2)), CAST(43.80 AS Decimal(10, 2)), CAST(3.30 AS Decimal(10, 2)), N'Sumakgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (4, N'Ay Çekirdeği', CAST(7.60 AS Decimal(10, 2)), CAST(22.50 AS Decimal(10, 2)), CAST(52.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), N'Baklagiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (5, N'Ceviz', CAST(3.90 AS Decimal(10, 2)), CAST(15.20 AS Decimal(10, 2)), CAST(65.20 AS Decimal(10, 2)), CAST(6.70 AS Decimal(10, 2)), N'Cevizgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (6, N'Leblebi', CAST(10.00 AS Decimal(10, 2)), CAST(27.20 AS Decimal(10, 2)), CAST(34.10 AS Decimal(10, 2)), CAST(10.60 AS Decimal(10, 2)), N'Baklagiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (7, N'Kabak Çekirdeği', CAST(12.00 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), CAST(49.80 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), N'Baklagiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (8, N'Antep Fıstığı', CAST(8.20 AS Decimal(10, 2)), CAST(20.90 AS Decimal(10, 2)), CAST(45.30 AS Decimal(10, 2)), CAST(10.30 AS Decimal(10, 2)), N'Baklagiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (9, N'Üzüm Çekirdeği', CAST(7.50 AS Decimal(10, 2)), CAST(14.00 AS Decimal(10, 2)), CAST(19.90 AS Decimal(10, 2)), CAST(14.50 AS Decimal(10, 2)), N'Üzümgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (10, N'Dövülmüş Fıstık', CAST(12.30 AS Decimal(10, 2)), CAST(28.10 AS Decimal(10, 2)), CAST(42.50 AS Decimal(10, 2)), CAST(7.80 AS Decimal(10, 2)), N'Baklagiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (11, N'Hindistancevizi', CAST(6.50 AS Decimal(10, 2)), CAST(3.30 AS Decimal(10, 2)), CAST(64.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), N'Arecaceae')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (12, N'Macadamia Fıstığı', CAST(13.80 AS Decimal(10, 2)), CAST(7.90 AS Decimal(10, 2)), CAST(75.80 AS Decimal(10, 2)), CAST(8.60 AS Decimal(10, 2)), N'Proteaceae')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (13, N'Pekan Cevizi', CAST(13.90 AS Decimal(10, 2)), CAST(2.60 AS Decimal(10, 2)), CAST(71.90 AS Decimal(10, 2)), CAST(9.60 AS Decimal(10, 2)), N'Cevizgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (14, N'Quinoa Topları', CAST(35.80 AS Decimal(10, 2)), CAST(14.50 AS Decimal(10, 2)), CAST(16.70 AS Decimal(10, 2)), CAST(18.00 AS Decimal(10, 2)), N'Amaranthaceae')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (15, N'Chia Tohumu', CAST(42.10 AS Decimal(10, 2)), CAST(16.50 AS Decimal(10, 2)), CAST(31.40 AS Decimal(10, 2)), CAST(34.40 AS Decimal(10, 2)), N'Ballıbabagiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (16, N'Havuç Çekirdeği', CAST(8.00 AS Decimal(10, 2)), CAST(20.10 AS Decimal(10, 2)), CAST(40.20 AS Decimal(10, 2)), CAST(11.30 AS Decimal(10, 2)), N'Havucgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (17, N'Goji Berry', CAST(68.00 AS Decimal(10, 2)), CAST(12.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), N'Solanaceae')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (18, N'İncir', CAST(19.20 AS Decimal(10, 2)), CAST(3.30 AS Decimal(10, 2)), CAST(0.40 AS Decimal(10, 2)), CAST(9.80 AS Decimal(10, 2)), N'İncirgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (19, N'Cam Fıstığı', CAST(12.60 AS Decimal(10, 2)), CAST(3.10 AS Decimal(10, 2)), CAST(58.80 AS Decimal(10, 2)), CAST(9.30 AS Decimal(10, 2)), N'Çamgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (20, N'Arapsabunu', CAST(14.30 AS Decimal(10, 2)), CAST(1.90 AS Decimal(10, 2)), CAST(47.60 AS Decimal(10, 2)), CAST(11.20 AS Decimal(10, 2)), N'Sapindaceae')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (30, N'Fındık', CAST(13.60 AS Decimal(10, 2)), CAST(20.40 AS Decimal(10, 2)), CAST(65.70 AS Decimal(10, 2)), CAST(7.40 AS Decimal(10, 2)), N'Fındıkgillerden')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (31, N'Yerfıstığı', CAST(16.10 AS Decimal(10, 2)), CAST(25.80 AS Decimal(10, 2)), CAST(44.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), N'Baklagiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (32, N'Badem', CAST(16.20 AS Decimal(10, 2)), CAST(21.10 AS Decimal(10, 2)), CAST(53.90 AS Decimal(10, 2)), CAST(12.20 AS Decimal(10, 2)), N'Baklagiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (33, N'Ceviz', CAST(13.20 AS Decimal(10, 2)), CAST(15.20 AS Decimal(10, 2)), CAST(65.30 AS Decimal(10, 2)), CAST(10.30 AS Decimal(10, 2)), N'Cevizgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (34, N'Acıbadem', CAST(16.30 AS Decimal(10, 2)), CAST(19.30 AS Decimal(10, 2)), CAST(51.90 AS Decimal(10, 2)), CAST(12.60 AS Decimal(10, 2)), N'Baklagiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (35, N'Antepfıstığı', CAST(18.80 AS Decimal(10, 2)), CAST(22.20 AS Decimal(10, 2)), CAST(49.80 AS Decimal(10, 2)), CAST(10.10 AS Decimal(10, 2)), N'Baklagiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (36, N'Kaju', CAST(16.10 AS Decimal(10, 2)), CAST(22.20 AS Decimal(10, 2)), CAST(55.80 AS Decimal(10, 2)), CAST(12.40 AS Decimal(10, 2)), N'Baklagiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (37, N'Kuşburnu', CAST(28.10 AS Decimal(10, 2)), CAST(10.10 AS Decimal(10, 2)), CAST(44.40 AS Decimal(10, 2)), CAST(17.20 AS Decimal(10, 2)), N'Gülgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (38, N'Karayemiş', CAST(25.20 AS Decimal(10, 2)), CAST(11.20 AS Decimal(10, 2)), CAST(44.40 AS Decimal(10, 2)), CAST(19.20 AS Decimal(10, 2)), N'Gülgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (39, N'Çilek', CAST(11.10 AS Decimal(10, 2)), CAST(1.20 AS Decimal(10, 2)), CAST(2.20 AS Decimal(10, 2)), CAST(7.20 AS Decimal(10, 2)), N'Gülgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (40, N'Yaban mersini', CAST(13.10 AS Decimal(10, 2)), CAST(1.20 AS Decimal(10, 2)), CAST(2.20 AS Decimal(10, 2)), CAST(8.20 AS Decimal(10, 2)), N'Gülgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (41, N'Kayısı', CAST(10.10 AS Decimal(10, 2)), CAST(1.20 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(4.20 AS Decimal(10, 2)), N'Kayısıgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (42, N'Üzüm', CAST(11.10 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(5.20 AS Decimal(10, 2)), N'Üzümgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (43, N'Kiraz', CAST(12.10 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(6.20 AS Decimal(10, 2)), N'Kirazgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (44, N'Erik', CAST(13.10 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(7.20 AS Decimal(10, 2)), N'Erikgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (45, N'Dut', CAST(14.10 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(8.20 AS Decimal(10, 2)), N'Dutgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (46, N'Ananas', CAST(15.10 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(9.20 AS Decimal(10, 2)), N'Ananasgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (47, N'Kivi', CAST(16.10 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(10.20 AS Decimal(10, 2)), N'Kivigiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (48, N'Karpuz', CAST(17.10 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(11.20 AS Decimal(10, 2)), N'Karpuzgiller')
INSERT [dbo].[Kuruyemisler] ([KuruyemisID], [TurAdi], [Karbonhidrat], [Protein], [Yag], [Lif], [AileAdi]) VALUES (49, N'Portakal', CAST(18.10 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)), CAST(12.20 AS Decimal(10, 2)), N'Portakalgiller')
GO
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (1, N'Fındık')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (2, N'Ceviz')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (3, N'Antep Fıstığı')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (4, N'Kaju')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (5, N'Badem')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (6, N'Yer Fıstığı')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (7, N'Kabak Çekirdeği')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (8, N'Brezilya Fıstığı')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (9, N'İnci Fıstığı')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (10, N'Kuş Yemişi')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (11, N'Kestane')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (12, N'Çam Fıstığı')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (13, N'Pistacıye')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (14, N'Leblebi')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (15, N'Yerfıstığı Ezmesi')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (16, N'Beyaz Fıstık')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (17, N'Kişniş Çekirdeği')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (18, N'Gül Fıstığı')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (19, N'Kahve Çekirdeği')
INSERT [dbo].[KuruyemisTuru] ([TurID], [TurAdi]) VALUES (20, N'Kakao Çekirdeği')
GO
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (101, N'Ahmet', N'Yılmaz', N'ahmet.yilmaz@example.com', N'0532 123 45 67', N'İstanbul, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (102, N'Mehmet', N'Kalkan', N'mehmet.kalkan@example.com', N'0533 456 78 90', N'Ankara, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (103, N'Fatma', N'Arslan', N'fatma.arslan@example.com', N'0534 567 89 01', N'İzmir, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (104, N'Ali', N'Demir', N'ali.demir@example.com', N'0535 678 90 12', N'Adana, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (105, N'Ayşe', N'Gül', N'ayse.gul@example.com', N'0536 789 01 23', N'Bursa, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (106, N'Hasan', N'Çelik', N'hasan.celik@example.com', N'0537 890 12 34', N'Eskişehir, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (107, N'Zeynep', N'Küçük', N'zeynep.kucuk@example.com', N'0538 901 23 45', N'Antalya, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (108, N'Oğuzhan', N'Kocaman', N'oguzhan.kocaman@example.com', N'0539 012 34 56', N'Konya, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (109, N'Merve', N'Altın', N'merve.altin@example.com', N'0540 123 45 67', N'Trabzon, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (110, N'Emre', N'Şahin', N'emre.sahin@example.com', N'0541 456 78 90', N'Samsun, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (111, N'Rümeysa', N'Karahan', N'rumeysa.karahan@example.com', N'0542 567 89 01', N'Rize, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (112, N'Gökhan', N'Gür', N'gokhan.gur@example.com', N'0543 678 90 12', N'Gaziantep, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (113, N'İrem', N'Yıldız', N'irem.yildiz@example.com', N'0544 567 89 01', N'Şanlıurfa, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (114, N'Berk', N'Can', N'berk.can@example.com', N'0545 678 90 12', N'Mardin, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (115, N'Elif', N'Yılmaz', N'elif.yilmaz@example.com', N'0546 789 01 23', N'Van, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (116, N'Yiğit', N'Demir', N'yigit.demir@example.com', N'0547 890 12 34', N'Bitlis, Türkiye')
INSERT [dbo].[MusteriBilgileri] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [Adres]) VALUES (117, N'Nisa', N'Küçük', N'nisa.kucuk@example.com', N'0548 901 23 45', N'Muş, Türkiye')
GO
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (101, 1, N'Kuru ve serin ortam', CAST(N'2024-12-31' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (102, 2, N'Oda sıcaklığında', CAST(N'2024-11-30' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (103, 3, N'Buzdolabında saklanmalı', CAST(N'2029-04-15' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (104, 4, N'Serin ve kuru yerde muhafaza edilmeli', CAST(N'2023-12-20' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (105, 5, N'Buzdolabında 2-4°C arasında saklayın', CAST(N'2023-12-28' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (106, 6, N'Açıldıktan sonra buzdolabında saklayın', CAST(N'2024-01-05' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (107, 7, N'Oda sıcaklığında, güneş ışığından uzakta', CAST(N'2024-02-10' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (108, 8, N'Karanlık ve serin bir yerde muhafaza edin', CAST(N'2023-12-25' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (109, 9, N'Açıldıktan sonra hava almayan bir kapta saklayın', CAST(N'2023-12-15' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (110, 10, N'Buzdolabında -18°C de saklayın', CAST(N'2024-01-20' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (111, 11, N'Oda sıcaklığında nemden uzak bir yerde', CAST(N'2024-03-01' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (112, 12, N'Kuru bir kapta muhafaza edilmeli', CAST(N'2023-12-31' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (113, 13, N'Buzdolabında saklayın, taze olarak tüketin', CAST(N'2024-01-08' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (114, 14, N'Karanlık ve serin bir yerde saklayın', CAST(N'2023-12-10' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (115, 15, N'Kapalı bir kapta, serin ve kuru bir yerde saklayın', CAST(N'2023-12-18' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (116, 16, N'Buzdolabında saklanmalı, son tüketim tarihine kadar', CAST(N'2024-01-25' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (117, 17, N'Oda sıcaklığında, kuru bir yerde saklayın', CAST(N'2024-02-05' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (118, 18, N'Serin ve kuru bir yerde muhafaza edin', CAST(N'2023-12-22' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (119, 19, N'Kuru ve serin bir yerde saklayın', CAST(N'2023-12-29' AS Date))
INSERT [dbo].[SaklamaBilgileri] ([SaklamaID], [UrunID], [SaklamaKosullari], [Sontuketimtarihi]) VALUES (120, 20, N'Buzdolabında saklayın, açıldıktan sonra tüketin', CAST(N'2024-01-02' AS Date))
GO
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (1, N'Satici1', N'İstanbul', N'555-1111', N'satici1@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (2, N'Satici2', N'Ankara', N'555-2222', N'satici2@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (3, N'Satici3', N'İzmir', N'555-3333', N'satici3@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (4, N'Satici4', N'Bursa', N'555-4444', N'satici4@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (5, N'Satici5', N'Antalya', N'555-5555', N'satici5@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (6, N'Satici6', N'Adana', N'555-6666', N'satici6@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (7, N'Satici7', N'Trabzon', N'555-7777', N'satici7@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (8, N'Satici8', N'Eskişehir', N'555-8888', N'satici8@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (9, N'Satici9', N'Gaziantep', N'555-9999', N'satici9@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (10, N'Satici10', N'Konya', N'555-1010', N'satici10@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (11, N'Satici11', N'Diyarbakır', N'555-1111', N'satici11@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (12, N'Satici12', N'Samsun', N'555-1212', N'satici12@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (13, N'Satici13', N'Malatya', N'555-1313', N'satici13@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (14, N'Satici14', N'Kayseri', N'555-1414', N'satici14@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (15, N'Satici15', N'Hatay', N'555-1515', N'satici15@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (16, N'Satici16', N'Van', N'555-1616', N'satici16@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (17, N'Satici17', N'Balıkesir', N'555-1717', N'satici17@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (18, N'Satici18', N'Mersin', N'555-1818', N'satici18@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (19, N'Satici19', N'Denizli', N'555-1919', N'satici19@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (20, N'Satici20', N'Isparta', N'555-2020', N'satici20@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (21, N'Satici1', N'İstanbul', N'555-1111', N'satici1@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (22, N'Satici2', N'Ankara', N'555-2222', N'satici2@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (23, N'Satici3', N'İzmir', N'555-3333', N'satici3@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (24, N'Satici4', N'Bursa', N'555-4444', N'satici4@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (25, N'Satici5', N'Antalya', N'555-5555', N'satici5@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (26, N'Satici6', N'Adana', N'555-6666', N'satici6@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (27, N'Satici7', N'Trabzon', N'555-7777', N'satici7@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (28, N'Satici8', N'Eskişehir', N'555-8888', N'satici8@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (29, N'Satici9', N'Gaziantep', N'555-9999', N'satici9@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (30, N'Satici10', N'Konya', N'555-1010', N'satici10@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (31, N'Satici11', N'Diyarbakır', N'555-1111', N'satici11@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (32, N'Satici12', N'Samsun', N'555-1212', N'satici12@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (33, N'Satici13', N'Malatya', N'555-1313', N'satici13@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (34, N'Satici14', N'Kayseri', N'555-1414', N'satici14@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (35, N'Satici15', N'Hatay', N'555-1515', N'satici15@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (36, N'Satici16', N'Van', N'555-1616', N'satici16@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (37, N'Satici17', N'Balıkesir', N'555-1717', N'satici17@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (38, N'Satici18', N'Mersin', N'555-1818', N'satici18@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (39, N'Satici19', N'Denizli', N'555-1919', N'satici19@gmail.com')
INSERT [dbo].[SaticiBilgileri] ([SaticiID], [SaticiAdi], [Sehir], [Telefon], [Eposta]) VALUES (40, N'Satici20', N'Isparta', N'555-2020', N'satici20@gmail.com')
GO
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (1, N'Ahmet', N'Yılmaz', 1, 3, CAST(2000.00 AS Decimal(10, 2)), N'İstanbul, Kadıköy')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (2, N'Ayşe', N'Demir', 5, 6, CAST(2500.00 AS Decimal(10, 2)), N'Ankara, Çankaya')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (3, N'Mehmet', N'Kara', 10, 11, CAST(1200.00 AS Decimal(10, 2)), N'İzmir, Bornova')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (4, N'Zeynep', N'Yıldız', 15, 17, CAST(1000.00 AS Decimal(10, 2)), N'Bursa, Osmangazi')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (5, N'Fatma', N'Öz', 20, 18, CAST(750.00 AS Decimal(10, 2)), N'Antalya, Muratpaşa')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (6, N'Deniz', N'Aydın', 2, 5, CAST(500.00 AS Decimal(10, 2)), N'İzmir, Karşıyaka')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (7, N'Yasin', N'Tekin', 8, 14, CAST(250.00 AS Decimal(10, 2)), N'Ankara, Yenimahalle')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (8, N'Nur', N'Güzel', 12, 9, CAST(1750.00 AS Decimal(10, 2)), N'İstanbul, Beylikdüzü')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (9, N'Okan', N'Kaya', 17, 16, CAST(1500.00 AS Decimal(10, 2)), N'Antalya, Kepez')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (10, N'Elif', N'Acar', 3, 13, CAST(1250.00 AS Decimal(10, 2)), N'İzmir, Buca')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (11, N'Cem', N'Arslan', 19, 20, CAST(1000.00 AS Decimal(10, 2)), N'Ankara, Sincan')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (12, N'Aslı', N'Öztürk', 7, 2, CAST(750.00 AS Decimal(10, 2)), N'Eskişehir, Tepebaşı')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (13, N'Murat', N'Yıldız', 14, 8, CAST(1200.00 AS Decimal(10, 2)), N'İstanbul, Ümraniye')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (14, N'Selin', N'Can', 4, 15, CAST(1050.00 AS Decimal(10, 2)), N'Antalya, Konyaaltı')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (15, N'Ali', N'Yılmaz', 18, 4, CAST(275.00 AS Decimal(10, 2)), N'Bursa, Nilüfer')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (16, N'Zehra', N'Demir', 11, 1, CAST(1200.00 AS Decimal(10, 2)), N'Adana, Seyhan')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (17, N'Efe', N'Kara', 6, 19, CAST(250.00 AS Decimal(10, 2)), N'İstanbul, Beşiktaş')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (18, N'İrem', N'Yavuz', 1, 7, CAST(1500.00 AS Decimal(10, 2)), N'Ankara, Çukurambar')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (19, N'Berkay', N'Aydın', 5, 12, CAST(1000.00 AS Decimal(10, 2)), N'İzmir, Gaziemir')
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriAdi], [MusteriSoyadi], [SaticiID], [KuruyemisID], [Gramaj], [Adres]) VALUES (20, N'Elif', N'Demir', 9, 10, CAST(500.00 AS Decimal(10, 2)), N'Bursa, Yıldırım')
GO
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (101, 1, 50)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (102, 2, 75)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (103, 3, 100)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (104, 4, 120)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (105, 5, 90)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (106, 6, 65)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (107, 7, 110)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (108, 8, 80)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (109, 9, 95)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (110, 10, 70)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (111, 11, 85)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (112, 12, 130)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (113, 13, 55)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (114, 14, 105)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (115, 15, 40)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (116, 16, 60)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (117, 17, 115)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (118, 18, 125)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (119, 19, 150)
INSERT [dbo].[Stok] ([StokID], [UrunID], [Stok]) VALUES (120, 20, 100)
GO
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (1, N'tedarikçi A', 1, N'İstanbul', N'021234554')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (2, N'tedarikçi B', 2, N'Ankara', N'021245654')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (3, N'tedarikçi C', 3, N'İzmir', N'021234554')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (4, N'tedarikçi D', 4, N'Siirt', N'021234554')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (5, N'tedarikçi E', 5, N'Ordu', N'021234554')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (6, N'tedarikçi F', 6, N'Antalya', N'0212674554')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (7, N'tedarikçi G', 7, N'Gaziantep', N'0289234554')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (8, N'tedarikçi H', 8, N'Adana', N'0212345874')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (9, N'tedarikçi I', 9, N'Mardin', N'0212345578')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (10, N'tedarikçi J', 10, N'Malatya', N'0212345454')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (11, N'tedarikçi K', 11, N'Diyarbakır', N'0212364554')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (12, N'tedarikçi L', 12, N'Adıyaman', N'0212347754')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (13, N'tedarikçi M', 13, N'Trabzon', N'0212345565')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (14, N'tedarikçi N', 14, N'Van', N'02123456346')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (15, N'tedarikçi O', 15, N'Muğla', N'02123456064')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (16, N'tedarikçi P', 16, N'Bursa', N'021234556744')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (17, N'tedarikçi R', 17, N'Ankara', N'0212454554')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (18, N'tedarikçi S', 18, N'İstanbul', N'02128054554')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (19, N'tedarikçi T', 19, N'İzmir', N'021234496')
INSERT [dbo].[Tedarikci] ([FirmaID], [UreticiAdi], [UrunID], [Adres], [Iletisimbilgileri]) VALUES (20, N'tedarikçi Y', 20, N'Mardin', N'021237854')
GO
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (1, N'Fındıkçı Mehmet', N'İzmir, Bornova, Yeşilova Mahallesi, 100. Sokak, No: 24', N'+90 555 123 4567')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (2, N'Ceviz Bahçeleri', N'Konya, Meram, Bağbaşı Mahallesi, 30. Sokak, No: 56', N'+90 532 987 6543')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (3, N'Antep Fıstık Kralları', N'Gaziantep, Şahinbey, Kılıçarslan Mahallesi, 40. Sokak, No: 78', N'+90 344 210 8932')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (4, N'Tropikal Lezzetler', N'Mersin, Mezitli, Tece Mahallesi, 20. Sokak, No: 19', N'+90 505 765 4321')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (5, N'Badem Bahçeleri', N'Manisa, Sarıgöl, Hisarönü Mahallesi, 50. Sokak, No: 32', N'+90 236 543 1298')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (6, N'Kabak Çekirdeği Uzmanları', N'Adana, Seyhan, İnönü Mahallesi, 10. Sokak, No: 41', N'+90 312 654 9870')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (7, N'Brezilya Fıstığı İthalat', N'İstanbul, Kadıköy, Fenerbahçe Mahallesi, 60. Sokak, No: 54', N'+90 216 321 0987')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (8, N'Kuruyemiş Dünyası', N'Ankara, Çankaya, Emek Mahallesi, 30. Sokak, No: 27', N'+90 313 876 5432')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (9, N'Leblebi Kralları', N'Sivas, Merkez, Bahçelievler Mahallesi, 40. Sokak, No: 15', N'+90 461 234 7654')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (10, N'Yöresel Kuruyemiş', N'Hatay, Antakya, Defne Mahallesi, 20. Sokak, No: 89', N'+90 388 987 4321')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (11, N'Fındık Bahçeleri', N'Kastamonu, Tosya, Akçaçam Mahallesi, 100. Sokak, No: 24', N'+90 555 123 4567')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (12, N'Ceviz Üreticileri Birliği', N'Ordu, Fatsa, Tekkiraz Mahallesi, 30. Sokak, No: 56', N'+90 532 987 6543')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (13, N'Antep Fıstığı İhracatı', N'Adıyaman, Kahta, Nurhak Mahallesi, 40. Sokak, No: 78', N'+90 344 210 8932')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (14, N'Tropikal Kuruyemişler', N'Antalya, Alanya, Mahmutlar Mahallesi, 20. Sokak, No: 19', N'+90 505 765 4321')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (15, N'Badem Toptancısı', N'Afyonkarahisar, Sandıklı, Acıgöl Mahallesi, 50. Sokak, No: 32', N'+90 236 543 1298')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (16, N'Kabak Çekirdeği Fabrikası', N'Kahramanmaraş, Onikişubat, Dulkadiroğlu Mahallesi, 10. Sokak, No: 41', N'+90 312 654 9870')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (17, N'Brezilya Fıstığı Yetiştiricileri', N'İzmir, Çeşme, Alaçatı Mahallesi, 60. Sokak, No: 54', N'+90 216 321 0987')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (18, N'Kuruyemiş Pazarı', N'İstanbul, Fatih, Eminönü Mahallesi, 30. Sokak, No: 27', N'+90 313 876 5432')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (19, N'Leblebi Dünyası', N'Erzurum, Yakutiye, Yakutiye Mahallesi, 40. Sokak, No: 15', N'+90 461 234 7654')
INSERT [dbo].[UreticiFirma] ([FirmaID], [FirmaAdi], [Adres], [Telefon]) VALUES (20, N'Kıtır Kuruyemişler', N'Adana, Seyhan, Çukurova Mahallesi, 20. Sokak, No: 89', N'+90 212 635 2114')
GO
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (1, N'Fıstık', N'Kuruyemiş', N'Türkiye', 1)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (2, N'Badem', N'Kuruyemiş', N'Türkiye', 2)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (3, N'Kaju', N'Kuruyemiş', N'Türkiye', 3)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (4, N'Ay Çekirdeği', N'Kuruyemiş', N'Türkiye', 4)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (5, N'Ceviz', N'Kuruyemiş', N'Türkiye', 5)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (6, N'Leblebi', N'Kuruyemiş', N'Türkiye', 6)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (7, N'Kabak Çekirdeği', N'Kuruyemiş', N'Türkiye', 4)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (8, N'Antep Fıstığı', N'Kuruyemiş', N'Türkiye', 4)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (9, N'Üzüm Çekirdeği', N'Kuruyemiş', N'Türkiye', 4)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (10, N'Dövülmüş Fıstık', N'Kuruyemiş', N'Türkiye', 6)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (11, N'Hindistancevizi', N'Kuruyemiş', N'Türkiye', 7)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (12, N'Macadamia Fıstığı', N'Kuruyemiş', N'Türkiye', 7)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (13, N'Pekan Cevizi', N'Kuruyemiş', N'Türkiye', 7)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (14, N'Quinoa Topları', N'Kuruyemiş', N'Türkiye', 1)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (15, N'Chia Tohumu', N'Kuruyemiş', N'Türkiye', 8)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (16, N'Havuç Çekirdeği', N'Kuruyemiş', N'Türkiye', 9)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (17, N'Goji Berry', N'Kuruyemiş', N'Türkiye', 3)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (18, N'İncir', N'Kuruyemiş', N'Türkiye', 9)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (19, N'Çam Fıstığı', N'Kuruyemiş', N'Türkiye', 9)
INSERT [dbo].[Urunler] ([UrunID], [Ad], [Tur], [Koken], [BesinID]) VALUES (20, N'Arap Sabunu', N'Kuruyemiş', N'Türkiye', 10)
GO
ALTER TABLE [dbo].[FiyatBilgileri]  WITH CHECK ADD FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[KuruyemisBilgileri]  WITH CHECK ADD FOREIGN KEY([FirmaID])
REFERENCES [dbo].[UreticiFirma] ([FirmaID])
GO
ALTER TABLE [dbo].[KuruyemisBilgileri]  WITH CHECK ADD FOREIGN KEY([KargoID])
REFERENCES [dbo].[KargoBilgileri] ([KargoID])
GO
ALTER TABLE [dbo].[KuruyemisBilgileri]  WITH CHECK ADD FOREIGN KEY([TurID])
REFERENCES [dbo].[KuruyemisTuru] ([TurID])
GO
ALTER TABLE [dbo].[SaklamaBilgileri]  WITH CHECK ADD FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD FOREIGN KEY([KuruyemisID])
REFERENCES [dbo].[Kuruyemisler] ([KuruyemisID])
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD FOREIGN KEY([SaticiID])
REFERENCES [dbo].[SaticiBilgileri] ([SaticiID])
GO
ALTER TABLE [dbo].[Stok]  WITH CHECK ADD FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[Tedarikci]  WITH CHECK ADD FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD FOREIGN KEY([BesinID])
REFERENCES [dbo].[BesinBilgileri] ([BesinID])
GO
