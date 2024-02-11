CREATE DATABASE kuruyemisveritabani;

CREATE TABLE SaklamaBilgileri (
    SaklamaID INT PRIMARY KEY,
    UrunID INT,
    SaklamaKosullari VARCHAR(25),
    Sontuketimtarihi DATE,
    FOREIGN KEY (UrunID) REFERENCES Urunler(UrunID)
);

INSERT INTO SaklamaBilgileri (SaklamaID, UrunID, SaklamaKosullari, Sontuketimtarihi)
VALUES 
    (101, 1, 'Kuru ve serin ortam', '2024-12-31'),
    (102, 2, 'Oda sýcaklýðýnda', '2024-11-30'),
    (103, 3, 'Buzdolabýnda saklanmalý', '2029-04-15'), 
    (104, 4, 'Serin ve kuru yerde muhafaza edilmeli', '2023-12-20'),
    (105, 5, 'Buzdolabýnda 2-4°C arasýnda saklayýn', '2023-12-28'),
    (106, 6, 'Açýldýktan sonra buzdolabýnda saklayýn', '2024-01-05'),
    (107, 7, 'Oda sýcaklýðýnda, güneþ ýþýðýndan uzakta', '2024-02-10'),
    (108, 8, 'Karanlýk ve serin bir yerde muhafaza edin', '2023-12-25'),
    (109, 9, 'Açýldýktan sonra hava almayan bir kapta saklayýn', '2023-12-15'),
    (110, 10, 'Buzdolabýnda -18°C de saklayýn', '2024-01-20'),
    (111, 11, 'Oda sýcaklýðýnda nemden uzak bir yerde', '2024-03-01'),
    (112, 12, 'Kuru bir kapta muhafaza edilmeli', '2023-12-31'),
    (113, 13, 'Buzdolabýnda saklayýn, taze olarak tüketin', '2024-01-08'),
    (114, 14, 'Karanlýk ve serin bir yerde saklayýn', '2023-12-10'),
    (115, 15, 'Kapalý bir kapta, serin ve kuru bir yerde saklayýn', '2023-12-18'),
    (116, 16, 'Buzdolabýnda saklanmalý, son tüketim tarihine kadar', '2024-01-25'),
    (117, 17, 'Oda sýcaklýðýnda, kuru bir yerde saklayýn', '2024-02-05'),
    (118, 18, 'Serin ve kuru bir yerde muhafaza edin', '2023-12-22'),
    (119, 19, 'Kuru ve serin bir yerde saklayýn', '2023-12-29'),
    (120, 20, 'Buzdolabýnda saklayýn, açýldýktan sonra tüketin', '2024-01-02');


CREATE TABLE BesinBilgileri (
    BesinID INT PRIMARY KEY,
    Kalori INT,
    Protein INT,
    Yag INT,
    Karbonhidrat INT,
    Lif INT,
    Gram INT
);

INSERT INTO BesinBilgileri (BesinID, Kalori, Protein, Yag, Karbonhidrat, Lif, Gram)
VALUES 
(1, 120, 10, 5, 15, 3, 100),
(2, 220, 15, 8, 25, 5, 150),
(3, 320, 20, 12, 35, 7, 200),
(4, 180, 12, 6, 20, 4, 120),
(5, 280, 18, 10, 30, 6, 180),
(6, 250, 16, 9, 28, 5, 170),
(7, 180, 12, 7, 20, 4, 130),
(8, 300, 22, 15, 35, 6, 190),
(9, 210, 14, 8, 25, 4, 150),
(10, 260, 18, 10, 30, 5, 160),
(11, 320, 24, 18, 40, 7, 200),
(12, 170, 11, 6, 18, 3, 110),
(13, 280, 20, 12, 32, 6, 180),
(14, 240, 16, 9, 26, 5, 150),
(15, 190, 13, 7, 22, 4, 140),
(16, 350, 25, 20, 45, 8, 220),
(17, 200, 14, 8, 24, 4, 160),
(18, 270, 19, 11, 28, 5, 190),
(19, 230, 15, 9, 24, 4, 170),
(20, 290, 21, 13, 34, 7, 200);

CREATE TABLE Stok (
    StokID INT PRIMARY KEY,
    UrunID INT,
    Stok INT,
    FOREIGN KEY (UrunID) REFERENCES Urunler(UrunID)
);

