# -- Subqueries

SELECT *
FROM employee_demographics
WHERE employee_id IN (SELECT employee_id
                      FROM employee_salary
                      WHERE dept_id = 1)
;

# or using "LEFT JOIN" clause
SELECT *
FROM employee_demographics
WHERE employee_id IN (SELECT employee_id
                      FROM employee_salary AS sal
                               LEFT JOIN parks_departments AS dep
                                         ON sal.dept_id = dep.department_id
                      WHERE LOWER(dep.department_name) = 'parks and recreation')
;

SELECT first_name,
       salary,
       (SELECT AVG(salary)
        FROM employee_salary) AS avg_salary
FROM employee_salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT AVG(`MAX(age)`)
FROM (SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
      FROM employee_demographics
      GROUP BY gender) AS agg_table
;

SELECT AVG(max_age)
FROM (SELECT gender,
             AVG(age) AS avg_age,
             MAX(age) AS max_age,
             MIN(age) AS min_age,
             COUNT(age)
      FROM employee_demographics
      GROUP BY gender) AS agg_table
;

SELECT CONCAT(first_name, ' ', last_name), salary, avg_salary, (salary - avg_salary) AS discrepency
FROM employee_salary
LEFT JOIN (SELECT dept_id, AVG(salary) AS avg_salary
           FROM employee_salary
           GROUP BY dept_id) AS dept_avg_table
ON dept_avg_table.dept_id = employee_salary.dept_id
;