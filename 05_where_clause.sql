SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_demographics
WHERE gender != 'Female'
  and birth_date > '1985-01-01'; # date-format

# Logical operators: and, or, not, etc.

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 50;

# Like statement
# % = anything
# _ = any character

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%' OR first_name LIKE 'a___%' OR birth_date LIKE '1987%';