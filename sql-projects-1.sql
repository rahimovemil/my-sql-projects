SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary AS kohne_maas, salary * 1.2 AS yeni_maas
FROM hr.employees
WHERE salary * 1.2 = salary + 1500;

SELECT CONCAT(first_name, ' ', last_name) AS full_name, job_id
FROM hr.employees
WHERE job_id IN ('AD_PRESS', 'IT_PROG', 'ST_CLERK') AND first_name LIKE '%e';

SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary
FROM hr.employees
WHERE first_name LIKE 'S%' AND salary BETWEEN 2000 AND 50000
ORDER BY salary ASC;


SELECT UPPER(CONCAT(first_name, ' ', last_name)) AS full_name, hire_date
FROM hr.employees
WHERE hire_date > '2003-06-17';


SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary, phone_number
FROM hr.employees
WHERE salary > 5000 AND phone_number LIKE '%9'
ORDER BY salary ASC;


SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary AS old_salary, salary + 500 AS new_salary, department_id
FROM hr.employees
WHERE department_id IN (50, 60, 80);

SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary AS old_salary, salary * 0.9 AS new_salary
FROM hr.employees
WHERE first_name = 'Steven';

SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary AS old_salary, salary * 0.8 AS new_salary, manager_id
FROM hr.employees
WHERE manager_id = 100 AND salary > 10000;

SELECT CONCAT(first_name, ' is ', job_id) AS description
FROM hr.employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary * 12 AS yearly_salary
FROM hr.employees
WHERE salary * 12 > 30000;
