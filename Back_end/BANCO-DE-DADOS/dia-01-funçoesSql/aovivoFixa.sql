-- EXE AULA AO VIVO 

SELECT * FROM sakila.rental;
SELECT * FROM sakila.film;
-- Retorne o id de customer e a média de dias que uma pessoa usuária permanece com o produto alugado.
SELECT customer_id, AVG(DATEDIFF(return_date, rental_date)) AS 'media_dias_alugado'
FROM sakila.rental
GROUP BY customer_id;

-- Retorne o tempo máximo, mínimo e a média de tempo dos filmes lançados em 2006 por rating.
SELECT 
	rating,
    AVG(length) AS media_duracao,
    SUM(length) AS Duracao_filmes,
    MIN(length) AS menor_duracao,
    MAX(length) AS maior_duracao
FROM  sakila.film
WHERE release_year = '2006'
GROUP BY rating;

-- Quantas pessoas usuárias temos por cidade.
SELECT city_id,COUNT(*) FROM sakila.address
GROUP BY city_id;

-- Qual o valor total (amount) recebido dentro de cada mês.
SELECT * FROM sakila.payment;
SELECT 
  SUM(amount), YEAR(payment_date), MONTH(payment_date)
FROM
  sakila.payment
GROUP BY YEAR(payment_date) , MONTH(payment_date);

-- Retorne a quantidade de itens alugados pelo preço (amount) que sejam menores ou iguais a 1.99.
SELECT amount, COUNT(amount) FROM sakila.payment
	GROUP BY amount HAVING amount <= 1.99;
    
--  Qual valor arrecadado (soma) por valor de produto que tem mais saída por mês e ano?
SELECT 
  amount,
  SUM(amount) AS `soma`,
  YEAR(payment_date),
  MONTH(payment_date)
FROM
  sakila.payment
GROUP BY amount , YEAR(payment_date) , MONTH(payment_date)
ORDER BY `soma` DESC;

