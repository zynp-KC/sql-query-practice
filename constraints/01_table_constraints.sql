-- ==========================================
-- Assignment 1- TABLE & CONSTRAINTS
-- Database: test
-- ==========================================
-- 1) test veritabanınızda employee isimli sütun bilgileri id(INTEGER),
-- name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo
-- oluşturalım.
CREATE TABLE employee (
    id INTEGER,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);
-- 2) oluşturduğunuz employee tablosuna 'Mackaroo' servisini kullanarak
-- 50 adet veri ekleyelim.
insert into employee (id, name, email, birthday)
values (
        1,
        'Zsazsa Francescuzzi',
        'zfrancescuzzi0@artisteer.com',
        '1952-02-14'
    );
insert into employee (id, name, email, birthday)
values (
        2,
        'Stan Verbrugghen',
        'sverbrugghen1@buzzfeed.com',
        '1919-05-19'
    );
insert into employee (id, name, email, birthday)
values (
        3,
        'Ericha Johantges',
        'ejohantges2@admin.ch',
        '1954-04-14'
    );
-- 3) sütunların her birine göre diğer sütunları güncelleyecek 5 adet 
-- UPDATE işlemi yapalım.
-------------------------
UPDATE employee
SET email = 'yeni@mail.com'
WHERE id = 1
RETURNING *;
-------------------------
UPDATE employee
SET name = 'Stan YYYYY'
WHERE name LIKE 'S%'
RETURNING *;
-------------------------
UPDATE employee
SET name = 'Dogum gunu guncellendi'
WHERE birthday = '1965-09-08'
RETURNING *;
-------------------------
UPDATE employee
SET name = 'Ali Veli'
WHERE email = 'gmatovic5@w3.org'
RETURNING *;
-------------------------
UPDATE employee
SET name = 'Toplu Güncelleme',
    email = 'toplu@gmail.com'
WHERE id = 3;
-- 4) sütunların her birine göre ilgili satırı silecek 5 adet DELETE 
-- işlemi yapalım.
-------------------------
DELETE FROM employee
WHERE id = 6,
    -------------------------
DELETE FROM employee
WHERE name = 'Toplu Guncelleme';
-------------------------
DELETE FROM employee
WHERE birthday = '1965-09-08';
-------------------------
DELETE FROM employee
WHERE email = 'yeni@gmail.com';
-------------------------
DELETE FROM employee
WHERE id > 25;