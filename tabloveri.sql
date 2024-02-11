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
    (102, 2, 'Oda s�cakl���nda', '2024-11-30'),
    (103, 3, 'Buzdolab�nda saklanmal�', '2029-04-15'), 
    (104, 4, 'Serin ve kuru yerde muhafaza edilmeli', '2023-12-20'),
    (105, 5, 'Buzdolab�nda 2-4�C aras�nda saklay�n', '2023-12-28'),
    (106, 6, 'A��ld�ktan sonra buzdolab�nda saklay�n', '2024-01-05'),
    (107, 7, 'Oda s�cakl���nda, g�ne� �����ndan uzakta', '2024-02-10'),
    (108, 8, 'Karanl�k ve serin bir yerde muhafaza edin', '2023-12-25'),
    (109, 9, 'A��ld�ktan sonra hava almayan bir kapta saklay�n', '2023-12-15'),
    (110, 10, 'Buzdolab�nda -18�C de saklay�n', '2024-01-20'),
    (111, 11, 'Oda s�cakl���nda nemden uzak bir yerde', '2024-03-01'),
    (112, 12, 'Kuru bir kapta muhafaza edilmeli', '2023-12-31'),
    (113, 13, 'Buzdolab�nda saklay�n, taze olarak t�ketin', '2024-01-08'),
    (114, 14, 'Karanl�k ve serin bir yerde saklay�n', '2023-12-10'),
    (115, 15, 'Kapal� bir kapta, serin ve kuru bir yerde saklay�n', '2023-12-18'),
    (116, 16, 'Buzdolab�nda saklanmal�, son t�ketim tarihine kadar', '2024-01-25'),
    (117, 17, 'Oda s�cakl���nda, kuru bir yerde saklay�n', '2024-02-05'),
    (118, 18, 'Serin ve kuru bir yerde muhafaza edin', '2023-12-22'),
    (119, 19, 'Kuru ve serin bir yerde saklay�n', '2023-12-29'),
    (120, 20, 'Buzdolab�nda saklay�n, a��ld�ktan sonra t�ketin', '2024-01-02');


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
(1, 'tedarik�i A', 1, '�stanbul', '021234554'),
(2, 'tedarik�i B', 2, 'Ankara', '021245654'),
(3, 'tedarik�i C', 3, '�zmir', '021234554'),
(4, 'tedarik�i D', 4, 'Siirt', '021234554'),
(5, 'tedarik�i E', 5, 'Ordu', '021234554'),
(6, 'tedarik�i F', 6, 'Antalya', '0212674554'),
(7, 'tedarik�i G', 7, 'Gaziantep', '0289234554'),
(8, 'tedarik�i H', 8, 'Adana', '0212345874'),
(9, 'tedarik�i I', 9, 'Mardin', '0212345578'),
(10, 'tedarik�i J', 10, 'Malatya', '0212345454'),
(11, 'tedarik�i K', 11, 'Diyarbak�r', '0212364554'),
(12, 'tedarik�i L', 12, 'Ad�yaman', '0212347754'),
(13, 'tedarik�i M', 13, 'Trabzon', '0212345565'),
(14, 'tedarik�i N', 14, 'Van', '02123456346'),
(15, 'tedarik�i O', 15, 'Mu�la', '02123456064'),
(16, 'tedarik�i P', 16, 'Bursa', '021234556744'),
(17, 'tedarik�i R', 17, 'Ankara', '0212454554'),
(18, 'tedarik�i S', 18, '�stanbul', '02128054554'),
(19, 'tedarik�i T', 19, '�zmir', '021234496'),
(20, 'tedarik�i Y', 20, 'Mardin', '021237854');

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
(1, 1, 'F�nd�k', 100, 125),
(2, 2, 'Ceviz', 50, 62.5),
(3, 3, 'Antep F�st���', 200, 250),
(4, 4, 'Kaju', 75, 93.75),
(5, 5, 'Badem', 125, 156.25),
(6, 6, 'Yer F�st���', 50, 62.5),
(7, 7, 'Kabak �ekirde�i', 25, 31.25),
(8, 8, 'Brezilya F�st���', 100, 125),
(9, 9, '�nci F�st���', 150, 187.5),
(10, 10, 'Pistac�', 250, 312.5),
(11, 11, 'Antep F�st��� Ezmesi', 150, 187.5),
(12, 12, 'F�nd�k Ezmesi', 125, 156.25),
(13, 13, 'Ceviz Ezmesi', 100, 125),
(14, 14, 'Kaju Ezmesi', 75, 93.75),
(15, 15, 'Badem Ezmesi', 50, 62.5),
(16, 16, 'Yer F�st��� Ezmesi', 25, 31.25),
(17, 17, 'Kabak �ekirde�i Ezmesi', 15, 18.75),
(18, 18, 'Brezilya F�st��� Ezmesi', 10, 12.5),
(19, 19, 'Karayemi�', 100, 125),
(20, 20, 'Ku�burnu', 50, 62.5);


