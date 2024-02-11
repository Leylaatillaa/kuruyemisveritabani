SELECT * FROM FiyatBilgileri WHERE UrunID = 1; --- Belirli bir ürünün fiyat bilgilerini alma ---

SELECT * FROM Stok WHERE Stok > 0; --- Stokta bulunan ürünleri listeleme ---

SELECT * FROM Siparisler WHERE MusteriAdi = '[Belirli_Musteri_Adi]' AND MusteriSoyadi = '[Belirli_Musteri_Soyadi]';
--- Belirli bir müþterinin verdiði sipariþleri listeleme: ---

SELECT TurAdi, COUNT(*) AS UrunSayisi FROM KuruyemisTuru INNER JOIN KuruyemisBilgileri ON KuruyemisTuru.TurID = KuruyemisBilgileri.TurID GROUP BY TurAdi;
--- Kuruyemiþ türlerini ve bu türlere ait ürün sayýlarýný listeleme ---

SELECT * FROM KargoBilgileri WHERE TeslimTarihi IS NULL AND KargoTarihi BETWEEN '2023-01-01' AND '2023-12-31';
--- Belirli bir tarih aralýðýndaki kargo durumunu kontrol etme ---

SELECT * FROM Urunler WHERE UrunID IN (SELECT UrunID FROM Tedarikci WHERE FirmaID = 1);
--- Belirli bir tedarikçinin ürünlerini listeleme ---

SELECT AVG(Fiyat) AS OrtalamaFiyat FROM FiyatBilgileri INNER JOIN Urunler ON FiyatBilgileri.UrunID = Urunler.UrunID WHERE Urunler.Tur = '[Belirli_Tur]';
-- Belirli bir kuruyemiþ türündeki ürünlerin ortalama fiyatýný bulma --

SELECT * FROM Urunler WHERE UrunID IN (SELECT UrunID FROM Tedarikci);
-- Tedarikçilere ait ürünleri listeleme --

SELECT * FROM FiyatBilgileri WHERE Fiyat BETWEEN 10 AND 50;
--Belirli bir fiyat aralýðýndaki ürünleri listeleme--

SELECT Urunler.Tur, AVG(BesinBilgileri.Protein) AS OrtalamaProtein
FROM Urunler
INNER JOIN BesinBilgileri ON Urunler.BesinID = BesinBilgileri.BesinID
WHERE Urunler.Tur = '[Belirli_Tur]'
GROUP BY Urunler.Tur;
-- Belirli bir kuruyemiþ türündeki ürünlerin ortalama protein miktarýný bulma --

SELECT TOP 1 UrunID, Stok
FROM Stok
ORDER BY Stok DESC;
--En fazla stokta bulunan ürünü bulma--

SELECT KargoID, DATEDIFF(day, KargoTarihi, TeslimTarihi) AS GecenSure
FROM KargoBilgileri
WHERE TeslimTarihi IS NOT NULL;
--Belirli bir kargo teslimatýnýn geçen süresini bulma--

SELECT AVG(FiyatBilgileri.Fiyat) AS OrtalamaFiyat
FROM FiyatBilgileri
INNER JOIN Stok ON FiyatBilgileri.UrunID = Stok.UrunID
WHERE Stok.Stok > 0;
--Stokta bulunan ürünlerin ortalama fiyatýný bulma--

SELECT KuruyemisTuru.TurAdi, SUM(Siparisler.Gramaj) AS ToplamGramaj
FROM KuruyemisTuru
INNER JOIN KuruyemisBilgileri ON KuruyemisTuru.TurID = KuruyemisBilgileri.TurID
INNER JOIN Siparisler ON KuruyemisBilgileri.KuruyemisID = Siparisler.KuruyemisID
GROUP BY KuruyemisTuru.TurAdi;
--Belirli bir kuruyemiþ türündeki ürünlerin toplam gramajýný bulma--

SELECT TOP 1 UrunID, Stok
FROM Stok
ORDER BY Stok ASC;
--En düþük stok miktarýna sahip ürünü bulma--

SELECT KargoID, GonderenAdi, GonderenAdresi, TeslimTarihi
FROM KargoBilgileri
WHERE TeslimTarihi IS NOT NULL;
--Belirli bir kargo teslimatýnýn gerçekleþtiði tarihi kontrol etme--

SELECT KargoID, DATEDIFF(day, KargoTarihi, TeslimTarihi) AS GecenSure
FROM KargoBilgileri
WHERE TeslimTarihi IS NOT NULL;
--Belirli bir kargo teslimatýnýn gerçekleþme süresini bulma--

SELECT KargoID, DATEDIFF(day, KargoTarihi, TeslimTarihi) AS GecenSure
FROM KargoBilgileri
WHERE TeslimTarihi IS NOT NULL;
--Belirli bir kargo teslimatýnýn gerçekleþme süresini bulma (NULL olmayanlar)--

SELECT KargoID, DATEDIFF(day, KargoTarihi, TeslimTarihi) AS GecenSure
FROM KargoBilgileri;
--Belirli bir kargo teslimatýnýn gerçekleþme süresini bulma (teslim edilmemiþ sipariþler dahil)--

SELECT KargoID, DATEDIFF(day, KargoTarihi, ISNULL(TeslimTarihi, GETDATE())) AS GecenSure
FROM KargoBilgileri;
--Belirli bir kargo teslimatýnýn gerçekleþme süresini bulma (teslim edilmemiþ sipariþler dahil)--
