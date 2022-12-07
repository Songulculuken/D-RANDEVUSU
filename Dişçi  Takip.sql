USE MASTER
GO
CREATE DATABASE db_DisciTakipProgrami
GO
USE db_DisciTakipProgrami
GO
CREATE TABLE kullanici
(
kullaniciID int identity(1,1) primary key not null,
kullaniciAd nvarchar(50),
kullaniciParola nvarchar(50),
kullaciEmail nvarchar(50),
)
CREATE TABLE hastalar
(
hastaID int identity(1,1) primary key not null,
hastaAd nvarchar(50),
hastaSoyad nvarchar(50),
hastaTcKimlikNo nvarchar(50),
hastaDogumTarihi date,
hastaTel nvarchar(50),
hastaAdres nvarchar(50),
hastaKanGrubu nvarchar(50),
IlId int,
IlceId int,
CinsiyetID int,
hastaAktifMi bit,
hastaAciklama nvarchar(50),
)
CREATE TABLE randevu
(
randevuID int identity(1,1) primary key not null,
hastaID int,
randevuTarih datetime,
randevuHastaSikayet nvarchar(500),
randevuRecete nvarchar(500),
randevuSonrakiRandevuID int,
randevuAktifMi bit,
randevuAciklama nvarchar(50),
disID int,
)
CREATE TABLE dis
(
disID int identity(1,1) primary key not null,
disAd nvarchar(50),
disAciklama nvarchar(50),
)
CREATE TABLE tedavi
(
tedaviID int identity(1,1) primary key not null,
tedaviAd nvarchar(500),
tedaviYapilanIs nvarchar(500),
tedaviEpikiriz nvarchar(500),
tedaviAktifMi bit,
tedaviAciklama nvarchar(500),
)
CREATE TABLE disTedavi
(
disID int,
tedaviID int,
)
CREATE TABLE hastalarTedavi
(
hastaID int,
tedaviID int,
)