INSERT INTO Stok (StokID, UrunID, Stok) 
VALUES 
    (101,1,50),
    (102, 2, 75),
    (103, 3, 100),
    (104, 4, 120),
    (105, 5, 90),
    (106, 6, 65),
    (107, 7, 110),
    (108, 8, 80),
    (109, 9, 95),
    (110, 10, 70),
    (111, 11, 85),
    (112, 12, 130),
    (113, 13, 55),
    (114, 14, 105),
    (115, 15, 40),
    (116, 16, 60),
    (117, 17, 115),
    (118, 18, 125),
    (119, 19, 150),
    (120, 20,100);

CREATE TABLE Tedarikci (
    FirmaID INT PRIMARY KEY,
    UreticiAdi NVARCHAR(30),
    UrunID INT,
    Adres TEXT,
    Iletisimbilgileri NVARCHAR(15),
    FOREIGN KEY (UrunID) REFERENCES Urunler(UrunID)
);


INSERT INTO Tedarikci (FirmaID, UreticiAdi, UrunNumarasi, Adres, Iletisimbilgileri) 
VALUES 
(1, 'tedarikçi A', 1, 'Ýstanbul', '021234554'),
(2, 'tedarikçi B', 2, 'Ankara', '021245654'),
(3, 'tedarikçi C', 3, 'Ýzmir', '021234554'),
(4, 'tedarikçi D', 4, 'Siirt', '021234554'),
(5, 'tedarikçi E', 5, 'Ordu', '021234554'),
(6, 'tedarikçi F', 6, 'Antalya', '0212674554'),
(7, 'tedarikçi G', 7, 'Gaziantep', '0289234554'),
(8, 'tedarikçi H', 8, 'Adana', '0212345874'),
(9, 'tedarikçi I', 9, 'Mardin', '0212345578'),
(10, 'tedarikçi J', 10, 'Malatya', '0212345454'),
(11, 'tedarikçi K', 11, 'Diyarbakýr', '0212364554'),
(12, 'tedarikçi L', 12, 'Adýyaman', '0212347754'),
(13, 'tedarikçi M', 13, 'Trabzon', '0212345565'),
(14, 'tedarikçi N', 14, 'Van', '02123456346'),
(15, 'tedarikçi O', 15, 'Muðla', '02123456064'),
(16, 'tedarikçi P', 16, 'Bursa', '021234556744'),
(17, 'tedarikçi R', 17, 'Ankara', '0212454554'),
(18, 'tedarikçi S', 18, 'Ýstanbul', '02128054554'),
(19, 'tedarikçi T', 19, 'Ýzmir', '021234496'),
(20, 'tedarikçi Y', 20, 'Mardin', '021237854');

CREATE TABLE FiyatBilgileri (
    FiyatID INT PRIMARY KEY,
    UrunID INT,
    Urunadi VARCHAR(20),
    Fiyat INT,
    PerakendeFiyat INT,
    FOREIGN KEY (UrunID) REFERENCES Urunler(UrunID)
);

INSERT INTO FiyatBilgileri (FiyatID, UrunID, Urunadi, Fiyat, PerakendeFiyat)
VALUES
(1, 1, 'Fýndýk', 100, 125),
(2, 2, 'Ceviz', 50, 62.5),
(3, 3, 'Antep Fýstýðý', 200, 250),
(4, 4, 'Kaju', 75, 93.75),
(5, 5, 'Badem', 125, 156.25),
(6, 6, 'Yer Fýstýðý', 50, 62.5),
(7, 7, 'Kabak Çekirdeði', 25, 31.25),
(8, 8, 'Brezilya Fýstýðý', 100, 125),
(9, 9, 'Ýnci Fýstýðý', 150, 187.5),
(10, 10, 'Pistacý', 250, 312.5),
(11, 11, 'Antep Fýstýðý Ezmesi', 150, 187.5),
(12, 12, 'Fýndýk Ezmesi', 125, 156.25),
(13, 13, 'Ceviz Ezmesi', 100, 125),
(14, 14, 'Kaju Ezmesi', 75, 93.75),
(15, 15, 'Badem Ezmesi', 50, 62.5),
(16, 16, 'Yer Fýstýðý Ezmesi', 25, 31.25),
(17, 17, 'Kabak Çekirdeði Ezmesi', 15, 18.75),
(18, 18, 'Brezilya Fýstýðý Ezmesi', 10, 12.5),
(19, 19, 'Karayemiþ', 100, 125),
(20, 20, 'Kuþburnu', 50, 62.5);