CREATE TABLE Urunler (
    UrunID INT PRIMARY KEY,
    Ad VARCHAR(25),
    Tur VARCHAR(15),
    Koken VARCHAR(15),
    BesinID INT,
    FOREIGN KEY (BesinID) REFERENCES BesinBilgileri(BesinID)
);

INSERT INTO Urunler (UrunID, Ad, Tur, Koken, BesinID) VALUES

(1, 'F�st�k', 'Kuruyemi�', 'T�rkiye', 1),
(2, 'Badem', 'Kuruyemi�', 'T�rkiye', 2),
(3, 'Kaju', 'Kuruyemi�', 'T�rkiye', 3),
(4, 'Ay �ekirde�i', 'Kuruyemi�', 'T�rkiye', 4),
(5, 'Ceviz', 'Kuruyemi�', 'T�rkiye', 5),
(6, 'Leblebi', 'Kuruyemi�', 'T�rkiye', 6),
(7, 'Kabak �ekirde�i', 'Kuruyemi�', 'T�rkiye', 4),
(8, 'Antep F�st���', 'Kuruyemi�', 'T�rkiye', 4),
(9, '�z�m �ekirde�i', 'Kuruyemi�', 'T�rkiye', 4),
(10, 'D�v�lm�� F�st�k', 'Kuruyemi�', 'T�rkiye', 6),
(11, 'Hindistancevizi', 'Kuruyemi�', 'T�rkiye', 7),
(12, 'Macadamia F�st���', 'Kuruyemi�', 'T�rkiye', 7),
(13, 'Pekan Cevizi', 'Kuruyemi�', 'T�rkiye', 7),
(14, 'Quinoa Toplar�', 'Kuruyemi�', 'T�rkiye', 1),
(15, 'Chia Tohumu', 'Kuruyemi�', 'T�rkiye', 8),
(16, 'Havu� �ekirde�i', 'Kuruyemi�', 'T�rkiye', 9),
(17, 'Goji Berry', 'Kuruyemi�', 'T�rkiye', 3),
(18, '�ncir', 'Kuruyemi�', 'T�rkiye', 9),
(19, '�am F�st���', 'Kuruyemi�', 'T�rkiye', 9),
(20, 'Arap Sabunu', 'Kuruyemi�', 'T�rkiye', 10);


CREATE TABLE MusteriBilgileri (
    MusteriID INT PRIMARY KEY,
    Ad NVARCHAR(25),
    Soyad NVARCHAR(25),
    Email VARCHAR(100),
    Telefon VARCHAR(25),
    Adres TEXT
);

