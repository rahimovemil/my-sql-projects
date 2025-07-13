SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM hr.employees
WHERE first_name NOT LIKE 'B%' AND last_name NOT LIKE '%b';

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM hr.employees
WHERE first_name LIKE 'J%' AND first_name LIKE '%n';

SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary, hire_date, job_id
FROM hr.employees
WHERE (salary BETWEEN 5000 AND 10000)
   OR (hire_date BETWEEN '2003-01-01' AND '2007-12-31'
       AND first_name LIKE '%a%'
       AND job_id IN ('IT_PROG', 'ST_CLERK'))
   OR job_id = 'SA_REP';


SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary, department_id
FROM hr.employees
WHERE (department_id IN (50, 60) OR department_id = 70)
  AND last_name LIKE '%s'
  AND salary > 6000;


SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary, job_id, hire_date
FROM hr.employees
WHERE salary > 5000
   OR (job_id = 'IT_PROG' AND hire_date BETWEEN '2003-01-01' AND '2007-12-31');


SELECT CONCAT(first_name, ' ', last_name) AS full_name, job_id
FROM hr.employees
WHERE job_id NOT IN ('PU_MAN', 'ST_CLERK');

SELECT CONCAT(first_name, ' ', last_name) AS full_name, manager_id
FROM hr.employees
WHERE manager_id IS NULL;


SELECT CONCAT(first_name, ' ', last_name) AS full_name, salary AS old_salary,
       CASE
           WHEN commission_pct IS NOT NULL THEN salary + 10
           ELSE salary - 300
       END AS adjusted_salary
FROM hr.employees;

SELECT DATE_FORMAT(hire_date, '%d %M %Y') AS formatted_hire_date
FROM hr.employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name, hire_date
FROM hr.employees
WHERE hire_date > '2005-12-31'
ORDER BY hire_date ASC;