CREATE TABLE Urunler (
    UrunID INT PRIMARY KEY,
    Ad VARCHAR(25),
    Tur VARCHAR(15),
    Koken VARCHAR(15),
    BesinID INT,
    FOREIGN KEY (BesinID) REFERENCES BesinBilgileri(BesinID)
);

INSERT INTO Urunler (UrunID, Ad, Tur, Koken, BesinID) VALUES

(1, 'Fýstýk', 'Kuruyemiþ', 'Türkiye', 1),
(2, 'Badem', 'Kuruyemiþ', 'Türkiye', 2),
(3, 'Kaju', 'Kuruyemiþ', 'Türkiye', 3),
(4, 'Ay Çekirdeði', 'Kuruyemiþ', 'Türkiye', 4),
(5, 'Ceviz', 'Kuruyemiþ', 'Türkiye', 5),
(6, 'Leblebi', 'Kuruyemiþ', 'Türkiye', 6),
(7, 'Kabak Çekirdeði', 'Kuruyemiþ', 'Türkiye', 4),
(8, 'Antep Fýstýðý', 'Kuruyemiþ', 'Türkiye', 4),
(9, 'Üzüm Çekirdeði', 'Kuruyemiþ', 'Türkiye', 4),
(10, 'Dövülmüþ Fýstýk', 'Kuruyemiþ', 'Türkiye', 6),
(11, 'Hindistancevizi', 'Kuruyemiþ', 'Türkiye', 7),
(12, 'Macadamia Fýstýðý', 'Kuruyemiþ', 'Türkiye', 7),
(13, 'Pekan Cevizi', 'Kuruyemiþ', 'Türkiye', 7),
(14, 'Quinoa Toplarý', 'Kuruyemiþ', 'Türkiye', 1),
(15, 'Chia Tohumu', 'Kuruyemiþ', 'Türkiye', 8),
(16, 'Havuç Çekirdeði', 'Kuruyemiþ', 'Türkiye', 9),
(17, 'Goji Berry', 'Kuruyemiþ', 'Türkiye', 3),
(18, 'Ýncir', 'Kuruyemiþ', 'Türkiye', 9),
(19, 'Çam Fýstýðý', 'Kuruyemiþ', 'Türkiye', 9),
(20, 'Arap Sabunu', 'Kuruyemiþ', 'Türkiye', 10);


CREATE TABLE MusteriBilgileri (
    MusteriID INT PRIMARY KEY,
    Ad NVARCHAR(25),
    Soyad NVARCHAR(25),
    Email VARCHAR(100),
    Telefon VARCHAR(25),
    Adres TEXT
);

