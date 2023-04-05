SELECT first_name FROM sakila.actor;
SELECT * FROM sakila.actor;
SELECT COUNT(actor_id) FROM sakila.actor;
SELECT * FROM sakila.actor LIMIT 13 OFFSET 3;
SELECT actor_id, first_name FROM sakila.actor
ORDER BY first_name ASC;

SELECT actor_id FROM sakila.actor 
 ORDER BY actor_id DESC LIMIT 5 ;
 
 SELECT CONCAT(first_name, '' , last_name) AS full_name, 
       CONCAT(actor_id, '-', last_update, ',' ) AS location 
 FROM sakila.actor;

 SELECT * FROM sakila.address
 WHERE address2=''; 
 -- <> ou null
 
 SELECT * FROM sakila.address
 ORDER BY city_id >= 3 DESC, address_id ASC; 
 
 SELECT * FROM PURCHASE
 WHERE NOTES= PURCHASE_GENERETE >= 30 AND <= 39;
 
 SELECT payment_date FROM sakila.payment
WHERE DATE(payment_date)= '2006-04-26';
 
SELECT payment_id FROM sakila.payment
WHERE payment_id= 1 OR payment_id=3;

SELECT payment_id FROM sakila.payment
WHERE payment_id >= 1 AND payment_id <= 3;


SELECT HOUR(rental_date) AS submitted_hour
FROM sakila.rental;

SELECT payment_date FROM sakila.payment
WHERE payment_date BETWEEN '2006-01-26 00:00:00' AND '2006-03-31 23:59:59';

SELECT payment_id FROM sakila.payment
WHERE payment_id IN (1,3,5,7);

SELECT * FROM sakila.payment
WHERE payment_id= 3 AND staff_id=2;

SELECT COUNT(EMPLOUER_ID=5 OR EMPLOUER_ID=6 AND SNIPPER_ID=2) AS ORDER_COUNT FROM Scientists;

