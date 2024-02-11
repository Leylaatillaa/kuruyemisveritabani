SELECT * FROM FiyatBilgileri WHERE UrunID = 1; --- Belirli bir �r�n�n fiyat bilgilerini alma ---

SELECT * FROM Stok WHERE Stok > 0; --- Stokta bulunan �r�nleri listeleme ---

SELECT * FROM Siparisler WHERE MusteriAdi = '[Belirli_Musteri_Adi]' AND MusteriSoyadi = '[Belirli_Musteri_Soyadi]';
--- Belirli bir m��terinin verdi�i sipari�leri listeleme: ---

SELECT TurAdi, COUNT(*) AS UrunSayisi FROM KuruyemisTuru INNER JOIN KuruyemisBilgileri ON KuruyemisTuru.TurID = KuruyemisBilgileri.TurID GROUP BY TurAdi;
--- Kuruyemi� t�rlerini ve bu t�rlere ait �r�n say�lar�n� listeleme ---

SELECT * FROM KargoBilgileri WHERE TeslimTarihi IS NULL AND KargoTarihi BETWEEN '2023-01-01' AND '2023-12-31';
--- Belirli bir tarih aral���ndaki kargo durumunu kontrol etme ---

SELECT * FROM Urunler WHERE UrunID IN (SELECT UrunID FROM Tedarikci WHERE FirmaID = 1);
--- Belirli bir tedarik�inin �r�nlerini listeleme ---

SELECT AVG(Fiyat) AS OrtalamaFiyat FROM FiyatBilgileri INNER JOIN Urunler ON FiyatBilgileri.UrunID = Urunler.UrunID WHERE Urunler.Tur = '[Belirli_Tur]';
-- Belirli bir kuruyemi� t�r�ndeki �r�nlerin ortalama fiyat�n� bulma --

SELECT * FROM Urunler WHERE UrunID IN (SELECT UrunID FROM Tedarikci);
-- Tedarik�ilere ait �r�nleri listeleme --

SELECT * FROM FiyatBilgileri WHERE Fiyat BETWEEN 10 AND 50;
--Belirli bir fiyat aral���ndaki �r�nleri listeleme--

SELECT Urunler.Tur, AVG(BesinBilgileri.Protein) AS OrtalamaProtein
FROM Urunler
INNER JOIN BesinBilgileri ON Urunler.BesinID = BesinBilgileri.BesinID
WHERE Urunler.Tur = '[Belirli_Tur]'
GROUP BY Urunler.Tur;
-- Belirli bir kuruyemi� t�r�ndeki �r�nlerin ortalama protein miktar�n� bulma --

SELECT TOP 1 UrunID, Stok
FROM Stok
ORDER BY Stok DESC;
--En fazla stokta bulunan �r�n� bulma--

SELECT KargoID, DATEDIFF(day, KargoTarihi, TeslimTarihi) AS GecenSure
FROM KargoBilgileri
WHERE TeslimTarihi IS NOT NULL;
--Belirli bir kargo teslimat�n�n ge�en s�resini bulma--

SELECT AVG(FiyatBilgileri.Fiyat) AS OrtalamaFiyat
FROM FiyatBilgileri
INNER JOIN Stok ON FiyatBilgileri.UrunID = Stok.UrunID
WHERE Stok.Stok > 0;
--Stokta bulunan �r�nlerin ortalama fiyat�n� bulma--

SELECT KuruyemisTuru.TurAdi, SUM(Siparisler.Gramaj) AS ToplamGramaj
FROM KuruyemisTuru
INNER JOIN KuruyemisBilgileri ON KuruyemisTuru.TurID = KuruyemisBilgileri.TurID
INNER JOIN Siparisler ON KuruyemisBilgileri.KuruyemisID = Siparisler.KuruyemisID
GROUP BY KuruyemisTuru.TurAdi;
--Belirli bir kuruyemi� t�r�ndeki �r�nlerin toplam gramaj�n� bulma--

SELECT TOP 1 UrunID, Stok
FROM Stok
ORDER BY Stok ASC;
--En d���k stok miktar�na sahip �r�n� bulma--

SELECT KargoID, GonderenAdi, GonderenAdresi, TeslimTarihi
FROM KargoBilgileri
WHERE TeslimTarihi IS NOT NULL;
--Belirli bir kargo teslimat�n�n ger�ekle�ti�i tarihi kontrol etme--

SELECT KargoID, DATEDIFF(day, KargoTarihi, TeslimTarihi) AS GecenSure
FROM KargoBilgileri
WHERE TeslimTarihi IS NOT NULL;
--Belirli bir kargo teslimat�n�n ger�ekle�me s�resini bulma--

SELECT KargoID, DATEDIFF(day, KargoTarihi, TeslimTarihi) AS GecenSure
FROM KargoBilgileri
WHERE TeslimTarihi IS NOT NULL;
--Belirli bir kargo teslimat�n�n ger�ekle�me s�resini bulma (NULL olmayanlar)--

SELECT KargoID, DATEDIFF(day, KargoTarihi, TeslimTarihi) AS GecenSure
FROM KargoBilgileri;
--Belirli bir kargo teslimat�n�n ger�ekle�me s�resini bulma (teslim edilmemi� sipari�ler dahil)--

SELECT KargoID, DATEDIFF(day, KargoTarihi, ISNULL(TeslimTarihi, GETDATE())) AS GecenSure
FROM KargoBilgileri;
--Belirli bir kargo teslimat�n�n ger�ekle�me s�resini bulma (teslim edilmemi� sipari�ler dahil)--
