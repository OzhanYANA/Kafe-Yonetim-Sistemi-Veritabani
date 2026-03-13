INSERT INTO Musteriler (Ad, Soyad, Cinsiyet, Telefon, Email) VALUES
('Ali', 'YILMAZ', 'Erkek', '5551112233', 'ali.yilmaz@example.com'),
('Ayþe', 'KAYA', 'Kadýn', '5554445566', 'ayse.kaya@example.com'),
('Talha', 'ÝRKÖREN', 'Erkek', '1234567890', 'talha.irkören@example.com'),
('Özhan', 'YANA', 'Erkek', '1234567891', 'ozhan.yana@example.com'),
('Efe', 'AYYILDIZ', 'Erkek', '1234567892', 'efe.ayyýldýz@example.com'),
('Sude', 'SEZGÝN', 'Kadýn', '1234567893', 'sude.sezgin@example.com'),
('Ahmet', 'SARI', 'Erkek', '1234567894', 'ahmet.sarý@example.com'),
('Nur', 'AKDEMÝR', 'Kadýn', '1234567895', 'nur.akdemir@example.com'),
('Orhan', 'KAYA', 'Erkek', '1234567896', 'orhan.kaya@example.com'),
('Boran', 'SAFRA', 'Erkek', '1234567897', 'boran.safra@example.com'),
('Salih', 'SERÇE', 'Erkek', '1234567898', 'salih.serçe@example.com'),
('Enes', 'SELVÝ', 'Erkek', '1234567899', 'enes.selvi@example.com'),
('Özkan', 'MART', 'Erkek', '1123456789', 'ozkan.mart@example.com'),
('Hasan', 'SOYUT', 'Erkek', '1223456789', 'hasan.soyut@example.com'),
('Ýbrahim', 'TÜTÜNCÜ', 'Erkek', '1323456789', 'ibrahim.tutuncu@example.com'),
('Ýsmail', 'KARTAL', 'Erkek', '1423456789', 'ismail.kartal@example.com'),
('Cristiano', 'RONALDO', 'Erkek', '1523456789', 'ronaldo.cris@example.com'),
('Lionel', 'MESSÝ', 'Erkek', '1623456789', 'messi.leo@example.com'),
('Douglas', 'COSTA', 'Erkek', '1723456789', 'costa.douglas@example.com'),
('Adel', 'TAARABT', 'Erkek', '1823456789', 'taarabt.adel@example.com'),
('Luka', 'MODRÝC', 'Erkek', '1923456789', 'modric.luka@example.com');

INSERT INTO Kategoriler (KategoriAdi) VALUES
('Sýcak Kahve'),
('Soðuk Kahve'),
('Sýcak Ýçecek'),
('Soðuk Ýçecek'),
('Atýþtýrmalýk'),
('Makarnalar'),
('Hamburgerler'),
('Sütlü Tatlýlar'),
('Þerbetli Tatlýlar'),
('Pastalar'),
('Gözlemeler'),
('Tostlar'),
('Kutu Oyunlarý'),
('Pizzalar');

INSERT INTO Urunler (UrunAdi, KategoriID, Fiyat, StokMiktari) VALUES 
('Americano', 1, 70.00, 40),
('Filtre Kahve', 1, 60.00, 80),
('Latte', 1, 75.00, 30),
('Ýced Latte', 2, 75.00, 30),
('Ýced White Chocolate Mocha', 2, 75.00, 20),
('Çay', 3, 20.00, 100),
('Oralet', 3, 25.00, 70),
('RedBull', 4, 60.00, 50),
('Kola', 4, 65.00, 40),
('Sandviç', 5, 70.00, 22),
('Patates Kýzartmasý', 5, 85.00, 20),
('Alfredo', 6, 110.00, 10),
('Mantarlý Köri Soslu Makarna', 6, 105.00, 15),
('Et Hamburger', 7, 120.00, 30),
('Tavuk Hamburger', 7, 100.00, 35),
('Sütlaç', 8, 80.00, 24),
('Güllaç', 8, 75.00, 38),
('Baklava', 9, 40.00, 100),
('Çikolatalý Pasta', 10, 100.00, 8),
('Sucuklu Kaþarlý Tost', 12, 80.00, 20);