INSERT INTO MusteriBilgileri (MusteriID, Ad, Soyad, Email, Telefon, Adres) VALUES
(101, 'Ahmet', 'Y�lmaz', 'ahmet.yilmaz@example.com', '0532 123 45 67', '�stanbul, T�rkiye'),
(102, 'Mehmet', 'Kalkan', 'mehmet.kalkan@example.com', '0533 456 78 90', 'Ankara, T�rkiye'),
(103, 'Fatma', 'Arslan', 'fatma.arslan@example.com', '0534 567 89 01', '�zmir, T�rkiye'),
(104, 'Ali', 'Demir', 'ali.demir@example.com', '0535 678 90 12', 'Adana, T�rkiye'),
(105, 'Ay�e', 'G�l', 'ayse.gul@example.com', '0536 789 01 23', 'Bursa, T�rkiye'),
(106, 'Hasan', '�elik', 'hasan.celik@example.com', '0537 890 12 34', 'Eski�ehir, T�rkiye'),
(107, 'Zeynep', 'K���k', 'zeynep.kucuk@example.com', '0538 901 23 45', 'Antalya, T�rkiye'),
(108, 'O�uzhan', 'Kocaman', 'oguzhan.kocaman@example.com', '0539 012 34 56', 'Konya, T�rkiye'),
(109, 'Merve', 'Alt�n', 'merve.altin@example.com', '0540 123 45 67', 'Trabzon, T�rkiye'),
(110, 'Emre', '�ahin', 'emre.sahin@example.com', '0541 456 78 90', 'Samsun, T�rkiye'),
(111, 'R�meysa', 'Karahan', 'rumeysa.karahan@example.com', '0542 567 89 01', 'Rize, T�rkiye'),
(112, 'G�khan', 'G�r', 'gokhan.gur@example.com', '0543 678 90 12', 'Gaziantep, T�rkiye'),
(113, '�rem', 'Y�ld�z', 'irem.yildiz@example.com', '0544 567 89 01', '�anl�urfa, T�rkiye'),
(114, 'Berk', 'Can', 'berk.can@example.com', '0545 678 90 12', 'Mardin, T�rkiye'),
(115, 'Elif', 'Y�lmaz', 'elif.yilmaz@example.com', '0546 789 01 23', 'Van, T�rkiye'),
(116, 'Yi�it', 'Demir', 'yigit.demir@example.com', '0547 890 12 34', 'Bitlis, T�rkiye'),
(117, 'Nisa', 'K���k', 'nisa.kucuk@example.com', '0548 901 23 45', 'Mu�, T�rkiye');


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
(30, 'F�nd�k', 13.6, 20.4, 65.7, 7.4, 'F�nd�kgillerden'),
(31, 'Yerf�st���', 16.1, 25.8, 44.5, 8.5, 'Baklagiller'),
(32, 'Badem', 16.2, 21.1, 53.9, 12.2, 'Baklagiller'),
(33, 'Ceviz', 13.2, 15.2, 65.3, 10.3, 'Cevizgiller'),
(34, 'Ac�badem', 16.3, 19.3, 51.9, 12.6, 'Baklagiller'),
(35, 'Antepf�st���', 18.8, 22.2, 49.8, 10.1, 'Baklagiller'),
(36, 'Kaju', 16.1, 22.2, 55.8, 12.4, 'Baklagiller'),
(37, 'Ku�burnu', 28.1, 10.1, 44.4, 17.2, 'G�lgiller'),
(38, 'Karayemi�', 25.2, 11.2, 44.4, 19.2, 'G�lgiller'),
(39, '�ilek', 11.1, 1.2, 2.2, 7.2, 'G�lgiller'),
(40, 'Yaban mersini', 13.1, 1.2, 2.2, 8.2, 'G�lgiller'),
(41, 'Kay�s�', 10.1, 1.2, 0.2, 4.2, 'Kay�s�giller'),
(42, '�z�m', 11.1, 0.2, 0.2, 5.2, '�z�mgiller'),
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
    (23, 'Satici3', '�zmir', '555-3333', 'satici3@gmail.com'),
    (24, 'Satici4', 'Bursa', '555-4444', 'satici4@gmail.com'),
    (25, 'Satici5', 'Antalya', '555-5555', 'satici5@gmail.com'),
    (26, 'Satici6', 'Adana', '555-6666', 'satici6@gmail.com'),
    (27, 'Satici7', 'Trabzon', '555-7777', 'satici7@gmail.com'),
    (28, 'Satici8', 'Eski�ehir', '555-8888', 'satici8@gmail.com'),
    (29, 'Satici9', 'Gaziantep', '555-9999', 'satici9@gmail.com'),
    (30, 'Satici10', 'Konya', '555-1010', 'satici10@gmail.com'),
    (31, 'Satici11', 'Diyarbak�r', '555-1111', 'satici11@gmail.com'),
    (32, 'Satici12', 'Samsun', '555-1212', 'satici12@gmail.com'),
    (33, 'Satici13', 'Malatya', '555-1313', 'satici13@gmail.com'),
    (34, 'Satici14', 'Kayseri', '555-1414', 'satici14@gmail.com'),
    (35, 'Satici15', 'Hatay', '555-1515', 'satici15@gmail.com'),
    (36, 'Satici16', 'Van', '555-1616', 'satici16@gmail.com'),
    (37, 'Satici17', 'Bal�kesir', '555-1717', 'satici17@gmail.com'),
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
    (1, 'Ahmet', 'Y�lmaz', 1, 3, 2000, '�stanbul, Kad�k�y');
    (2, 'Ay�e', 'Demir', 5, 6, 2500, 'Ankara, �ankaya'),
    (3, 'Mehmet', 'Kara', 10, 11, 1200, '�zmir, Bornova'),
    (4, 'Zeynep', 'Y�ld�z', 15, 17, 1000, 'Bursa, Osmangazi'),
    (5, 'Fatma', '�z', 20, 18, 750, 'Antalya, Muratpa�a'),
    (6, 'Deniz', 'Ayd�n', 2, 5, 500, '�zmir, Kar��yaka'),
    (7, 'Yasin', 'Tekin', 8, 14, 250, 'Ankara, Yenimahalle'),
    (8, 'Nur', 'G�zel', 12, 9, 1750, '�stanbul, Beylikd�z�'),
    (9, 'Okan', 'Kaya', 17, 16, 1500, 'Antalya, Kepez'),
    (10, 'Elif', 'Acar', 3, 13, 1250, '�zmir, Buca'),
    (11, 'Cem', 'Arslan', 19, 20, 1000, 'Ankara, Sincan'),
    (12, 'Asl�', '�zt�rk', 7, 2, 750, 'Eski�ehir, Tepeba��'),
    (13, 'Murat', 'Y�ld�z', 14, 8, 1200, '�stanbul, �mraniye'),
    (14, 'Selin', 'Can', 4, 15, 1050, 'Antalya, Konyaalt�'),
    (15, 'Ali', 'Y�lmaz', 18, 4, 275, 'Bursa, Nil�fer'),
    (16, 'Zehra', 'Demir', 11, 1, 1200, 'Adana, Seyhan'),
    (17, 'Efe', 'Kara', 6, 19, 250, '�stanbul, Be�ikta�'),
    (18, '�rem', 'Yavuz', 1, 7, 1500, 'Ankara, �ukurambar'),
    (19, 'Berkay', 'Ayd�n', 5, 12, 1000, '�zmir, Gaziemir'),
    (20, 'Elif', 'Demir', 9, 10, 500, 'Bursa, Y�ld�r�m');




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
(1, 'Mustafa Y�lmaz', '�stanbul, Kad�k�y, Ba�dat Caddesi', 'Ali Can', 'Ankara, �ankaya, K�z�lay', '2023-12-25', '2023-12-27'),
(2, 'Ay�eg�l �zt�rk', '�zmir, Bornova, Evka 3', 'Mehmet Emin', 'Adana, Seyhan, �ukurova', '2023-12-26', '2023-12-28'),
(3, 'Fatma Demir', 'Ankara, �ankaya, Balgat', 'Zeynep Kara', '�stanbul, Fatih, Emin�n�', '2023-12-27', '2023-12-29'),
(4, 'Ali Y�lmaz', '�stanbul, Beyo�lu, �stiklal Caddesi', 'Selin �zt�rk', 'Antalya, Muratpa�a, Konyaalt�', '2023-12-28', '2023-12-30'),
(5, 'Mustafa Demir', '�zmir, Konak, Alsancak', 'Ay�e Can', 'Bursa, Osmangazi, Nil�fer', '2023-12-29', '2023-12-31'),
(6, 'Fatma �zt�rk', 'Ankara, Ke�i�ren, �ncirli', 'Mehmet Y�lmaz', '�stanbul, �i�li, Mecidiyek�y', '2023-12-30', '2024-01-01'),
(7, 'Zeynep Can', '�stanbul, �sk�dar, �engelk�y', 'Ali Demir', 'Ankara, �ankaya, �ayyolu', '2023-12-31', '2024-01-02'),
(8, 'Mustafa �zt�rk', '�zmir, Kar��yaka, Bostanl�', 'Ay�e Demir', 'Adana, Seyhan, Y�re�ir', '2024-01-02', '2024-01-03'),
(9, 'Fatma Y�lmaz', 'Ankara, Yenimahalle, Demetevler', 'Mehmet Can', '�stanbul, Kad�k�y, Moda', '2024-01-03', '2024-01-04'),
(10, 'Zeynep Demir', '�stanbul, Beykoz, �ubuklu', 'Ali Can', 'Ankara, �ankaya, Bilkent', '2024-01-04', '2024-01-05'),
(11, 'Mustafa Can', '�zmir, Konak, Halkap�nar', 'Ay�e Y�lmaz', 'Adana, Seyhan, Sar��am', '2024-01-05', '2024-01-06'),
(12, 'Fatma Demir', 'Ankara, Mamak, Akdere', 'Mehmet �zt�rk', '�stanbul, Fatih, Sultanahmet', '2024-01-06', '2024-01-07'),
(13, 'Zeynep �zt�rk', '�stanbul, �mraniye, Dudullu', 'Ali Y�lmaz', 'Ankara, �ankaya, �ayyolu', '2024-01-07', '2024-01-08'),
(14, 'Ali Demir', '�stanbul, Bak�rk�y, Zeytinlik', 'Selin �zt�rk', 'Antalya, Muratpa�a, Kepez', '2024-01-08', '2024-01-09'),
(15, 'Mustafa �zt�rk', '�zmir, Kar��yaka, �ar��', 'Mehmet Y�lmaz', 'Bursa, Osmangazi, Osmangazi', '2024-01-09', '2024-01-10'),
(16, 'Fatma Y�lmaz', 'Ankara, �ankaya, K�z�lay', 'Ay�e Can', '�stanbul, Kad�k�y, Fenerbah�e', '2024-01-10', '2024-01-11'),
(17, 'Zeynep Demir', '�stanbul, �sk�dar, �mraniye', 'Ali Y�lmaz', 'Ankara, �ankaya, �ayyolu', '2024-01-11', '2024-01-12'),
(18, 'Mustafa Can', '�zmir, Konak, Halkap�nar', 'Ay�e Y�lmaz', 'Adana, Seyhan, Seyhan', '2024-01-12', '2024-01-13'),
(19, 'Fatma Demir', 'Ankara, Mamak, Akdere', 'Mehmet �zt�rk', '�stanbul, Fatih, Emin�n�', '2024-01-13', '2024-01-14'),
(20, 'Yusuf Demir', '�stanbul, �i�li, Mecidiyek�y', 'Ahmet Y�lmaz', 'Ankara, �ankaya, �ayyolu', '2024-01-14', '2024-01-15');

