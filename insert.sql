INSERT INTO KULLANICILAR (Ad, Soyad, Email, Sifre, KayitTarihi, Abonelik) VALUES
('Nehir',  'Yayla', 'nehir@mail.com',  '123456', '2025-01-10', 'Premium'),
('Çağla',  'Yanıkkol',  'cağla@mail.com', '123456', '2026-01-15', 'Premium'),
('Irmak', 'Yayla',  'ırmak@mail.com', '123456', '2025-03-01', 'Temel'),
('Burcu',  'Baran',  'Burcu@mail.com',  '123456', '2026-03-20', 'Premium'),
('Deren',    'Özer',  'deren@mail.com',    '123456', '2025-08-05', 'Standart');

INSERT INTO dbo.ICERIKLER (Icerik_Adi, Aciklama, YapimYili, Puan, Tur, Dil) VALUES
('The Nigth Agent','Gece ajanı',   2023, 8.8, 'Film', 'Ingilizce'),
('Harry Potter And Philosopher Stone','Büyü okuluna yolculuk',  2001, 9.5, 'Flim', 'Ingilizce'),
('Harry Potter and the Chamber of Secrets','Sırlar odası', 2002, 8.6, 'Film', 'İngilizce'),
('Harry Potter and the Prisoner of Azkaban','Hapisten çıkış', 2004, 8.0, 'Film', 'İngilizce'),
('Harry Potter and the Goblet of Fire', 'Turnuvaya katılma', 2005, 9.0, 'Film', 'Ingilizce'),
('Harry Potter and the Order of the Phoenix', 'Topluluk kurma', 2007, 8.7, 'Film', 'Ingilizce'),
('Harry Potter and the Half-Blood Prince ','Melez prensi bulma',2009, 8.6, 'Film', 'Ingilizce'),
('Harry Potter and the Deathly Hallows', 'Son savaş',2011, 8.2, 'Film', 'Ingilizce'),
('The Fellowship of the Ring ','Yüzük yolculuğu',2001, 8.7, 'Film', 'Ingilizce'),
('The Two Towers ','İki kule',2002, 8.8, 'Film', 'Ingilizce'),
('The Return of the King','kralla yüz yüze',2003, 8.7, 'Film', 'Ingilizce');

INSERT INTO dbo.OYUNCULAR (AdSoyad, DogumTarihi, Uyruk) VALUES
('Daniel Radcliffe',   '1989-11-11', 'Ingiliz'),
('Emma Watson',      '1980-03-07', 'Ingiliz'),
('Rupert Grint',        '1988-01-17', 'Ingiliz'),
('Elijah Wood ',      '1981-01-30', 'Amerikan'),
('Ian McKellen',      '1939-01-30', 'Ingiliz'),
('Gabriel Basso',  '2094-02-19', 'Amerikan');

UPDATE dbo.OYUNCULAR
SET DogumTarihi = '1994-02-19'
WHERE OyuncuID = 14;

INSERT INTO dbo.ICERIK_KATEGORI (IcerikID, KategoriID) VALUES
(11, 3), 
(12, 1), 
(13, 1), 
(14, 1), 
(15, 1), 
(16, 5), 
(17, 1),
(18, 5), 
(19, 3), 
(20, 3),
(21, 3); 

INSERT INTO dbo.ICERIK_OYUNCU (IcerikID, OyuncuID, Rol) VALUES
(11, 14, 'Peter Sutherland'),       
(12, 10, 'Hermione Granger'), 
(12, 9, 'Harry potter'),
(12, 11, 'Ron Weasley'),
(13, 11, 'Ron Weasley'),  
(13, 9, 'Harry potter'),
(13, 10, 'Hermione Granger'),
(14, 9, 'Harry Potter '),    
(14, 10, 'Hermione Granger'), 
(14, 11, 'Ron Weasley '), 
(15, 9, 'Harry Potter'), 
(15, 10, 'Hermione Granger'), 
(15, 11, 'Ron Weasley'), 
(16, 9, 'Harry Potter'),
(16, 10, 'Hermione Granger'),  
(16, 11, 'Ron Weasley'),      
(17, 9, 'Harry Potter '),     
(17, 10, 'Hermione Granger '),    
(17, 11, 'Ron Weasley '),  
(18, 9, 'Harry Potter'),  
(18, 10, 'Hermione Granger'), 
(18, 11, 'Ron Weasley'),  
(19,12 , 'Frodo Baggins'), 
(20,12 , 'Frodo Baggins'),
(21,12 , 'Frodo Baggins'),
(19,11 , 'Gandalf'), 
(20,11 , 'Gandalf'),
(21,11 , 'Gandalf');