INSERT INTO MusteriBilgileri (MusteriID, Ad, Soyad, Email, Telefon, Adres) VALUES
(101, 'Ahmet', 'Yýlmaz', 'ahmet.yilmaz@example.com', '0532 123 45 67', 'Ýstanbul, Türkiye'),
(102, 'Mehmet', 'Kalkan', 'mehmet.kalkan@example.com', '0533 456 78 90', 'Ankara, Türkiye'),
(103, 'Fatma', 'Arslan', 'fatma.arslan@example.com', '0534 567 89 01', 'Ýzmir, Türkiye'),
(104, 'Ali', 'Demir', 'ali.demir@example.com', '0535 678 90 12', 'Adana, Türkiye'),
(105, 'Ayþe', 'Gül', 'ayse.gul@example.com', '0536 789 01 23', 'Bursa, Türkiye'),
(106, 'Hasan', 'Çelik', 'hasan.celik@example.com', '0537 890 12 34', 'Eskiþehir, Türkiye'),
(107, 'Zeynep', 'Küçük', 'zeynep.kucuk@example.com', '0538 901 23 45', 'Antalya, Türkiye'),
(108, 'Oðuzhan', 'Kocaman', 'oguzhan.kocaman@example.com', '0539 012 34 56', 'Konya, Türkiye'),
(109, 'Merve', 'Altýn', 'merve.altin@example.com', '0540 123 45 67', 'Trabzon, Türkiye'),
(110, 'Emre', 'Þahin', 'emre.sahin@example.com', '0541 456 78 90', 'Samsun, Türkiye'),
(111, 'Rümeysa', 'Karahan', 'rumeysa.karahan@example.com', '0542 567 89 01', 'Rize, Türkiye'),
(112, 'Gökhan', 'Gür', 'gokhan.gur@example.com', '0543 678 90 12', 'Gaziantep, Türkiye'),
(113, 'Ýrem', 'Yýldýz', 'irem.yildiz@example.com', '0544 567 89 01', 'Þanlýurfa, Türkiye'),
(114, 'Berk', 'Can', 'berk.can@example.com', '0545 678 90 12', 'Mardin, Türkiye'),
(115, 'Elif', 'Yýlmaz', 'elif.yilmaz@example.com', '0546 789 01 23', 'Van, Türkiye'),
(116, 'Yiðit', 'Demir', 'yigit.demir@example.com', '0547 890 12 34', 'Bitlis, Türkiye'),
(117, 'Nisa', 'Küçük', 'nisa.kucuk@example.com', '0548 901 23 45', 'Muþ, Türkiye');


CREATE TABLE Kuruyemisler (
    KuruyemisID INT PRIMARY KEY,
    TurAdi VARCHAR(50),
    Karbonhidrat DECIMAL(10, 2),
    Protein DECIMAL(10, 2),
    Yag DECIMAL(10, 2),
    Lif DECIMAL(10, 2),
    AileAdi VARCHAR(50)
);

INSERT INTO Kuruyemisler (KuruyemisID, TurAdi, Karbonhidrat, Protein, Yag, Lif, AileAdi)
VALUES
(30, 'Fýndýk', 13.6, 20.4, 65.7, 7.4, 'Fýndýkgillerden'),
(31, 'Yerfýstýðý', 16.1, 25.8, 44.5, 8.5, 'Baklagiller'),
(32, 'Badem', 16.2, 21.1, 53.9, 12.2, 'Baklagiller'),
(33, 'Ceviz', 13.2, 15.2, 65.3, 10.3, 'Cevizgiller'),
(34, 'Acýbadem', 16.3, 19.3, 51.9, 12.6, 'Baklagiller'),
(35, 'Antepfýstýðý', 18.8, 22.2, 49.8, 10.1, 'Baklagiller'),
(36, 'Kaju', 16.1, 22.2, 55.8, 12.4, 'Baklagiller'),
(37, 'Kuþburnu', 28.1, 10.1, 44.4, 17.2, 'Gülgiller'),
(38, 'Karayemiþ', 25.2, 11.2, 44.4, 19.2, 'Gülgiller'),
(39, 'Çilek', 11.1, 1.2, 2.2, 7.2, 'Gülgiller'),
(40, 'Yaban mersini', 13.1, 1.2, 2.2, 8.2, 'Gülgiller'),
(41, 'Kayýsý', 10.1, 1.2, 0.2, 4.2, 'Kayýsýgiller'),
(42, 'Üzüm', 11.1, 0.2, 0.2, 5.2, 'Üzümgiller'),
(43, 'Kiraz', 12.1, 0.2, 0.2, 6.2, 'Kirazgiller'),
(44, 'Erik', 13.1, 0.2, 0.2, 7.2, 'Erikgiller'),
(45, 'Dut', 14.1, 0.2, 0.2, 8.2, 'Dutgiller'),
(46, 'Ananas', 15.1, 0.2, 0.2, 9.2, 'Ananasgiller'),
(47, 'Kivi', 16.1, 0.2, 0.2, 10.2, 'Kivigiller'),
(48, 'Karpuz', 17.1, 0.2, 0.2, 11.2, 'Karpuzgiller'),
(49, 'Portakal', 18.1, 0.2, 0.2, 12.2, 'Portakalgiller');



CREATE TABLE SaticiBilgileri (
    SaticiID INT PRIMARY KEY,
    SaticiAdi VARCHAR(50),
    Sehir VARCHAR(50),
    Telefon VARCHAR(15),
    Eposta VARCHAR(50),
);

