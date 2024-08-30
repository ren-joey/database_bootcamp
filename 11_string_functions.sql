# -- String Functions

# LENGTH
SELECT LENGTH('sky')
;

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;

# UPPER & LOWER
SELECT UPPER('sky')
UNION ALL
SELECT LOWER('sky')
;

SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

# TRIM
SELECT 'NO TRIM' AS 'TYPES_OF_TRIM', '       sky         ' AS TYPES_OF_TRIM
UNION ALL
SELECT 'TRIM ALL', TRIM('       sky         ')
UNION ALL
SELECT 'LEFT TRIM', LTRIM('       sky         ')
UNION ALL
SELECT 'RIGHT TRIM', RTRIM('       sky         ')
;

# LEFT, RIGHT function
# will only collect first N characters from left or right, N in the case below is 2
SELECT first_name,
       LEFT(first_name, 2),
       RIGHT(first_name, 2),
       SUBSTRING(first_name, 3, 2), # started from index 3, and collect next 2 characters
       birth_date,
       SUBSTRING(birth_date, 6, 2) AS 'Month'
FROM employee_demographics
;

SELECT first_name,
       REPLACE(first_name, 'a', 'z')
FROM employee_demographics
;

SELECT LOCATE('x', 'Alexander');

SELECT first_name,
       LOCATE('An', first_name)
FROM employee_demographics
;

SELECT first_name,
       last_name,
       CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employee_demographics
;