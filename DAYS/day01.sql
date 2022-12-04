--DATABASE(VERİTABANI) Oluşturma
Create database hilal;

-- DDL - DATA DEFİNİTİON LANG.
-- CREATE - TABLO OLUŞTURMA
CREATE TABLE ogrenciler
(
ogrenci_no char(7),
isim varchar(20),
soyisim varchar (25),
not_ort real, --ondalıklı sayılar için kullanılır(double gib)
kayıt_tarihi date
);


--VAROLAN TABLODAN YENİ BİR TABLO OLUŞTURMA
CREATE TABLE ogrenci_notlari
AS --benzer tablodaki başlıklarla ve data tipleriyle yeni bir tablo oluştrumak için 
--normal tablo oluştururken ki parantezler yerine AS kullanıp SELECET komutuyla almak istediğimiz verileri alırız
SELECT isim,soyisim,not_ort FROM ogrenciler


--DML DATA MANUPULATİON LANG.
--INSERT (Database'e veri ekleme)

INSERT INTO ogrenciler VALUES ('1234567','Said','İLHAN',85.5,now());
INSERT INTO ogrenciler VALUES ('1234567','Said','İLHAN',85.5,'2020-12-11');

--BİR TABLOYA PARÇALI VERİ EKLEMEK İSTERSEK

INSERT INTO ogrenciler (isim,soyisim) VALUES ('hilal','nigar');

--DQL - DATA QUERY LANG.
--SELECT

select * FROM ogrenciler;