INSERT INTO SaticiBilgileri (SaticiID, SaticiAdi, Sehir, Telefon, Eposta) 
VALUES
    
    (22, 'Satici2', 'Ankara', '555-2222', 'satici2@gmail.com'),
    (23, 'Satici3', 'Ýzmir', '555-3333', 'satici3@gmail.com'),
    (24, 'Satici4', 'Bursa', '555-4444', 'satici4@gmail.com'),
    (25, 'Satici5', 'Antalya', '555-5555', 'satici5@gmail.com'),
    (26, 'Satici6', 'Adana', '555-6666', 'satici6@gmail.com'),
    (27, 'Satici7', 'Trabzon', '555-7777', 'satici7@gmail.com'),
    (28, 'Satici8', 'Eskiþehir', '555-8888', 'satici8@gmail.com'),
    (29, 'Satici9', 'Gaziantep', '555-9999', 'satici9@gmail.com'),
    (30, 'Satici10', 'Konya', '555-1010', 'satici10@gmail.com'),
    (31, 'Satici11', 'Diyarbakýr', '555-1111', 'satici11@gmail.com'),
    (32, 'Satici12', 'Samsun', '555-1212', 'satici12@gmail.com'),
    (33, 'Satici13', 'Malatya', '555-1313', 'satici13@gmail.com'),
    (34, 'Satici14', 'Kayseri', '555-1414', 'satici14@gmail.com'),
    (35, 'Satici15', 'Hatay', '555-1515', 'satici15@gmail.com'),
    (36, 'Satici16', 'Van', '555-1616', 'satici16@gmail.com'),
    (37, 'Satici17', 'Balýkesir', '555-1717', 'satici17@gmail.com'),
    (38, 'Satici18', 'Mersin', '555-1818', 'satici18@gmail.com'),
    (39, 'Satici19', 'Denizli', '555-1919', 'satici19@gmail.com'),
    (40, 'Satici20', 'Isparta', '555-2020', 'satici20@gmail.com');


CREATE TABLE Siparisler (
    SiparisID INT PRIMARY KEY,
    MusteriAdi VARCHAR(50),
    MusteriSoyadi VARCHAR(50),
    SaticiID INT,
    KuruyemisID INT,
    Gramaj DECIMAL(10, 2),
    Adres VARCHAR(255),
    FOREIGN KEY (SaticiID) REFERENCES SaticiBilgileri(SaticiID),
    FOREIGN KEY (KuruyemisID) REFERENCES Kuruyemisler(KuruyemisID)
);

INSERT INTO Siparisler (SiparisID, MusteriAdi, MusteriSoyadi, SaticiID, KuruyemisID, Gramaj, Adres)
VALUES 
    (1, 'Ahmet', 'Yýlmaz', 1, 3, 2000, 'Ýstanbul, Kadýköy');
    (2, 'Ayþe', 'Demir', 5, 6, 2500, 'Ankara, Çankaya'),
    (3, 'Mehmet', 'Kara', 10, 11, 1200, 'Ýzmir, Bornova'),
    (4, 'Zeynep', 'Yýldýz', 15, 17, 1000, 'Bursa, Osmangazi'),
    (5, 'Fatma', 'Öz', 20, 18, 750, 'Antalya, Muratpaþa'),
    (6, 'Deniz', 'Aydýn', 2, 5, 500, 'Ýzmir, Karþýyaka'),
    (7, 'Yasin', 'Tekin', 8, 14, 250, 'Ankara, Yenimahalle'),
    (8, 'Nur', 'Güzel', 12, 9, 1750, 'Ýstanbul, Beylikdüzü'),
    (9, 'Okan', 'Kaya', 17, 16, 1500, 'Antalya, Kepez'),
    (10, 'Elif', 'Acar', 3, 13, 1250, 'Ýzmir, Buca'),
    (11, 'Cem', 'Arslan', 19, 20, 1000, 'Ankara, Sincan'),
    (12, 'Aslý', 'Öztürk', 7, 2, 750, 'Eskiþehir, Tepebaþý'),
    (13, 'Murat', 'Yýldýz', 14, 8, 1200, 'Ýstanbul, Ümraniye'),
    (14, 'Selin', 'Can', 4, 15, 1050, 'Antalya, Konyaaltý'),
    (15, 'Ali', 'Yýlmaz', 18, 4, 275, 'Bursa, Nilüfer'),
    (16, 'Zehra', 'Demir', 11, 1, 1200, 'Adana, Seyhan'),
    (17, 'Efe', 'Kara', 6, 19, 250, 'Ýstanbul, Beþiktaþ'),
    (18, 'Ýrem', 'Yavuz', 1, 7, 1500, 'Ankara, Çukurambar'),
    (19, 'Berkay', 'Aydýn', 5, 12, 1000, 'Ýzmir, Gaziemir'),
    (20, 'Elif', 'Demir', 9, 10, 500, 'Bursa, Yýldýrým');




