# -- Window Functions

# without window functions
SELECT gender, AVG(salary) avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender
;

# -- this expression will get an average salary without any grouping
# SELECT DISTINCT gender, AVG(salary) OVER()
# -- this will get an average grouped by gender
SELECT dem.first_name, dem.last_name, gender,
       AVG(salary) OVER(PARTITION BY gender) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
;

# using "ORDER BY" clause in window function will make it add the salary one by one
# based on each entry ordering, this process called "Rolling Total"
SELECT dem.first_name, dem.last_name, gender, salary,
       SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
;

SELECT dem.first_name, dem.last_name, gender, salary,
       ROW_NUMBER() OVER (PARTITION BY gender ORDER BY salary DESC) AS gender_id,
       RANK() OVER (PARTITION BY gender ORDER BY salary DESC) AS rank_num,
       DENSE_RANK() OVER (PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
;