INSERT INTO dbo.IZLEME_GECMISI (KullaniciID, IcerikID, IzlemeTarihi, IzlenenSure, ToplamSure) VALUES
(11, 21,  '2025-12-15', 130, 148),
(12, 12,  '2025-09-20', 50,  130),
(13, 13,  '2025-08-10', 148, 148),
(14, 15,  '2025-05-15', 128, 132),
(15, 20,  '2025-09-05', 70,  50);



INSERT INTO dbo.FAVORILER (KullaniciID, IcerikID, EklenmeTarihi) VALUES
(11, 11,  '2025-09-16'),
(12, 18,  '2025-11-25'),
(13, 7,  '2025-12-16'),
(14, 21,  '2025-12-06'),
(15, 12,  '2025-11-15');

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/9gk7adHYe3mA792nJTu846rWwXX.jpg' WHERE [IcerikID] = 1;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/ztkUQv63Mz18635ywzoKh2o52Zg.jpg' WHERE [IcerikID] = 2;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/7IiTTjFWZ0wsaXAY1jRjTyCcWQx.jpg' WHERE [IcerikID] = 3;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/d5NXSklXj0tx6EF2LXi3tniZ65h.jpg' WHERE [IcerikID] = 4;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/qJ2tWw36n4zRmdNGH25uR9uR8lT.jpg' WHERE [IcerikID] = 5;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/49WJfeN0mhmm69e9MZJ0B6vzl2Y.jpg' WHERE [IcerikID] = 6;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/gEU2QniE6E7vNIvJLM3i3JCFz54.jpg' WHERE [IcerikID] = 7;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/reEMJA1wscUpjR7uRBUI1HG7a6T.jpg' WHERE [IcerikID] = 8;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/f89U3wz6j26s9eEXua864N6R9w4.jpg' WHERE [IcerikID] = 9;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/apbrVmOvks7hx977whgkxGG5jTM.jpg' WHERE [IcerikID] = 10;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/z0JJD5v186u5a7w0g65tyj65c4V.jpg' WHERE [IcerikID] = 11;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/wuMc08IPKXIQR7VnLJstFT1XwqI.jpg' WHERE [IcerikID] = 12;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/sdEOH0lm2w7616yfs4qp7gVsiuH.jpg' WHERE [IcerikID] = 13;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/aWxW23ty36txpt2J781Ju6j1a7g.jpg' WHERE [IcerikID] = 14;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/fECBtjrsZhJSjdh94Z4JBuIcttF.jpg' WHERE [IcerikID] = 15;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/0aGoaf1Vv4uapn5zFkQfB4n0A28.jpg' WHERE [IcerikID] = 16;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/z7uo98N1VwMIeR3JyCbx2nMN0v2.jpg' WHERE [IcerikID] = 17;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/c54bF0J0wkg25vStRz86Bsrgn9J.jpg' WHERE [IcerikID] = 18;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/6oom5QDN1A6DY1LV5RdsVnUkf6q.jpg' WHERE [IcerikID] = 19;
UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[ICERIKLER] SET [ThumbnailURL] = 'https://image.tmdb.org/t/p/w500/5VTN0JCOILb2BMbsfIb2mJD5qaa.jpg' WHERE [IcerikID] = 20;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'Oscar ödüllü Amerikalı oyuncu ve yapımcı. Titanic, Inception ve The Revenant gibi kült filmlerdeki performanslarıyla tanınır.' 
WHERE [OyuncuID] = 1;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'Breaking Bad dizisindeki Walter White rolüyle efsaneleşen, çok sayıda Emmy ve Altın Küre ödülü sahibi Amerikalı aktör.' 
WHERE [OyuncuID] = 2;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'Parasite ve Memories of Murder gibi dünyaca ünlü yapımlarda başrol oynayan, Güney Kore sinemasının en saygın aktörlerinden biri.' 
WHERE [OyuncuID] = 3;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'Batman (The Dark Knight) üçlemesiyle tanınan, canlandırdığı roller için girdiği fiziksel değişimler ve üstün metot oyunculuğuyla bilinen Oscar ödüllü İngiliz aktör.' 
WHERE [OyuncuID] = 4;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'Stranger Things dizisindeki Eleven rolüyle genç yaşta dünya çapında üne kavuşan ve Enola Holmes gibi yapımlarla başarısını sürdüren İngiliz oyuncu.' 
WHERE [OyuncuID] = 5;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'The Matrix serisinde Neo, John Wick serisinde ise John Wick karakterlerine hayat vererek Hollywood''un en sevilen aksiyon kahramanlarından biri haline gelen Kanadalı aktör.' 
WHERE [OyuncuID] = 6;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'Dallas Buyers Club filmiyle Oscar kazanan, Interstellar filmi ve True Detective dizisindeki derinlikli performanslarıyla takdir toplayan Amerikalı oyuncu.' 
WHERE [OyuncuID] = 7;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'La Casa de Papel (Money Heist) dizisinde canlandırdığı ''Profesör'' karakteriyle dünya çapında büyük bir hayran kitlesi edinen İspanyol aktör.' 
WHERE [OyuncuID] = 8;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'Harry Potter serisinde canlandırdığı başrol karakteriyle çocuk yaşta küresel bir fenomene dönüşen İngiliz sinema ve tiyatro oyuncusu.' 
WHERE [OyuncuID] = 9;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'Harry Potter serisinde Hermione Granger karakteriyle ünlenen, oyunculuk kariyerinin yanı sıra BM iyi niyet elçisi olarak kadın hakları savunuculuğu yapan İngiliz aktris.' 
WHERE [OyuncuID] = 10;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'Harry Potter film serisinde canlandırdığı sempatik Ron Weasley karakteriyle tanınan, tiyatro, sinema ve televizyon yapımlarında aktif rol alan İngiliz aktör.' 
WHERE [OyuncuID] = 11;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'Yüzüklerin Efendisi (The Lord of the Rings) üçlemesinde canlandırdığı Frodo Baggins karakteriyle sinema tarihine geçen Amerikalı oyuncu ve yapımcı.' 
WHERE [OyuncuID] = 12;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'Yüzüklerin Efendisi serisinde Gandalf ve X-Men serisinde Magneto rolleriyle efsaneleşen, tiyatro ve sinemanın en saygın ve ödüllü İngiliz aktörlerinden biri.' 
WHERE [OyuncuID] = 13;