CREATE TABLE KargoBilgileri (
    KargoID INT PRIMARY KEY,
    GonderenAdi VARCHAR(50),
    GonderenAdresi VARCHAR(100),
    AliciAdi VARCHAR(50),
    AliciAdresi VARCHAR(100),
    KargoTarihi DATE,
    TeslimTarihi DATE
);

INSERT INTO KargoBilgileri (KargoID, GonderenAdi, GonderenAdresi, AliciAdi, AliciAdresi, KargoTarihi, TeslimTarihi)
VALUES
(1, 'Mustafa Yýlmaz', 'Ýstanbul, Kadýköy, Baðdat Caddesi', 'Ali Can', 'Ankara, Çankaya, Kýzýlay', '2023-12-25', '2023-12-27'),
(2, 'Ayþegül Öztürk', 'Ýzmir, Bornova, Evka 3', 'Mehmet Emin', 'Adana, Seyhan, Çukurova', '2023-12-26', '2023-12-28'),
(3, 'Fatma Demir', 'Ankara, Çankaya, Balgat', 'Zeynep Kara', 'Ýstanbul, Fatih, Eminönü', '2023-12-27', '2023-12-29'),
(4, 'Ali Yýlmaz', 'Ýstanbul, Beyoðlu, Ýstiklal Caddesi', 'Selin Öztürk', 'Antalya, Muratpaþa, Konyaaltý', '2023-12-28', '2023-12-30'),
(5, 'Mustafa Demir', 'Ýzmir, Konak, Alsancak', 'Ayþe Can', 'Bursa, Osmangazi, Nilüfer', '2023-12-29', '2023-12-31'),
(6, 'Fatma Öztürk', 'Ankara, Keçiören, Ýncirli', 'Mehmet Yýlmaz', 'Ýstanbul, Þiþli, Mecidiyeköy', '2023-12-30', '2024-01-01'),
(7, 'Zeynep Can', 'Ýstanbul, Üsküdar, Çengelköy', 'Ali Demir', 'Ankara, Çankaya, Çayyolu', '2023-12-31', '2024-01-02'),
(8, 'Mustafa Öztürk', 'Ýzmir, Karþýyaka, Bostanlý', 'Ayþe Demir', 'Adana, Seyhan, Yüreðir', '2024-01-02', '2024-01-03'),
(9, 'Fatma Yýlmaz', 'Ankara, Yenimahalle, Demetevler', 'Mehmet Can', 'Ýstanbul, Kadýköy, Moda', '2024-01-03', '2024-01-04'),
(10, 'Zeynep Demir', 'Ýstanbul, Beykoz, Çubuklu', 'Ali Can', 'Ankara, Çankaya, Bilkent', '2024-01-04', '2024-01-05'),
(11, 'Mustafa Can', 'Ýzmir, Konak, Halkapýnar', 'Ayþe Yýlmaz', 'Adana, Seyhan, Sarýçam', '2024-01-05', '2024-01-06'),
(12, 'Fatma Demir', 'Ankara, Mamak, Akdere', 'Mehmet Öztürk', 'Ýstanbul, Fatih, Sultanahmet', '2024-01-06', '2024-01-07'),
(13, 'Zeynep Öztürk', 'Ýstanbul, Ümraniye, Dudullu', 'Ali Yýlmaz', 'Ankara, Çankaya, Çayyolu', '2024-01-07', '2024-01-08'),
(14, 'Ali Demir', 'Ýstanbul, Bakýrköy, Zeytinlik', 'Selin Öztürk', 'Antalya, Muratpaþa, Kepez', '2024-01-08', '2024-01-09'),
(15, 'Mustafa Öztürk', 'Ýzmir, Karþýyaka, Çarþý', 'Mehmet Yýlmaz', 'Bursa, Osmangazi, Osmangazi', '2024-01-09', '2024-01-10'),
(16, 'Fatma Yýlmaz', 'Ankara, Çankaya, Kýzýlay', 'Ayþe Can', 'Ýstanbul, Kadýköy, Fenerbahçe', '2024-01-10', '2024-01-11'),
(17, 'Zeynep Demir', 'Ýstanbul, Üsküdar, Ümraniye', 'Ali Yýlmaz', 'Ankara, Çankaya, Çayyolu', '2024-01-11', '2024-01-12'),
(18, 'Mustafa Can', 'Ýzmir, Konak, Halkapýnar', 'Ayþe Yýlmaz', 'Adana, Seyhan, Seyhan', '2024-01-12', '2024-01-13'),
(19, 'Fatma Demir', 'Ankara, Mamak, Akdere', 'Mehmet Öztürk', 'Ýstanbul, Fatih, Eminönü', '2024-01-13', '2024-01-14'),
(20, 'Yusuf Demir', 'Ýstanbul, Þiþli, Mecidiyeköy', 'Ahmet Yýlmaz', 'Ankara, Çankaya, Çayyolu', '2024-01-14', '2024-01-15');

