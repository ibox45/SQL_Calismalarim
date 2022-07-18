create database tekrar;
-- create database : database olusturmak icin kullandık.
-- yorum amaclı yazıldı


/*
javadaki gibi yorum amaclı kullanım
*/

use tekrar;
-- birden fazla database var ise hangı databse'i kullancagımızı bu komutla söylüyoruz

-- tablo olusturmak
create table student
(
id varchar(4),
name varchar(30),
age int
);

-- veri girisi
insert into student values ('1000','Ali Can','25');
insert into student values ('1001','Veli Yanan','30');
insert into student values ('1002','Ayşe Tan','35');
insert into student values ('1003','Derya Canan','40');

select * from student;
-- student tablosundaki herseyi getirir
select name from student;   -- studentdaki nameleri getirdi
select id from student;   -- id'leri getirdi
select id, name from student;  -- id ve nameleri getirdi.
select id, name, age from student;  -- id ve nameleri ve age'leri getirdi.

drop table student;  -- student tablosunu siler.








