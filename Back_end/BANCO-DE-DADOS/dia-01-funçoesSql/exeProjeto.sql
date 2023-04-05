SELECT * FROM hr.employees;

SELECT MAX(salary) FROM hr.employees;

SELECT MAX(salary) FROM hr.employees;

SELECT MAX(salary) - MIN(salary) FROM hr.employees;

SELECT job_id, AVG(salary) AS media FROM hr.employees
GROUP BY job_id
ORDER BY media DESC ;

SELECT SUM(salary) FROM hr.employees;

SELECT
MAX(salary) AS maximo,
MIN(salary) AS minimo,
SUM(salary)AS soma,
ROUND(AVG(salary),2) AS media
FROM hr.employees;

SELECT job_id,COUNT(*) AS contagem FROM hr.employees
GROUP BY job_id
HAVING job_id = 'it_prog';


SELECT job_id, SUM(salary) AS soma_salary FROM hr.employees
GROUP BY job_id;

SELECT job_id, SUM(salary) AS soma_salary FROM hr.employees
GROUP BY job_id
HAVING job_id = 'it_prog';


SELECT job_id, AVG(salary) AS media_salary FROM hr.employees
GROUP BY job_id
HAVING job_id <> 'it_prog'
ORDER BY media_salary DESC;

SELECT department_id, COUNT(*) AS number_departamento, AVG(salary) AS salary_avg FROM hr.employees
GROUP BY department_id
HAVING number_departamento > 10;

SET SQL_SAFE_UPDATES = 0;

UPDATE hr.employees
SET phone_number = REPLACE(phone_number, '515', '777')
WHERE phone_number  LIKE '515%';


SELECT first_name,character_length(first_name) AS number FROM hr.employees
GROUP BY first_name
HAVING number  >= 8;

SELECT *
FROM hr.employees
WHERE LENGTH(first_name) >= 8;

