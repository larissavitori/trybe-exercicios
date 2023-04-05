-- aula join 
-- inner join 

SELECT * FROM sakila.actor;
SELECT * FROM sakila.film_actor;

SELECT act.actor_id, act.first_name, film.actor_id 
 FROM sakila.actor AS act
 INNER JOIN sakila.film_actor AS film
 ON act.actor_id =  film.actor_id;
 
  SELECT * FROM sakila.staff;
   SELECT * FROM sakila.address;
   
 SELECT staf.first_name, staf.last_name, addr.address
 FROM sakila.staff AS staf
 INNER JOIN sakila.address AS addr
 ON staf.address_id =  addr.address_id;
 
 
 SELECT * FROM sakila.customer;
 
  SELECT cos.first_name, addr.address, cos.email, cos.address_id, cos.customer_id
 FROM sakila.customer AS cos
 INNER JOIN sakila.address AS addr
 ON cos.address_id =  addr.address_id
 LIMIT 100;
 -- questao 5 falta a 4,6 e 7
  SELECT * FROM sakila.rental;
   SELECT cos.first_name, 
   cos.last_name, 
   COUNT(rent.rental_id) AS `quantidade de filmes alugados`
 FROM sakila.customer AS cos
 INNER JOIN sakila.rental AS rent
 ON cos.customer_id =  rent.customer_id
  WHERE cos.active = 1
  GROUP BY
    cos.customer_id
 ORDER BY cos.first_name, cos.last_name DESC;
 
 
 
