-- TABLOLARIN OLUÞTURULMASI
-----------------------------------------

-- Müþteriler tablosu
CREATE TABLE Musteriler (
    MusteriID INT PRIMARY KEY IDENTITY(1,1),
    Ad VARCHAR(50) NOT NULL,
    Soyad VARCHAR(50) NOT NULL,
    Cinsiyet VARCHAR(50) NULL,
    Telefon VARCHAR(15) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    KayitTarihi DATETIME DEFAULT GETDATE()
);

-- Personel tablosu
CREATE TABLE Personel (
    PersonelID INT PRIMARY KEY IDENTITY(1,1),
    Ad VARCHAR(50) NOT NULL,
    Soyad VARCHAR(50) NOT NULL,
    Pozisyon VARCHAR(50),
    IseBaslamaTarihi DATE,
    Maas DECIMAL(10,2)
);


-- Kategoriler tablosu
CREATE TABLE Kategoriler (
    KategoriID INT PRIMARY KEY IDENTITY(1,1),
    KategoriAdi VARCHAR(50) NOT NULL
);


-- Ürünler tablosu
CREATE TABLE Urunler (
    UrunID INT PRIMARY KEY IDENTITY(1,1),
    UrunAdi VARCHAR(100) NOT NULL,
	KategoriID INT,
    Fiyat DECIMAL(10,2) NOT NULL CHECK (Fiyat > 0),
    StokMiktari INT DEFAULT 0 CHECK (StokMiktari >= 0),
    FOREIGN KEY (KategoriID) REFERENCES Kategoriler(KategoriID)
);

-- Sipariþler tablosu
CREATE TABLE Siparisler (
    SiparisID INT PRIMARY KEY IDENTITY(1,1),
    MusteriID INT,
    PersonelID INT,
	SiparisZamani DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (MusteriID) REFERENCES Musteriler(MusteriID),
    FOREIGN KEY (PersonelID) REFERENCES Personel(PersonelID)
);

-- Sipariþ Detaylarý tablosu
CREATE TABLE SiparisDetaylari (
    SiparisDetayID INT PRIMARY KEY IDENTITY(1,1),
    SiparisID INT NOT NULL,
    UrunID INT NOT NULL,
    Adet INT NOT NULL CHECK (Adet > 0),
    BirimFiyat DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (SiparisID) REFERENCES Siparisler(SiparisID),
    FOREIGN KEY (UrunID) REFERENCES Urunler(UrunID)
);

-- Ödemeler tablosu
CREATE TABLE Odemeler (
    OdemeID INT PRIMARY KEY IDENTITY(1,1),
    SiparisID INT NOT NULL,
    OdemeTarihi DATETIME DEFAULT GETDATE(),
    OdemeTuru VARCHAR(20) CHECK (OdemeTuru IN ('Nakit', 'Kredi Kartý', 'Banka Havalesi')),
    Fiyat DECIMAL(10,2) NOT NULL CHECK (Fiyat > 0),
    Aciklama VARCHAR(255),
    FOREIGN KEY (SiparisID) REFERENCES Siparisler(SiparisID),
);