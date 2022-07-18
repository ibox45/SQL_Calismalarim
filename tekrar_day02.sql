use tekrar;
create table ogrenciler(
id int,
isim varchar(40),
adres varchar(100),
sinav_notu int
);

insert into ogrenciler values ('120','Ali Can','Ankara','75');
insert into ogrenciler values ('121','Veli Yanan','Trabzon','85');
insert into ogrenciler values ('122','Ayşe Tan','Bursa','65');
insert into ogrenciler values ('123','Derya Canan','Ankara','95');
insert into ogrenciler values ('124','Yavuz Bal','Istanbul','80');

select * from ogrenciler;

-- select -where

select * from ogrenciler where sinav_notu>80;

select isim,adres from ogrenciler where adres='Ankara';
select * from ogrenciler where id=124;
select id,adres,sinav_notu from ogrenciler where id=121;

create table personel
(
id char(4),
isim varchar(40),
maas int
);

insert into personel values ('1001','Ali Can','75000');
insert into personel values ('1002','Veli Yanan','85000');
insert into personel values ('1003','Ayşe Tan','65000');
insert into personel values ('1004','Derya Canan','90000');
insert into personel values ('1005','Yavuz Bal','80000');
insert into personel values ('1006','Sena Beyaz','80000');

select * from personel;
select * from personel where id between 1002 and 1005;
select * from personel where id>=1002 and id<=1005;

select * from personel where isim between 'Ali Can' and 'Veli Yanan';

select * from personel where id=1001 or id=1002 or id=1004;
select * from personel where id in(1001,1002,1004);

select * from personel where maas=65000 or maas=80000;
select * from personel where maas in(65000,80000);

select * from personel where isim like 'A%';  -- A ile baslayan 
select * from personel where isim like '%N';  -- isim sütunu n ile biten
select * from personel where isim like '_E%';  -- ikinci harf e
select * from personel where isim like '_e%y%' ;  -- ikinci harf e diğer harflerinden biri y olan
select * from personel where isim not like '%C%';  -- c harfi olmayan 
select * from personel where maas like '_____'; -- maas 5 haneli listesi
select * from personel where isim like 'A_____A%';

-- regexp_like
use tekrar;

CREATE TABLE kelimeler
(
id int UNIQUE,
kelime VARCHAR(50) NOT NULL,
harf_sayisi int
);
    insert into kelimeler values (1001, 'hot', 3);
    INSERT INTO kelimeler VALUES (1002, 'hat', 3);
    INSERT INTO kelimeler VALUES (1003, 'hit', 3);
    INSERT INTO kelimeler VALUES (1004, 'hbt', 3);
    INSERT INTO kelimeler VALUES (1005, 'hct', 3);
    INSERT INTO kelimeler VALUES (1006, 'adem', 4);
    INSERT INTO kelimeler VALUES (1007, 'selim', 5);
    INSERT INTO kelimeler VALUES (1008, 'yusuf', 5);
    INSERT INTO kelimeler VALUES (1009, 'hip', 3);
    INSERT INTO kelimeler VALUES (1010, 'HOT', 3);
    INSERT INTO kelimeler VALUES (1011, 'hOt', 3);
    INSERT INTO kelimeler VALUES (1012, 'h9t', 3);
    INSERT INTO kelimeler VALUES (1013, 'hoot', 4);
    INSERT INTO kelimeler VALUES (1014, 'haaat', 5);
    INSERT INTO kelimeler VALUES (1015, 'hooooot', 5);
select * from kelimeler;

select * from kelimeler where  regexp_like (kelime, 'ot|at','c');  -- icinde ot veya at gecenleri buyuk kucuk harf duyarlı yazdık
select * from kelimeler where  regexp_like (kelime, 'ot|at','i');  -- icinde ot veya at gecenleri buyuk kucuk harf duyarsız yazdık

select * from kelimeler where regexp_like (kelime, '^ho|^hi');    -- ho veya hi ile baslayacak buyuk kucuk hafr onemsız
select * from kelimeler where regexp_like (kelime, 't$|m$');  -- t veya m ile biten

select * from kelimeler where kelime like 'h_t';   -- h ile baslayıp t ile biten 3 harfli kelime buyuk kucuk harf onemsız
select * from kelimeler where regexp_like (kelime, 'h[a-zA-Z0-9]t');   -- h ile baslayıp t ile biten 3 harfli kelime buyuk kucuk harf onemsız
select * from kelimeler where regexp_like (kelime, 'h[a-zA-Z0-9][a-zA-Z0-9]t','c');  -- h ile baslayıp t ile biten 4 harfli kelime buyuk kucuk harf duyarlı
select * from kelimeler where regexp_like (kelime, 'h[a|i]t');  -- ilk harf h, son harf t 2.harf a veya i olan 3 harfli 
select * from kelimeler where regexp_like (kelime, 'i|e|m');   -- içinde i e veya m bulunan
select * from kelimeler where regexp_like (kelime, '[iem]');   -- içinde i e veya m bulunan
select * from kelimeler where regexp_like (kelime, '^a|^s');  -- a veya s ile baslayan
select * from kelimeler where regexp_like (kelime, '^[as]');  -- a veya s ile baslayan
select * from kelimeler where regexp_like (kelime, '[o][o]');  -- içinde en az 2 adet o olacak yanyana
select * from kelimeler where regexp_like (kelime, '[o]{2}');  -- içinde en az 2 adet o olacak yanyana
select * from kelimeler where regexp_like (kelime, '[o]{4}');  -- içinde en az 4 adet o olacak  yanyana
select * from kelimeler where regexp_like (kelime, '[o][o][o][o]');  -- içinde en az 4 adet o olacak  yanyana
select * from kelimeler where regexp_like (kelime, '[sb][a-z]l[a-z][a-z]','c');   -- ilk harf s veya b 3. harf l , 5 harfli küçük harfli










































