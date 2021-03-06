USE [master]
GO
/****** Object:  Database [oteluygulama]    Script Date: 31.05.2022 14:32:47 ******/
CREATE DATABASE [oteluygulama]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'oteluygulama', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\oteluygulama.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'oteluygulama_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\oteluygulama_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [oteluygulama] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [oteluygulama].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [oteluygulama] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [oteluygulama] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [oteluygulama] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [oteluygulama] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [oteluygulama] SET ARITHABORT OFF 
GO
ALTER DATABASE [oteluygulama] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [oteluygulama] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [oteluygulama] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [oteluygulama] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [oteluygulama] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [oteluygulama] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [oteluygulama] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [oteluygulama] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [oteluygulama] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [oteluygulama] SET  DISABLE_BROKER 
GO
ALTER DATABASE [oteluygulama] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [oteluygulama] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [oteluygulama] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [oteluygulama] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [oteluygulama] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [oteluygulama] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [oteluygulama] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [oteluygulama] SET RECOVERY FULL 
GO
ALTER DATABASE [oteluygulama] SET  MULTI_USER 
GO
ALTER DATABASE [oteluygulama] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [oteluygulama] SET DB_CHAINING OFF 
GO
ALTER DATABASE [oteluygulama] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [oteluygulama] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [oteluygulama] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [oteluygulama] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'oteluygulama', N'ON'
GO
ALTER DATABASE [oteluygulama] SET QUERY_STORE = OFF
GO
USE [oteluygulama]
GO
/****** Object:  Table [dbo].[AdminGiris]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminGiris](
	[Kullanici] [varchar](20) NULL,
	[Sifre] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faturalar]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faturalar](
	[Elektrik] [int] NULL,
	[Su] [int] NULL,
	[İnternet] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hizmetler]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hizmetler](
	[Hizmetid] [int] NULL,
	[Yemek] [varchar](50) NULL,
	[Yemek2] [varchar](50) NULL,
	[Banyo] [varchar](30) NULL,
	[Aktivite] [varchar](50) NULL,
	[Adı] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesajlar1]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesajlar1](
	[Mesajid] [int] IDENTITY(1,1) NOT NULL,
	[Adsoyad] [varchar](50) NULL,
	[Mesaj] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MusteriEkle]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusteriEkle](
	[Musterid] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [varchar](10) NULL,
	[Soyadi] [varchar](50) NULL,
	[Cinsiyet] [varchar](5) NULL,
	[Telefon] [varchar](15) NULL,
	[Mail] [varchar](20) NULL,
	[TC] [varchar](11) NULL,
	[OdaNo] [varchar](4) NULL,
	[Ucret] [int] NULL,
	[GirisTarihi] [date] NULL,
	[CikisTarihi] [date] NULL,
	[Hayvaninismi] [varchar](10) NULL,
	[Cinsi] [varchar](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oda101]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oda101](
	[Adi] [varchar](50) NULL,
	[Soyadi] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oda102]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oda102](
	[Adi] [varchar](50) NULL,
	[Soyadi] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oda103]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oda103](
	[Adi] [varchar](50) NULL,
	[Soyadi] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oda104]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oda104](
	[Adi] [varchar](50) NULL,
	[Soyadi] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oda105]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oda105](
	[Adi] [varchar](50) NULL,
	[Soyadi] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oda106]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oda106](
	[Adi] [varchar](50) NULL,
	[Soyadi] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oda107]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oda107](
	[Adi] [varchar](50) NULL,
	[Soyadi] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oda108]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oda108](
	[Adi] [varchar](50) NULL,
	[Soyadi] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oda109]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oda109](
	[Adi] [varchar](50) NULL,
	[Soyadi] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stoklar]    Script Date: 31.05.2022 14:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stoklar](
	[Gıda] [int] NULL,
	[İcecek] [int] NULL,
	[Oyuncak] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[AdminGiris] ([Kullanici], [Sifre]) VALUES (N'admin', N'1254')
GO
INSERT [dbo].[Faturalar] ([Elektrik], [Su], [İnternet]) VALUES (452, 478, 12365)
INSERT [dbo].[Faturalar] ([Elektrik], [Su], [İnternet]) VALUES (4580, 1200, 450)
GO
INSERT [dbo].[Hizmetler] ([Hizmetid], [Yemek], [Yemek2], [Banyo], [Aktivite], [Adı]) VALUES (NULL, N'Et Ürünleri', N'Haftada 1', N'Tüylerini taramak', N'Yumurta', NULL)
INSERT [dbo].[Hizmetler] ([Hizmetid], [Yemek], [Yemek2], [Banyo], [Aktivite], [Adı]) VALUES (NULL, N'Yumurta', N'Tahıllar', N'Aylık', N'Oyuncaklarıyla Oyun Oynamak', NULL)
INSERT [dbo].[Hizmetler] ([Hizmetid], [Yemek], [Yemek2], [Banyo], [Aktivite], [Adı]) VALUES (NULL, N'Yumurta', N'Haftada 1', N'Oyuncaklarıyla Oyun Oynamak', N'Süt Ürünleri', NULL)
INSERT [dbo].[Hizmetler] ([Hizmetid], [Yemek], [Yemek2], [Banyo], [Aktivite], [Adı]) VALUES (NULL, N'', N'', N'', N'', NULL)
INSERT [dbo].[Hizmetler] ([Hizmetid], [Yemek], [Yemek2], [Banyo], [Aktivite], [Adı]) VALUES (NULL, N'Süt Ürünleri', N'Tahıllar', N'Oyuncaklarıyla Oyun Oynamak', N'Tahıllar', NULL)
INSERT [dbo].[Hizmetler] ([Hizmetid], [Yemek], [Yemek2], [Banyo], [Aktivite], [Adı]) VALUES (NULL, N'Yumurta', N'Süt Ürünleri', N'Haftada 1', N'Oyuncaklarıyla Oyun Oynamak', N'Tekir')
INSERT [dbo].[Hizmetler] ([Hizmetid], [Yemek], [Yemek2], [Banyo], [Aktivite], [Adı]) VALUES (NULL, N'Yumurta', N'Tahıllar', N'Aylık', N'Tüylerini taramak', N'tekir')
INSERT [dbo].[Hizmetler] ([Hizmetid], [Yemek], [Yemek2], [Banyo], [Aktivite], [Adı]) VALUES (NULL, N'', N'', N'', N'', N'')
INSERT [dbo].[Hizmetler] ([Hizmetid], [Yemek], [Yemek2], [Banyo], [Aktivite], [Adı]) VALUES (NULL, N'Yumurta', N'Tahıllar', N'Günlük', N'Oyuncaklarıyla Oyun Oynamak', NULL)
INSERT [dbo].[Hizmetler] ([Hizmetid], [Yemek], [Yemek2], [Banyo], [Aktivite], [Adı]) VALUES (NULL, N'Tahıllar', N'Et Ürünleri', N'Aylık', N'Tüylerini taramak', NULL)
INSERT [dbo].[Hizmetler] ([Hizmetid], [Yemek], [Yemek2], [Banyo], [Aktivite], [Adı]) VALUES (NULL, N'Yumurta', N'Süt Ürünleri', N'Aylık', N'Tüylerini taramak', NULL)
INSERT [dbo].[Hizmetler] ([Hizmetid], [Yemek], [Yemek2], [Banyo], [Aktivite], [Adı]) VALUES (NULL, N'Et Ürünleri', N'Sebze ve Meyveler', N'Haftada 1', N'Tüylerini taramak', N'Miyav')
GO
SET IDENTITY_INSERT [dbo].[Mesajlar1] ON 

INSERT [dbo].[Mesajlar1] ([Mesajid], [Adsoyad], [Mesaj]) VALUES (1, N'', N'')
INSERT [dbo].[Mesajlar1] ([Mesajid], [Adsoyad], [Mesaj]) VALUES (2, N'', N'x')
INSERT [dbo].[Mesajlar1] ([Mesajid], [Adsoyad], [Mesaj]) VALUES (3, N'Fatma Yeni', N'Mamalar adaha kaliteli olursa daha iyi olabilir')
INSERT [dbo].[Mesajlar1] ([Mesajid], [Adsoyad], [Mesaj]) VALUES (4, N'', N'')
INSERT [dbo].[Mesajlar1] ([Mesajid], [Adsoyad], [Mesaj]) VALUES (5, N'Nisa Olgun', N'Otelinizden çok memnun kaldık.Hem de ekonomik olması bizim bir kez daha tercih etmemizi sağlayacak')
SET IDENTITY_INSERT [dbo].[Mesajlar1] OFF
GO
SET IDENTITY_INSERT [dbo].[MusteriEkle] ON 

INSERT [dbo].[MusteriEkle] ([Musterid], [Adi], [Soyadi], [Cinsiyet], [Telefon], [Mail], [TC], [OdaNo], [Ucret], [GirisTarihi], [CikisTarihi], [Hayvaninismi], [Cinsi]) VALUES (1, N'aa bb', N'aa', N'Kadın', N'(563) 258-7418', N'786', N'78965412300', N'107', 150, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-11' AS Date), NULL, NULL)
INSERT [dbo].[MusteriEkle] ([Musterid], [Adi], [Soyadi], [Cinsiyet], [Telefon], [Mail], [TC], [OdaNo], [Ucret], [GirisTarihi], [CikisTarihi], [Hayvaninismi], [Cinsi]) VALUES (2, N'', N'', N'', N'(   )    -', N'', N'', N'102', 0, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), NULL, NULL)
INSERT [dbo].[MusteriEkle] ([Musterid], [Adi], [Soyadi], [Cinsiyet], [Telefon], [Mail], [TC], [OdaNo], [Ucret], [GirisTarihi], [CikisTarihi], [Hayvaninismi], [Cinsi]) VALUES (3, N'', N'', N'', N'(   )    -', N'', N'', N'105', 0, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), NULL, NULL)
INSERT [dbo].[MusteriEkle] ([Musterid], [Adi], [Soyadi], [Cinsiyet], [Telefon], [Mail], [TC], [OdaNo], [Ucret], [GirisTarihi], [CikisTarihi], [Hayvaninismi], [Cinsi]) VALUES (4, N'', N'', N'', N'(   )    -', N'', N'', N'106', 0, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), NULL, NULL)
INSERT [dbo].[MusteriEkle] ([Musterid], [Adi], [Soyadi], [Cinsiyet], [Telefon], [Mail], [TC], [OdaNo], [Ucret], [GirisTarihi], [CikisTarihi], [Hayvaninismi], [Cinsi]) VALUES (6, N'nisa', N'olgun', N'Kadın', N'(532) 862-9160', N'nisaqgmail.com', N'12365478966', N'104', 500, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), NULL, NULL)
INSERT [dbo].[MusteriEkle] ([Musterid], [Adi], [Soyadi], [Cinsiyet], [Telefon], [Mail], [TC], [OdaNo], [Ucret], [GirisTarihi], [CikisTarihi], [Hayvaninismi], [Cinsi]) VALUES (8, N'nisa', N'olgun', N'Kadın', N'(563) 214-7855', N'nisa@gmail.com', N'45632178966', N'107', 100, CAST(N'2022-05-26' AS Date), CAST(N'2022-05-26' AS Date), N'mia', N'Kedi ')
INSERT [dbo].[MusteriEkle] ([Musterid], [Adi], [Soyadi], [Cinsiyet], [Telefon], [Mail], [TC], [OdaNo], [Ucret], [GirisTarihi], [CikisTarihi], [Hayvaninismi], [Cinsi]) VALUES (9, N'2', N'6', N'Kadın', N'(896) 325-7441', N'33@gmail.com', N'65478933211', N'104', 100, CAST(N'2022-05-26' AS Date), CAST(N'2022-05-26' AS Date), N'88', N'Balık')
INSERT [dbo].[MusteriEkle] ([Musterid], [Adi], [Soyadi], [Cinsiyet], [Telefon], [Mail], [TC], [OdaNo], [Ucret], [GirisTarihi], [CikisTarihi], [Hayvaninismi], [Cinsi]) VALUES (10, N'fatma', N'yeni', N'Kadın', N'(563) 258-7155', N'Fatma@gmail.com', N'45632178963', N'103', 100, CAST(N'2022-05-26' AS Date), CAST(N'2022-05-26' AS Date), N'Tekir', N'Kedi ')
INSERT [dbo].[MusteriEkle] ([Musterid], [Adi], [Soyadi], [Cinsiyet], [Telefon], [Mail], [TC], [OdaNo], [Ucret], [GirisTarihi], [CikisTarihi], [Hayvaninismi], [Cinsi]) VALUES (5, N'', N'', N'', N'(   )    -', N'', N'', N'104', 0, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), NULL, NULL)
INSERT [dbo].[MusteriEkle] ([Musterid], [Adi], [Soyadi], [Cinsiyet], [Telefon], [Mail], [TC], [OdaNo], [Ucret], [GirisTarihi], [CikisTarihi], [Hayvaninismi], [Cinsi]) VALUES (7, N'ayşe', N'veli', N'Kadın', N'(563) 258-9633', N'ayşe@gmail.com', N'12365555555', N'101', 50, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), NULL, NULL)
INSERT [dbo].[MusteriEkle] ([Musterid], [Adi], [Soyadi], [Cinsiyet], [Telefon], [Mail], [TC], [OdaNo], [Ucret], [GirisTarihi], [CikisTarihi], [Hayvaninismi], [Cinsi]) VALUES (11, N'aliye', N'uzun', N'Kadın', N'(563) 214-7856', N'Aliye@gmail.com', N'45632178966', N'102', 500, CAST(N'2022-05-26' AS Date), CAST(N'2022-05-26' AS Date), N'Karabaş', N'Köpek')
INSERT [dbo].[MusteriEkle] ([Musterid], [Adi], [Soyadi], [Cinsiyet], [Telefon], [Mail], [TC], [OdaNo], [Ucret], [GirisTarihi], [CikisTarihi], [Hayvaninismi], [Cinsi]) VALUES (12, N'ahmet', N'koç', N'Erkek', N'(789) 654-1236', N'ahmet@gmail.com', N'12345698741', N'105', 1600, CAST(N'2022-05-26' AS Date), CAST(N'2022-05-26' AS Date), N'maviş', N'Kuş')
SET IDENTITY_INSERT [dbo].[MusteriEkle] OFF
GO
INSERT [dbo].[Oda101] ([Adi], [Soyadi]) VALUES (N'Ayşe', N'veli')
GO
INSERT [dbo].[Oda102] ([Adi], [Soyadi]) VALUES (N'Aliye ', N'Uzun')
GO
INSERT [dbo].[Oda103] ([Adi], [Soyadi]) VALUES (N'Fatma', N'yeni')
GO
INSERT [dbo].[Oda104] ([Adi], [Soyadi]) VALUES (N'Nisa ', N'olgun')
GO
INSERT [dbo].[Stoklar] ([Gıda], [İcecek], [Oyuncak]) VALUES (5, 5, 6)
INSERT [dbo].[Stoklar] ([Gıda], [İcecek], [Oyuncak]) VALUES (5, 78, 985)
INSERT [dbo].[Stoklar] ([Gıda], [İcecek], [Oyuncak]) VALUES (1, 2, 3)
INSERT [dbo].[Stoklar] ([Gıda], [İcecek], [Oyuncak]) VALUES (58, 78, 96)
INSERT [dbo].[Stoklar] ([Gıda], [İcecek], [Oyuncak]) VALUES (450, 740, 1950)
GO
ALTER TABLE [dbo].[MusteriEkle] ADD  CONSTRAINT [DF_MusteriEkle_GirisTarihi]  DEFAULT (getdate()) FOR [GirisTarihi]
GO
ALTER TABLE [dbo].[MusteriEkle] ADD  CONSTRAINT [DF_MusteriEkle_CikisTarihi]  DEFAULT (getdate()) FOR [CikisTarihi]
GO
USE [master]
GO
ALTER DATABASE [oteluygulama] SET  READ_WRITE 
GO
