# -- Unions

SELECT first_name, last_name
FROM employee_demographics
# UNION # by default, "UNION" is "UNION DISTINCT" clause, which will remove all the duplicate entries
UNION ALL # this clause will retrieve all the duplicate rows
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name, 'Old Man' AS Label # add a value "Old" in a new column named "Label"
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;