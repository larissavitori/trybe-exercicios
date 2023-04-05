-- INNER JOIN 
-- 1
SELECT a.actor_id, a.first_name, f.film_id
FROM sakila.actor AS a
INNER JOIN sakila.film_actor AS f ON a.actor_id = f.actor_id;

-- 2
SELECT s.first_name, s.last_name, a.address
FROM sakila.staff AS s
INNER JOIN sakila.address AS a ON s.address_id = a.address_id;
-- 3
SELECT
    c.customer_id,
    c.first_name,
    c.email,
    c.address_id,
    a.address
FROM sakila.customer AS c
INNER JOIN sakila.address AS a ON c.address_id = a.address_id
ORDER BY c.first_name DESC LIMIT 100;
-- 4 
SELECT * FROM sakila.customer;
SELECT * FROM sakila.address;
SELECT c.first_name, c.email, a.address, a.district
FROM sakila.customer AS c
INNER JOIN sakila.address AS a
ON c.address_id = a.address_id
WHERE a.district='California' AND c.first_name LIKE '%rene%';
 
 -- 5 
 SELECT c.first_name, c.last_name, COUNT(r.rental_id) AS `quantidade de filmes alugados`
FROM sakila.customer AS c
INNER JOIN sakila.rental AS r 
ON r.customer_id = c.customer_id
WHERE c.active = 1
GROUP BY c.customer_id
ORDER BY
    c.first_name DESC,
    c.last_name DESC;
 
-- 6
SELECT * FROM sakila.payment;
SELECT * FROM sakila.staff;
SELECT 
 s.first_name,
 s.last_name,
AVG(p.amount) AS 'MEDIA'
FROM sakila.payment AS p
INNER JOIN sakila.staff AS s
ON s.staff_id = p.staff_id
WHERE YEAR(p.payment_date) = '2006'
GROUP BY  s.first_name, s.last_name;

-- 7
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film_actor;
SELECT * FROM sakila.film;
SELECT a.actor_id, a.first_name, f.film_id , f.title
 FROM sakila.actor AS a
 INNER JOIN  sakila.film_actor AS fil_ac
 ON a.actor_id = fil_ac.actor_id
 INNER JOIN sakila.film AS f
 ON f.film_id = fil_ac.film_id;
 