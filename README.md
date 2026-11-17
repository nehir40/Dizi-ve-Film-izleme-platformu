# Dizi ve Film Izleme Platformu

Netflix benzeri bir dizi ve film izleme platformu icin tasarlanmis SQL veritabani projesi.

## Veritabani Yapisi

### Tablolar

| Tablo            | Aciklama                              |
|------------------|---------------------------------------|
| KULLANICILAR     | Kullanici bilgileri ve abonelik turleri |
| ICERIKLER        | Film ve dizi bilgileri                |
| IZLEME_GECMISI   | Kullanicilarin izleme gecmisi         |
| FAVORILER        | Kullanicilarin favori icerikleri      |

### Abonelik Turleri
- Temel
- Standart
- Premium

## Ozellikler

- Foreign Key kisitlamalariyla iliskilel veritabani tasarimi
- Check kisitlamalari (puan 0-10 arasi, icerik turu Film/Dizi)
- Unique kisitlamasi ile e-posta tekrari engelleme
- Trigger destegi ile otomatik islemler
- Ornek veri setleri (insert.sql)
- Hazir sorgular (sorgular.sql)

## Teknolojiler

- SQL Server - Veritabani yonetim sistemi
- T-SQL - Sorgu dili

## Kurulum

1. SQL Server Management Studio (SSMS) ac
2. Sirasiyla su dosyalari calistir:
   - forgein.sql  -> Tablolari ve kisitlamalari olusturur
   - insert.sql   -> Ornek verileri ekler
   - trigger.sql  -> Tetikleyicileri tanimlar
   - sorgular.sql -> Hazir sorgulari calistirir

## Dosya Yapisi

Dizi-ve-Film-izleme-platformu/
├── forgein.sql      # Tablo iliskileri ve kisitlamalar
├── insert.sql       # Ornek veriler
├── trigger.sql      # Tetikleyiciler
└── sorgular.sql     # Cesitli SQL sorgulari
