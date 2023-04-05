SELECT UCASE(title) FROM sakila.film LIMIT 10;
SELECT LCASE(title) FROM sakila.film LIMIT 10;
SELECT REPLACE(title, 'ACADEMY', 'FOO') FROM sakila.film WHERE film_id = 1;
SELECT LEFT(title, 7) FROM sakila.film WHERE film_id = 1;
SELECT RIGHT(title, 8) FROM sakila.film WHERE film_id = 1;
SELECT CHAR_LENGTH(title) FROM sakila.film WHERE film_id = 1;
SELECT SUBSTRING(title, 5, 2) FROM sakila.film WHERE film_id = 1;
SELECT SUBSTRING(title, 5) FROM sakila.film WHERE film_id = 1;

SELECT UCASE('trybe');
SELECT REPLACE('Você já ouviu falar do DuckDuckGo?','DuckDuckGo', 'Google');
SELECT LENGTH('Uma frase qualquer');
SELECT SUBSTRING('A linguagem JavaScript está entre as mais usadas', 13,10);
 SELECT LCASE('RUA NORTE 1500, SÃO PAULO, BRASIL');


SELECT first_name, IF(active, 'Cliente Ativo', 'Cliente Inativo') AS status
FROM sakila.customer
LIMIT 20;

SELECT rental_duration - rental_rate FROM sakila.film LIMIT 10;
SELECT 10 DIV 3; 
SELECT 10 / 3; 
SELECT 10 MOD 3;

-- Para gerar um valor aleatório entre 0 e 1:
SELECT RAND();

-- Para gerar um valor entre 7 e 13:
SELECT ROUND(7 + (RAND() * 6));
-- O cálculo que é feito é o seguinte: (7 + (0.0 a 1.0 * 6))

SELECT DATEDIFF('2020-01-01', '2020-01-31');

-- -01:00:00, ou seja, há 1 hora de diferença entre os horários
SELECT TIMEDIFF('08:30:10', '09:30:10');

SELECT YEAR(CURRENT_DATE()); -- retorna o ano atual
SELECT HOUR(NOW()); -- retorna a hora atual

SELECT rating, rental_rate, COUNT(1) as total FROM sakila.film
GROUP BY rating, rental_rate 
ORDER BY rating, rental_rate;