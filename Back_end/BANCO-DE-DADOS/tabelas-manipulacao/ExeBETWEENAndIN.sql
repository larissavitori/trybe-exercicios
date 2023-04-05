SELECT first_name,last_name, email FROM sakila.customer
WHERE last_name  IN ('hicks', 'crawford', 'henry', 'boyd', 'mason', 'morales','kennedy')
ORDER BY first_name ASC ;

SELECT email FROM sakila.customer
WHERE address_id BETWEEN 172 AND 176
ORDER BY email ASC ;

SELECT * FROM sakila.payment
WHERE payment_date BETWEEN '2005-05-01' AND '2005-08-01';

SELECT title, release_year,rental_duration FROM sakila.film
WHERE rental_duration BETWEEN 3 and 6 
ORDER BY replacement_cost DESC,title;

SELECT title, rating FROM sakila.film
WHERE rating IN('G', 'PG', 'PG-13')
ORDER BY title
LIMIT 500;