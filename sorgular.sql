-- kulanıcılar ve içerikleri listeleme
SELECT * FROM dbo.KULLANICILAR;

SELECT * FROM dbo.ICERIKLER;

-- film,dizi ve tüm kullanıcıları listeleme
SELECT * FROM dbo.ICERIKLER WHERE Tur = 'Film';

SELECT * FROM dbo.ICERIKLER WHERE Tur = 'Dizi';

-- Puanı 8.5 üzerindeki içerikler
SELECT Icerik_Adi, Puan FROM dbo.ICERIKLER WHERE Puan > 8.5;

-- TOP 3,MAX,MİN,AVG puanlı içerikler listeleme
SELECT TOP 3 Icerik_Adi, Puan FROM dbo.ICERIKLER ORDER BY Puan DESC;

SELECT MIN(Puan) AS EnDusukPuan FROM dbo.ICERIKLER;

SELECT MAX(Puan) AS EnYuksekPuan FROM dbo.ICERIKLER;

SELECT AVG(Puan) AS OrtalamaPuan FROM dbo.ICERIKLER;

-- Tür'e ve Dil'e göre içerik sayısı 
SELECT Tur, COUNT(*) AS Adet FROM dbo.ICERIKLER GROUP BY Tur;

SELECT Dil, COUNT(*) AS Adet FROM dbo.ICERIKLER GROUP BY Dil ORDER BY Adet DESC;

SELECT Icerik_Adi, YapimYili FROM dbo.ICERIKLER WHERE YapimYili > 2010;

-- İçerik adında 'the' geçen içerikler 
SELECT Icerik_Adi FROM dbo.ICERIKLER WHERE Icerik_Adi LIKE '%the%';

-- Kullanıcı tam adı 
SELECT KullaniciID, Ad + ' ' + Soyad AS TamAd, Email FROM dbo.KULLANICILAR;

SELECT UPPER(Soyad) AS SoyadBuyuk FROM dbo.KULLANICILAR ORDER BY SoyadBuyuk asc;

-- içerik adı uzunluğu 
SELECT Icerik_Adi, LEN(Icerik_Adi) AS Uzunluk FROM dbo.ICERIKLER ORDER BY Uzunluk DESC;

-- Premium kullanıcılar
SELECT Ad, Soyad, Email FROM dbo.KULLANICILAR WHERE Abonelik = 'Premium';

-- Kayıt tarihi 2024 olan kullanıcılar 
SELECT Ad, Soyad, KayitTarihi FROM dbo.KULLANICILAR WHERE YEAR(KayitTarihi) = 2024;

-- Kullanıcı bilgileri ve izlediği içerikler 
SELECT K.Ad, K.Soyad, I.Icerik_Adi, IG.IzlemeTarihi
FROM dbo.IZLEME_GECMISI IG
INNER JOIN dbo.KULLANICILAR K ON IG.KullaniciID = K.KullaniciID
INNER JOIN dbo.ICERIKLER I ON IG.IcerikID = I.IcerikID;

--izleme geçmişi tablosun da içeriğin adı kaç kez geçmiş say ve sutuna izlemesayısı adı ver
SELECT I.Icerik_Adi, COUNT(*) AS IzlenmeSayisi
FROM dbo.IZLEME_GECMISI IG
INNER JOIN dbo.ICERIKLER I ON IG.IcerikID = I.IcerikID
GROUP BY I.Icerik_Adi
ORDER BY IzlenmeSayisi DESC;

-- Kullanıcıların favori listesi
SELECT K.Ad, K.Soyad, I.Icerik_Adi, F.EklenmeTarihi
FROM dbo.FAVORILER F
INNER JOIN dbo.KULLANICILAR K ON F.KullaniciID = K.KullaniciID
INNER JOIN dbo.ICERIKLER I ON F.IcerikID = I.IcerikID;

--Her kullanıcının toplam izleme süresi
SELECT K.Ad, K.Soyad, SUM(IG.IzlenenSure) AS ToplamDakika
FROM dbo.IZLEME_GECMISI IG
INNER JOIN dbo.KULLANICILAR K ON IG.KullaniciID = K.KullaniciID
GROUP BY K.Ad, K.Soyad ORDER BY ToplamDakika DESC;

--İçeriklerin kategorileri
SELECT I.Icerik_Adi, KAT.kategoriAdi
FROM dbo.ICERIKLER I
INNER JOIN dbo.ICERIK_KATEGORI IK ON I.IcerikID = IK.IcerikID
INNER JOIN dbo.KATEGORILER KAT ON IK.KategoriID = KAT.KategoriID;

