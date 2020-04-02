-- tablolar arasi basit sorgulu iliskiler
-- tabloIsmi.alanIsmi = tabloIsmi.alanIsmi

select * from ogrenci;
select * from bolum;

select ono, adi, soyadi, badi 
from ogrenci, bolum
where ogrenci.bid = bolum.bid;

select * from ogretmen;
select * from bolum;

select oid, adi, soyadi, aciklama As "bolumu", eposta
from ogretmen, bolum
where bolum.bid = ogretmen.bid;

select * from ogrenci;
select * from ogrenci_ders;
select * from ders;

select ogrenci.ono, adi, soyadi, dadi, dkodu, kredi, notu
from ogrenci, ogrenci_ders, ders
where ogrenci.ono = ogrenci_ders.ono
AND ders.did = ogrenci_ders.did;

select * from ders;
select * from ogretmen_ders;
select * from ogretmen;

select ogretmen.oid, adi, soyadi, dadi, dkodu, kredi, dyeri
from ders, ogretmen_ders, ogretmen
where ders.did = ogretmen_ders.did
AND ogretmen.oid = ogretmen_ders.oid;