CREATE TABLE KuruyemisTuru (
    TurID INT PRIMARY KEY,
    TurAdi VARCHAR(50)
);

INSERT INTO KuruyemisTuru (TurID, TurAdi)
VALUES
(1, 'Fýndýk'),
(2, 'Ceviz'),
(3, 'Antep Fýstýðý'),
(4, 'Kaju'),
(5, 'Badem'),
(6, 'Yer Fýstýðý'),
(7, 'Kabak Çekirdeði'),
(8, 'Brezilya Fýstýðý'),
(9, 'Ýnci Fýstýðý'),
(10, 'Kuþ Yemiþi'),
(11, 'Kestane'),
(12, 'Çam Fýstýðý'),
(13, 'Pistacýye'),
(14, 'Leblebi'),
(15, 'Yerfýstýðý Ezmesi'),
(16, 'Beyaz Fýstýk'),
(17, 'Kiþniþ Çekirdeði'),
(18, 'Gül Fýstýðý'),
(19, 'Kahve Çekirdeði'),
(20, 'Kakao Çekirdeði');



CREATE TABLE UreticiFirma (
    FirmaID INT PRIMARY KEY,
    FirmaAdi VARCHAR(50),
    Adres VARCHAR(100),
    Telefon VARCHAR(15)
);

