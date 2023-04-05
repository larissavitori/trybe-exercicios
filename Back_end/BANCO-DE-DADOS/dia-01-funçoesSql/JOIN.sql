-- LEFT JOIN
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM sakila.customer AS c
LEFT JOIN sakila.actor AS a
ON c.last_name = a.last_name
ORDER BY c.last_name;

-- RIGHT JOIN
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM sakila.customer AS c
RIGHT JOIN sakila.actor AS a
ON c.last_name = a.last_name
ORDER BY c.last_name;

-- INNER JOIN 
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM sakila.customer AS c
INNER JOIN sakila.actor AS a
ON c.last_name = a.last_name
ORDER BY c.last_name;


SELECT
    CONCAT(Employee.first_name, " ", Employee.last_name) AS "Nome da Pessoa Colaboradora",
    CONCAT(Manager.first_name, " ", Manager.last_name) AS "Nome Gerente"
FROM
    hr.employees AS Employee
INNER JOIN
    hr.employees AS Manager ON Employee.manager_id = Manager.employee_id;
    
    
    -- Para fixar:
SELECT * FROM hr.employees;

SELECT
    CONCAT(employee.first_name, " ", employee.last_name) AS "Nome Pessoa Colaboradora",
    CONCAT(manager.first_name, " ", manager.last_name) AS "Nome Gerente"
FROM
    hr.employees AS employee
INNER JOIN
    hr.employees AS manager ON employee.manager_id = manager.employee_id
WHERE
    employee.department_id <> manager.department_id;
    
    -- Exiba o Nome e a quantidade de pessoas lideradas de cada pessoa gerente. SELF JOIN NA MESMA TABELA
    SELECT
    CONCAT(manager.first_name, " ", manager.last_name) AS "Nome Gerente",
    COUNT(*)
FROM
    hr.employees AS employee
INNER JOIN
    hr.employees AS manager ON employee.manager_id = manager.employee_id -- RENOMEAR A MESMA TABELA PARA PEGAR DADOS.
GROUP BY
    manager.employee_id;
    
    
    