CREATE TABLE KuruyemisTuru (
    TurID INT PRIMARY KEY,
    TurAdi VARCHAR(50)
);

INSERT INTO KuruyemisTuru (TurID, TurAdi)
VALUES
(1, 'F�nd�k'),
(2, 'Ceviz'),
(3, 'Antep F�st���'),
(4, 'Kaju'),
(5, 'Badem'),
(6, 'Yer F�st���'),
(7, 'Kabak �ekirde�i'),
(8, 'Brezilya F�st���'),
(9, '�nci F�st���'),
(10, 'Ku� Yemi�i'),
(11, 'Kestane'),
(12, '�am F�st���'),
(13, 'Pistac�ye'),
(14, 'Leblebi'),
(15, 'Yerf�st��� Ezmesi'),
(16, 'Beyaz F�st�k'),
(17, 'Ki�ni� �ekirde�i'),
(18, 'G�l F�st���'),
(19, 'Kahve �ekirde�i'),
(20, 'Kakao �ekirde�i');



CREATE TABLE UreticiFirma (
    FirmaID INT PRIMARY KEY,
    FirmaAdi VARCHAR(50),
    Adres VARCHAR(100),
    Telefon VARCHAR(15)
);

INSERT INTO UreticiFirma (FirmaID, FirmaAdi, Adres, Telefon)
VALUES
(1, 'F�nd�k�� Mehmet', '�zmir, Bornova, Ye�ilova Mahallesi, 100. Sokak, No: 24', '+90 555 123 4567'),
(2, 'Ceviz Bah�eleri', 'Konya, Meram, Ba�ba�� Mahallesi, 30. Sokak, No: 56', '+90 532 987 6543'),
(3, 'Antep F�st�k Krallar�', 'Gaziantep, �ahinbey, K�l��arslan Mahallesi, 40. Sokak, No: 78', '+90 344 210 8932'),
(4, 'Tropikal Lezzetler', 'Mersin, Mezitli, Tece Mahallesi, 20. Sokak, No: 19', '+90 505 765 4321'),
(5, 'Badem Bah�eleri', 'Manisa, Sar�g�l, Hisar�n� Mahallesi, 50. Sokak, No: 32', '+90 236 543 1298'),
(6, 'Kabak �ekirde�i Uzmanlar�', 'Adana, Seyhan, �n�n� Mahallesi, 10. Sokak, No: 41', '+90 312 654 9870'),
(7, 'Brezilya F�st��� �thalat', '�stanbul, Kad�k�y, Fenerbah�e Mahallesi, 60. Sokak, No: 54', '+90 216 321 0987'),
(8, 'Kuruyemi� D�nyas�', 'Ankara, �ankaya, Emek Mahallesi, 30. Sokak, No: 27', '+90 313 876 5432'),
(9, 'Leblebi Krallar�', 'Sivas, Merkez, Bah�elievler Mahallesi, 40. Sokak, No: 15', '+90 461 234 7654'),
(10, 'Y�resel Kuruyemi�', 'Hatay, Antakya, Defne Mahallesi, 20. Sokak, No: 89', '+90 388 987 4321'),
(11, 'F�nd�k Bah�eleri', 'Kastamonu, Tosya, Ak�a�am Mahallesi, 100. Sokak, No: 24', '+90 555 123 4567'),
(12, 'Ceviz �reticileri Birli�i', 'Ordu, Fatsa, Tekkiraz Mahallesi, 30. Sokak, No: 56', '+90 532 987 6543'),
(13, 'Antep F�st��� �hracat�', 'Ad�yaman, Kahta, Nurhak Mahallesi, 40. Sokak, No: 78', '+90 344 210 8932'),
(14, 'Tropikal Kuruyemi�ler', 'Antalya, Alanya, Mahmutlar Mahallesi, 20. Sokak, No: 19', '+90 505 765 4321'),
(15, 'Badem Toptanc�s�', 'Afyonkarahisar, Sand�kl�, Ac�g�l Mahallesi, 50. Sokak, No: 32', '+90 236 543 1298'),
(16, 'Kabak �ekirde�i Fabrikas�', 'Kahramanmara�, Oniki�ubat, Dulkadiro�lu Mahallesi, 10. Sokak, No: 41', '+90 312 654 9870'),
(17, 'Brezilya F�st��� Yeti�tiricileri', '�zmir, �e�me, Ala�at� Mahallesi, 60. Sokak, No: 54', '+90 216 321 0987'),
(18, 'Kuruyemi� Pazar�', '�stanbul, Fatih, Emin�n� Mahallesi, 30. Sokak, No: 27', '+90 313 876 5432'),
(19, 'Leblebi D�nyas�', 'Erzurum, Yakutiye, Yakutiye Mahallesi, 40. Sokak, No: 15', '+90 461 234 7654'),
(20, 'K�t�r Kuruyemi�ler', 'Adana, Seyhan, �ukurova Mahallesi, 20. Sokak, No: 89', '+90 212 635 2114');

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
(1, 'F�nd�k', 1000, 100.00),
(2, 'Ceviz', 500, 50.00),
(3, 'Antep F�st���', 250, 200.00),
(4, 'Kaju', 100, 75.00),
(5, 'Badem', 200, 125.00),
(6, 'Yer F�st���', 500, 50.00),
(7, 'Kabak �ekirde�i', 1000, 25.00),
(8, 'Brezilya F�st���', 50, 100.00),
(9, '�nci F�st���', 200, 150.00),
(10, 'Pistac�', 250, 250.00),
(11, 'Antep F�st��� Ezmesi', 500, 150.00),
(12, 'F�nd�k Ezmesi', 1000, 125.00),
(13, 'Ceviz Ezmesi', 500, 100.00),
(14, 'Kaju Ezmesi', 250, 75.00),
(15, 'Badem Ezmesi', 100, 50.00),
(16, 'Yer F�st��� Ezmesi', 250, 25.00),
(17, 'Kabak �ekirde�i Ezmesi', 500, 15.00),
(18, 'Brezilya F�st��� Ezmesi', 100, 10.00),
(19, 'Karayemi�', 100, 100.00),
(20, 'Ku�burnu', 500, 50.00);

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