INSERT INTO Personel (Ad, Soyad, Pozisyon, IseBaslamaTarihi, Maas) VALUES 
('Mehmet', 'DEMÝR', 'Garson', '2025-01-15',22000.00),
('Zeynep', 'AKSOY', 'Barista', '2024-04-10', 24000.00),
('Barýþ', 'MANÇO', 'Barista', '2023-02-18', 24000.00),
('Barýþ', 'AKARSU', 'Þef', '2020-03-10', 34000.00),
('Kaan', 'TANGÖZE', 'Aþçý', '2021-03-10', 28000.00),
('Ahmet', 'SONUÇ', 'Aþçý', '2021-08-10', 28000.00),
('Bahadýr', 'TELCÝ', 'Aþçý', '2024-07-03', 28000.00),
('Alper', 'ÇAÐLAR', 'Temizlikçi', '2023-08-26', 22000.00),
('Burhanettin', 'MUMCUOÐLU', 'Temizlikçi', '2024-11-01', 22000.00),
('Selin', 'SONUÇ', 'Garson', '2024-01-11', 22000.00),
('Bora', 'SONUÇ', 'Garson', '2024-09-15', 22000.00),
('Levent', 'BALIM', 'Kasiyer', '2024-06-05', 23000.00),
('Arda', 'GÜLER', 'Depo Sorumlusu', '2022-07-18', 26000.00),
('Muharrem', 'ÝNCE', 'Kafe Sahibi', '2022-03-10', 34000.00),
('Ümit', 'ÖZDAÐ', 'Teknik Eleman', '2023-03-10', 27000.00),
('Ekrem', 'ÝMAMOÐLU', 'Güvenlik', '2022-03-10', 28000.00),
('Semiha', 'MAYDA', 'Solist', '2025-02-17', 25000.00),
('Pelin', 'ENGÝN', 'Baterist', '2025-02-17', 25000.00),
('Sylas', 'ZÝNCÝRKIRAN', 'Gitarist', '2025-02-17', 25000.00),
('Utku', 'AYKUÞ', 'Bass Gitarist', '2025-02-17', 25000.00);



INSERT INTO Siparisler (MusteriID, PersonelID) VALUES
(3, 1),   -- Talha ÝRKÖREN'in sipariþi
(7, 2),   -- Ahmet SARI'nýn sipariþi
(12, 1),  -- Enes SELVÝ'nin sipariþi
(5, 3),   -- Efe AYYILDIZ'ýn sipariþi
(18, 2),  -- Cristiano RONALDO'nun sipariþi
(2, 1),   -- Ayþe KAYA'nýn sipariþi
(15, 3),  -- Ýbrahim TÜTÜNCÜ'nün sipariþi
(9, 2),   -- Orhan KAYA'nýn sipariþi
(20, 1),  -- Adel TAARABT'ýn sipariþi
(14, 3);  -- Hasan SOYUT'un sipariþi

INSERT INTO SiparisDetaylari (SiparisID, UrunID, Adet, BirimFiyat) VALUES
-- Talha'nýn sipariþi (SiparisID 1)
(1, 3, 1, 75.00),   -- 1 Latte
(1, 11, 1, 85.00),  -- 1 Patates Kýzartmasý

-- Ahmet'in sipariþi (SiparisID 2)
(2, 1, 2, 70.00),   -- 2 Americano
(2, 20, 1, 80.00),  -- 1 Sucuklu Kaþarlý Tost

-- Enes'in sipariþi (SiparisID 3)
(3, 5, 1, 75.00),   -- 1 Ýced White Chocolate Mocha
(3, 17, 2, 75.00),  -- 2 Güllaç

-- Efe'nin sipariþi (SiparisID 4)
(4, 14, 1, 120.00), -- 1 Et Hamburger
(4, 8, 1, 60.00),   -- 1 RedBull

-- Ronaldo'nun sipariþi (SiparisID 5)
(5, 12, 1, 110.00), -- 1 Alfredo
(5, 19, 1, 100.00), -- 1 Çikolatalý Pasta

-- Ayþe'nin sipariþi (SiparisID 6)
(6, 6, 3, 20.00),   -- 3 Çay
(6, 18, 2, 40.00),  -- 2 Baklava

-- Ýbrahim'in sipariþi (SiparisID 7)
(7, 2, 1, 60.00),   -- 1 Filtre Kahve
(7, 10, 1, 70.00),  -- 1 Sandviç

-- Orhan'ýn sipariþi (SiparisID 8)
(8, 4, 1, 75.00),   -- 1 Ýced Latte
(8, 16, 1, 80.00),  -- 1 Sütlaç

-- Adel'in sipariþi (SiparisID 9)
(9, 7, 2, 25.00),   -- 2 Oralet
(9, 13, 1, 105.00), -- 1 Mantarlý Köri Soslu Makarna

-- Hasan'ýn sipariþi (SiparisID 10)
(10, 15, 1, 100.00), -- 1 Tavuk Hamburger
(10, 9, 1, 65.00);   -- 1 Kola 

INSERT INTO Odemeler (SiparisID, OdemeTuru, Fiyat, Aciklama) VALUES
(1, 'Kredi Kartý', 160.00, 'Kart ile ödeme yapýldý'),            -- Latte + Patates
(2, 'Nakit', 220.00, 'Para üstü verildi'),                      -- 2 Americano + Tost
(3, 'Banka Havalesi', 225.00, 'Önceden havale yapýlmýþtý'),     -- Mocha + 2 Güllaç
(4, 'Kredi Kartý', 180.00, 'Karttan çekim yapýldý'),             -- Hamburger + RedBull
(5, 'Nakit', 210.00, 'USD ile ödeme yapýldý'),                   -- Alfredo + Pasta
(6, 'Kredi Kartý', 140.00, 'Taksitli ödeme'),                    -- 3 Çay + 2 Baklava
(7, 'Nakit', 130.00, 'Tam ücret ödendi'),                       -- Kahve + Sandviç
(8, 'Banka Havalesi', 155.00, 'Mobil havale ile ödendi'),        -- Latte + Sütlaç
(9, 'Kredi Kartý', 155.00, 'Kontör kazanýldý'),                  -- 2 Oralet + Makarna
(10, 'Nakit', 165.00, 'Yuvarlak ücret alýndý');