INSERT INTO UreticiFirma (FirmaID, FirmaAdi, Adres, Telefon)
VALUES
(1, 'Fýndýkçý Mehmet', 'Ýzmir, Bornova, Yeþilova Mahallesi, 100. Sokak, No: 24', '+90 555 123 4567'),
(2, 'Ceviz Bahçeleri', 'Konya, Meram, Baðbaþý Mahallesi, 30. Sokak, No: 56', '+90 532 987 6543'),
(3, 'Antep Fýstýk Krallarý', 'Gaziantep, Þahinbey, Kýlýçarslan Mahallesi, 40. Sokak, No: 78', '+90 344 210 8932'),
(4, 'Tropikal Lezzetler', 'Mersin, Mezitli, Tece Mahallesi, 20. Sokak, No: 19', '+90 505 765 4321'),
(5, 'Badem Bahçeleri', 'Manisa, Sarýgöl, Hisarönü Mahallesi, 50. Sokak, No: 32', '+90 236 543 1298'),
(6, 'Kabak Çekirdeði Uzmanlarý', 'Adana, Seyhan, Ýnönü Mahallesi, 10. Sokak, No: 41', '+90 312 654 9870'),
(7, 'Brezilya Fýstýðý Ýthalat', 'Ýstanbul, Kadýköy, Fenerbahçe Mahallesi, 60. Sokak, No: 54', '+90 216 321 0987'),
(8, 'Kuruyemiþ Dünyasý', 'Ankara, Çankaya, Emek Mahallesi, 30. Sokak, No: 27', '+90 313 876 5432'),
(9, 'Leblebi Krallarý', 'Sivas, Merkez, Bahçelievler Mahallesi, 40. Sokak, No: 15', '+90 461 234 7654'),
(10, 'Yöresel Kuruyemiþ', 'Hatay, Antakya, Defne Mahallesi, 20. Sokak, No: 89', '+90 388 987 4321'),
(11, 'Fýndýk Bahçeleri', 'Kastamonu, Tosya, Akçaçam Mahallesi, 100. Sokak, No: 24', '+90 555 123 4567'),
(12, 'Ceviz Üreticileri Birliði', 'Ordu, Fatsa, Tekkiraz Mahallesi, 30. Sokak, No: 56', '+90 532 987 6543'),
(13, 'Antep Fýstýðý Ýhracatý', 'Adýyaman, Kahta, Nurhak Mahallesi, 40. Sokak, No: 78', '+90 344 210 8932'),
(14, 'Tropikal Kuruyemiþler', 'Antalya, Alanya, Mahmutlar Mahallesi, 20. Sokak, No: 19', '+90 505 765 4321'),
(15, 'Badem Toptancýsý', 'Afyonkarahisar, Sandýklý, Acýgöl Mahallesi, 50. Sokak, No: 32', '+90 236 543 1298'),
(16, 'Kabak Çekirdeði Fabrikasý', 'Kahramanmaraþ, Onikiþubat, Dulkadiroðlu Mahallesi, 10. Sokak, No: 41', '+90 312 654 9870'),
(17, 'Brezilya Fýstýðý Yetiþtiricileri', 'Ýzmir, Çeþme, Alaçatý Mahallesi, 60. Sokak, No: 54', '+90 216 321 0987'),
(18, 'Kuruyemiþ Pazarý', 'Ýstanbul, Fatih, Eminönü Mahallesi, 30. Sokak, No: 27', '+90 313 876 5432'),
(19, 'Leblebi Dünyasý', 'Erzurum, Yakutiye, Yakutiye Mahallesi, 40. Sokak, No: 15', '+90 461 234 7654'),
(20, 'Kýtýr Kuruyemiþler', 'Adana, Seyhan, Çukurova Mahallesi, 20. Sokak, No: 89', '+90 212 635 2114');

CREATE TABLE KuruyemisBilgileri (
    KuruyemisID INT PRIMARY KEY,
    Adi VARCHAR(50),
    Miktar INT,
    Fiyat DECIMAL(10, 2),
    KargoID INT,
    TurID INT,
    FirmaID INT,
    FOREIGN KEY (KargoID) REFERENCES KargoBilgileri(KargoID),
    FOREIGN KEY (TurID) REFERENCES KuruyemisTuru(TurID),
    FOREIGN KEY (FirmaID) REFERENCES UreticiFirma(FirmaID)
);

INSERT INTO KuruyemisBilgileri (KuruyemisID, Adi, Miktar, Fiyat)
VALUES
(1, 'Fýndýk', 1000, 100.00),
(2, 'Ceviz', 500, 50.00),
(3, 'Antep Fýstýðý', 250, 200.00),
(4, 'Kaju', 100, 75.00),
(5, 'Badem', 200, 125.00),
(6, 'Yer Fýstýðý', 500, 50.00),
(7, 'Kabak Çekirdeði', 1000, 25.00),
(8, 'Brezilya Fýstýðý', 50, 100.00),
(9, 'Ýnci Fýstýðý', 200, 150.00),
(10, 'Pistacý', 250, 250.00),
(11, 'Antep Fýstýðý Ezmesi', 500, 150.00),
(12, 'Fýndýk Ezmesi', 1000, 125.00),
(13, 'Ceviz Ezmesi', 500, 100.00),
(14, 'Kaju Ezmesi', 250, 75.00),
(15, 'Badem Ezmesi', 100, 50.00),
(16, 'Yer Fýstýðý Ezmesi', 250, 25.00),
(17, 'Kabak Çekirdeði Ezmesi', 500, 15.00),
(18, 'Brezilya Fýstýðý Ezmesi', 100, 10.00),
(19, 'Karayemiþ', 100, 100.00),
(20, 'Kuþburnu', 500, 50.00);

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



