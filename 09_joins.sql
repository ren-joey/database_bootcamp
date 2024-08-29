# -- INNER JOIN

SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

SELECT *
FROM employee_demographics
INNER JOIN employee_salary # by default, JOIN is INNER JOIN
    # employee_id should exist in both table, or the entry will be excluded
    ON employee_salary.employee_id = employee_demographics.employee_id
;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;

# -- OUTER JOIN
# LEFT JOIN - take EVERYTHING from the left table, in this case, which is employee_demographics
# RIGHT JOIN - take EVERYTHING from the right table, in this case, which is employee_salary

SELECT *
FROM employee_demographics AS dem
# LEFT OUTER JOIN employee_salary AS sal # by default, LEFT and RIGHT are OUTER JOIN
RIGHT JOIN employee_salary AS sal # remove OUTER clause would be the same
    ON dem.employee_id = sal.employee_id
;

# -- SELF JOIN

SELECT emp1.employee_id AS emp_santa,
       emp1.first_name AS first_name_santa,
       emp1.last_name AS last_name_santa,
       emp2.employee_id AS emp_santa,
       emp2.first_name AS first_name_santa,
       emp2.last_name AS last_name_santa
FROM employee_salary emp1
JOIN employee_salary emp2
    ON emp1.employee_id + 1 = emp2.employee_id
;

# -- random ordering
SELECT *
FROM employee_salary
ORDER BY RAND()
;

# -- Joining multiple tables together

SELECT *
FROM parks_departments
;

SELECT dem.employee_id, age, occupation, dept_id, department_id, department_name
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
    ON dept_id = department_id
;