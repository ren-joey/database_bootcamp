SELECT *
FROM employee_demographics
;

# PEMDAS operators
# the order of operations for arithmetic or math within SQL
SELECT first_name,
       last_name,
       birth_date,
       age,
       pow((age + 2) * 6, 2)  # PEMDAS
FROM employee_demographics
;

# distinct specifier can select only unique values
SELECT distinct gender
FROM employee_demographics
;

# the expression can find unique entries depending on the first_name and gender combination.
SELECT distinct first_name, gender
FROM employee_demographics
;