--Oyuncuların oynadığı film ve roller
SELECT O.AdSoyad, I.Icerik_Adi, IO.Rol
FROM dbo.OYUNCULAR O
INNER JOIN dbo.ICERIK_OYUNCU IO ON O.OyuncuID = IO.OyuncuID
INNER JOIN dbo.ICERIKLER I ON IO.IcerikID = I.IcerikID;

--En çok favorilenen içerikler
SELECT I.Icerik_Adi, COUNT(*) AS FavoriSayisi
FROM dbo.FAVORILER F
INNER JOIN dbo.ICERIKLER I ON F.IcerikID = I.IcerikID
GROUP BY I.Icerik_Adi ORDER BY FavoriSayisi DESC;

--Hiç favorisi olmayan kullanıcı
SELECT K.Ad, K.Soyad
FROM dbo.KULLANICILAR K
LEFT JOIN dbo.FAVORILER F ON K.KullaniciID = F.KullaniciID
WHERE F.FavoriID IS NULL;

--Abonelik türlerine göre kullanıcı sayısı
SELECT Abonelik, COUNT(*) AS KisiSayisi
FROM dbo.KULLANICILAR GROUP BY Abonelik;

--Yıla göre içerik sayısı
SELECT YapimYili, COUNT(*) AS Adet
FROM dbo.ICERIKLER GROUP BY YapimYili ORDER BY YapimYili;

--İzleme tamamlanma yüzdesi float veri tipine çevirmek için cast kullanılır
SELECT K.Ad, I.Icerik_Adi,
       CAST((CAST(IG.IzlenenSure AS decimal) / IG.ToplamSure * 100) AS decimal(5,2)) AS TamamlanmaYuzdesi
FROM dbo.IZLEME_GECMISI IG
INNER JOIN dbo.KULLANICILAR K ON IG.KullaniciID = K.KullaniciID
INNER JOIN dbo.ICERIKLER I ON IG.IcerikID = I.IcerikID;

--ortalama puan 
select (AVG(puan)) as Ort_puan FROM dbo.ICERIKLER;

--Ortalama puanın üzerindeki içerikler
SELECT Icerik_Adi, Puan FROM dbo.ICERIKLER
WHERE Puan > (SELECT AVG(Puan) FROM dbo.ICERIKLER);


-- Puan etiketi 
SELECT Icerik_Adi, Puan,
    CASE
        WHEN Puan >= 9.0 THEN 'Efsane'
        WHEN Puan >= 8.5 THEN 'Cok Iyi'
        ELSE 'Iyi'
    END AS PuanEtiketi
FROM dbo.ICERIKLER;

--Her oyuncunun kaç içerikte oynadığı
SELECT O.AdSoyad, COUNT(*) AS OynadigiIcerik
FROM dbo.OYUNCULAR O
INNER JOIN dbo.ICERIK_OYUNCU IO ON O.OyuncuID = IO.OyuncuID
GROUP BY O.AdSoyad ORDER BY OynadigiIcerik DESC;

--Korece içerikler
SELECT Icerik_Adi, Puan FROM dbo.ICERIKLER WHERE Dil = 'Korece';

--içerik adının ilk 10 karakteri
SELECT Icerik_Adi, SUBSTRING(Icerik_Adi, 1, 10) AS KisaAd FROM dbo.ICERIKLER;

--Kayıt tarihini formatla 
SELECT Ad, FORMAT(KayitTarihi, 'dd/MM/yyyy') AS TarihFormatli FROM dbo.KULLANICILAR;

-- 9.0 üzeri puanlı diziler
SELECT Icerik_Adi, Puan FROM dbo.ICERIKLER WHERE Tur = 'Dizi' AND Puan >= 9.0;

-- Birden fazla kategorisi olan içerikler 
SELECT I.Icerik_Adi, COUNT(IK.KategoriID) AS KategoriSayisi
FROM dbo.ICERIKLER I
INNER JOIN dbo.ICERIK_KATEGORI IK ON I.IcerikID = IK.IcerikID
GROUP BY I.Icerik_Adi HAVING COUNT(IK.KategoriID) > 1;

-- EXISTS kullanımı
SELECT Ad, Soyad FROM dbo.KULLANICILAR K
WHERE EXISTS (
    SELECT 1 FROM dbo.FAVORILER F WHERE F.KullaniciID = K.KullaniciID
);

-- Email küçük harf 
SELECT Ad, LOWER(Email) AS EmailKucuk FROM dbo.KULLANICILAR;

--İçerik sayısı 1den fazla olan yıllar
SELECT YapimYili, COUNT(*) AS Adet
FROM dbo.ICERIKLER
GROUP BY YapimYili HAVING COUNT(*) > 1;