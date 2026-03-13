--Tüm müþterilerin listesi:

 
SELECT Ad, Soyad, Cinsiyet, Telefon, Email 
FROM Musteriler
ORDER BY Soyad, Ad;
--Stokta azalan ürünler (10'dan az kalanlar):

 
SELECT UrunAdi, StokMiktari 
FROM Urunler
WHERE StokMiktari < 10
ORDER BY StokMiktari ASC;
--En pahalý 5 ürün:

 
SELECT TOP 5 UrunAdi, Fiyat 
FROM Urunler
ORDER BY Fiyat DESC;
--Kategoriye göre ürün sayýsý:

 
SELECT Kategoriler.KategoriAdi, COUNT(Urunler.UrunID) AS UrunSayisi
FROM Kategoriler
LEFT JOIN Urunler ON Kategoriler.KategoriID = Urunler.KategoriID
GROUP BY Kategoriler.KategoriAdi
ORDER BY UrunSayisi DESC;
--Personelin pozisyonlara göre daðýlýmý:

 
SELECT Pozisyon, COUNT(*) AS PersonelSayisi
FROM Personel
GROUP BY Pozisyon
ORDER BY PersonelSayisi DESC;
--Maaþý ortalamanýn üzerindeki personel:

 
SELECT Ad, Soyad, Maas
FROM Personel
WHERE Maas > (SELECT AVG(Maas) FROM Personel)
ORDER BY Maas DESC;
--Son 7 günde kayýt olan müþteriler:

 
SELECT Ad, Soyad, KayitTarihi
FROM Musteriler
WHERE KayitTarihi >= DATEADD(day, -7, GETDATE())
ORDER BY KayitTarihi DESC;
--Sipariþ baþýna ortalama ürün sayýsý:

 
SELECT AVG(Adet) AS OrtalamaUrunSayisi
FROM (
    SELECT SUM(Adet) AS Adet
    FROM SiparisDetaylari
    GROUP BY SiparisID
) AS Siparisler;
--Hiç sipariþ vermeyen müþteriler:

 
SELECT Musteriler.Ad, Musteriler.Soyad
FROM Musteriler
LEFT JOIN Siparisler ON Musteriler.MusteriID = Siparisler.MusteriID
WHERE Siparisler.MusteriID IS NULL;
--En çok sipariþ alan personel:

 
SELECT TOP 3 Personel.Ad, Personel.Soyad, COUNT(Siparisler.SiparisID) AS SiparisSayisi
FROM Personel
JOIN Siparisler ON Personel.PersonelID = Siparisler.PersonelID
GROUP BY Personel.Ad, Personel.Soyad
ORDER BY SiparisSayisi DESC;
--Ortalama sipariþ tutarý:

 
SELECT AVG(Toplam) AS OrtalamaSiparisTutari
FROM (
    SELECT SUM(Adet * BirimFiyat) AS Toplam
    FROM SiparisDetaylari
    GROUP BY SiparisID
) AS SiparisToplamlari;
--En çok satýlan 3 ürün kategorisi:

 
SELECT TOP 3 Kategoriler.KategoriAdi, SUM(SiparisDetaylari.Adet) AS ToplamSatis
FROM Kategoriler
JOIN Urunler ON Kategoriler.KategoriID = Urunler.KategoriID
JOIN SiparisDetaylari ON Urunler.UrunID = SiparisDetaylari.UrunID
GROUP BY Kategoriler.KategoriAdi
ORDER BY ToplamSatis DESC;
--Müþterilerin toplam harcamalarý:

 
SELECT Musteriler.Ad, Musteriler.Soyad, SUM(SiparisDetaylari.Adet * SiparisDetaylari.BirimFiyat) AS ToplamHarcama
FROM Musteriler
JOIN Siparisler ON Musteriler.MusteriID = Siparisler.MusteriID
JOIN SiparisDetaylari ON Siparisler.SiparisID = SiparisDetaylari.SiparisID
GROUP BY Musteriler.Ad, Musteriler.Soyad
ORDER BY ToplamHarcama DESC;
--Ayný gün içinde birden fazla sipariþ veren müþteriler:

 
SELECT Musteriler.Ad, Musteriler.Soyad, COUNT(Siparisler.SiparisID) AS SiparisSayisi
FROM Musteriler
JOIN Siparisler ON Musteriler.MusteriID = Siparisler.MusteriID
GROUP BY Musteriler.Ad, Musteriler.Soyad, CONVERT(DATE, Siparisler.SiparisZamani)
HAVING COUNT(Siparisler.SiparisID) > 1
ORDER BY SiparisSayisi DESC;
--En popüler ödeme yöntemleri:

 
SELECT OdemeTuru, COUNT(*) AS KullanýmSayisi
FROM Odemeler
GROUP BY OdemeTuru
ORDER BY KullanýmSayisi DESC;
--Ürün fiyat deðiþiklikleri için sorgu:
 
 
SELECT UrunAdi, Fiyat AS EskiFiyat
FROM Urunler
WHERE Fiyat < 100;
--Personelin iþe baþlama yýllarýna göre daðýlým:

 
SELECT YEAR(IseBaslamaTarihi) AS Yil, COUNT(*) AS PersonelSayisi
FROM Personel
GROUP BY YEAR(IseBaslamaTarihi)
ORDER BY Yil;
--Stok maliyeti en yüksek 5 ürün:

 
SELECT TOP 5 UrunAdi, StokMiktari * Fiyat AS StokMaliyeti
FROM Urunler
ORDER BY StokMaliyeti DESC;
--Sipariþlerin saatlere göre daðýlýmý:

 
SELECT DATEPART(HOUR, SiparisZamani) AS Saat, COUNT(*) AS SiparisSayisi
FROM Siparisler
GROUP BY DATEPART(HOUR, SiparisZamani)
ORDER BY Saat;
--Müþteri baþýna ortalama sipariþ sýklýðý:

 
SELECT AVG(SiparisSayisi) AS OrtalamaSiparisSikligi
FROM (
    SELECT COUNT(Siparisler.SiparisID) AS SiparisSayisi
    FROM Musteriler
    LEFT JOIN Siparisler ON Musteriler.MusteriID = Siparisler.MusteriID
    GROUP BY Musteriler.MusteriID
) AS MusteriSiparisleri;