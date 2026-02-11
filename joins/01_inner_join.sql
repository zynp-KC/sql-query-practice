-- ==========================================
-- Assignment 1- JOINS INNER JOIN
-- Database: dvdrental
-- ==========================================
-- 1) city tablosu ile country tablosunda bulunan şehir(city) ve
--ülke(country) isimlerini birlikte görebileceğimiz INNER JOIN
--sorgusunu yazınız.
SELECT city.city,
    country.country
FROM city
    INNER JOIN country ON city.country_id = country.country_id;
-- 2) customer tablosu ile payment tablosunda bulunan payment_id
--ile customer tablosunda bulunan first_name ve last_name isimlerini
--birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT payment_id,
    first_name,
    last_name
FROM customer
    INNER JOIN payment ON customer.customer_id = payment.customer.id;
-- 3) customer tablosu ile rental tablosunda bulunan rental_id
--ile customer tablosundaki first_name ve last_name isimlerini
--birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT rental.rental_id,
    customer.first_name,
    customer.last_name
FROM rental
    INNER JOIN customer ON rental.customer_id = customer.customer_id;