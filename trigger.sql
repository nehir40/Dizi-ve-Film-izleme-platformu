
-- TRIGGER: Favori eklenince log tut
CREATE TABLE FAVORI_LOG (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    KullaniciID INT,
    IcerikID INT,
    Islem VARCHAR(20),
    IslemTarihi DATETIME DEFAULT GETDATE()
);
GO

CREATE TRIGGER trg_FavoriEklendi
ON dbo.FAVORILER
AFTER INSERT
AS
BEGIN
    INSERT INTO FAVORI_LOG (KullaniciID, IcerikID, Islem)
    SELECT KullaniciID, IcerikID, 'EKLENDI'
    FROM inserted;
END;
GO


-- Trigger test (favori ekle, log tablosuna bakl)
INSERT INTO dbo.FAVORILER (KullaniciID, IcerikID) VALUES (1, 2);
SELECT * FROM FAVORI_LOG;