UPDATE [DİZİ VE FİLM İZLEME PLATFORMU].[dbo].[OYUNCULAR] 
SET [Biyografi] = 'The Night Agent dizisinde canlandırdığı ajan Peter Sutherland rolüyle büyük çıkış yakalayan, Super 8 ve Hillbilly Elegy gibi filmlerle tanınan Amerikalı oyuncu.' 
WHERE [OyuncuID] = 14;

INSERT INTO KULLANICILAR (Ad, Soyad, Email, Sifre, KayitTarihi, Abonelik) VALUES
('Can', 'Yılmaz', 'can@mail.com', '123456', '2025-02-18', 'Standart'),
('Merve', 'Demir', 'merve@mail.com', '123456', '2025-04-12', 'Premium'),
('Gökhan', 'Kaya', 'gokhan@mail.com', '123456', '2025-05-19', 'Temel'),
('Seda', 'Şahin', 'seda@mail.com', '123456', '2025-06-05', 'Standart'),
('Hakan', 'Bulut', 'hakan@mail.com', '123456', '2025-07-28', 'Premium'),
('Gizem', 'Öztürk', 'gizem@mail.com', '123456', '2025-08-14', 'Temel'),
('Oğuz', 'Çelik', 'oguz@mail.com', '123456', '2025-09-02', 'Premium'),
('Büşra', 'Yıldız', 'busra@mail.com', '123456', '2025-09-27', 'Standart'),
('Serkan', 'Aydın', 'serkan@mail.com', '123456', '2025-10-15', 'Premium'),
('Ezgi', 'Güneş', 'ezgi@mail.com', '123456', '2025-11-08', 'Temel'),
('Emre', 'Arslan', 'emre@mail.com', '123456', '2025-11-22', 'Standart'),
('Kübra', 'Koç', 'kubra@mail.com', '123456', '2025-12-04', 'Premium'),
('Tolga', 'Özer', 'tolga@mail.com', '123456', '2025-12-18', 'Temel'),
('Gamze', 'Kurt', 'gamze@mail.com', '123456', '2026-01-05', 'Premium'),
('Kaan', 'Baran', 'kaan@mail.com', '123456', '2026-01-22', 'Standart');