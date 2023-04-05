-- exercicio de fixação do conteudo 
SELECT * FROM sakila.film;

SELECT title,film_id,
IF(title='ACE GOLDFINGER', 'Já assisti a esse filme','Não conheço o filme' ) 
AS 'conheço o filme?' 
FROM sakila.film;

SELECT title,rating,
 CASE
        WHEN rating = 'G' THEN 'Livre para todos'
        WHEN rating = 'PG' THEN 'Não recomendado para menores de 10 anos'
        WHEN rating = 'PG-13' THEN 'Não recomendado para menores de 13 anos'
        WHEN rating = 'R' THEN 'Não recomendado para menores de 17 anos'
        ELSE 'Proibido para menores de idade'
    END AS 'público-alvo'
    FROM sakila.film;
    
    -- Desafios com DIV e MOD
SELECT IF( 15 MOD 2 = 0 , 'Par','Ímpar' ) AS 'Par ou Ímpar';
SELECT  220 DIV 12;
SELECT IF(220 MOD 12 = 0, 'NÃO', CONCAT('SIM, ', 220 MOD 12));

-- PARA FIXAR 
SELECT FLOOR(15 + (RAND()*5));
SELECT ROUND(15.7515971, 5);
SELECT FLOOR(39.494);
SELECT CEIL(85.234);

-- PARA FIXAR DATAS 
SELECT DATEDIFF('2030-01-20',CURRENT_DATE()); -- OU NOW();
SELECT TIMEDIFF('10:25:45' , '11:00:00');

-- PARA FIXAR AGREGAÇÃ
SELECT AVG(length) AS 'Média de Duração',
MIN(length) AS 'Duração Mínima' ,
MAX(length) AS 'Duração Máxima' ,
SUM(length) AS 'Tempo de Exibição Total' ,
COUNT(*) AS 'Filmes Registrados' 
 FROM sakila.film;
 
 -- Praticando GROUP BY
SELECT *  FROM sakila.customer;

SELECT active, COUNT(active) FROM sakila.customer
GROUP BY active;

SELECT store_id, active, COUNT(*) FROM sakila.customer
GROUP BY active,store_id;

SELECT AVG(rental_duration) AS avg_rental_duration, rating
FROM sakila.film
GROUP BY rating
ORDER BY avg_rental_duration DESC;

SELECT district, COUNT(*) FROM sakila.address
GROUP BY district
ORDER BY  COUNT(*) DESC; 


SELECT rating, AVG(length) AS duracao_media
FROM sakila.film
GROUP BY rating
HAVING duracao_media BETWEEN 115.0 AND 121.50
ORDER BY duracao_media DESC ;


SELECT rating, SUM(replacement_cost) AS total_custo
FROM sakila.film
GROUP by rating
HAVING total_custo >  3950.50
ORDER BY total_custo ;