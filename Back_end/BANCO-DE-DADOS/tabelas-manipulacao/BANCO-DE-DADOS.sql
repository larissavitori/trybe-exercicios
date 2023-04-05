SELECT * FROM sakila.payment
WHERE amount = 0.99 OR amount = 2.99 AND staff_id = 2;

SELECT * FROM sakila.payment
WHERE (amount = 0.99 OR amount = 2.99) AND staff_id = 2;

SELECT * FROM sakila.customer
WHERE email='LEONARD.SCHOFIELD@sakilacustomer.org';

SELECT * FROM sakila.customer
WHERE active IS NOT TRUE AND store_id=2 AND first_name <> 'KENNETH'
ORDER BY first_name ASC;

SELECT * FROM sakila.film
WHERE rating <> 'NC-17' AND  replacement_cost >= 18.00
ORDER BY replacement_cost DESC, title 
 LIMIT 100;

SELECT COUNT(*) AS QUANTIDADE FROM sakila.customer
WHERE active=1 AND store_id=1;

SELECT * FROM sakila.customer
WHERE active = 0 AND store_id = 1;

SELECT title FROM sakila.film
WHERE rating = 'NC-17'
ORDER BY rental_rate, title
 LIMIT 50;

SELECT * FROM sakila.film
WHERE title LIKE '%don';

SELECT * FROM sakila.language
WHERE name BETWEEN 'Italian' AND 'Mandarin'
ORDER BY name;

SELECT rental_id, rental_date FROM sakila.rental
WHERE rental_date
BETWEEN '2005-05-27' AND '2005-07-17';

SELECT * FROM sakila.customer
WHERE customer_id IN (1,2) AND store_id=1  IS NOT NULL ;