select * from Parks_and_Recreation.employee_demographics;

# PEMDAS operators
# the order of operations for arithmetic or math within SQL
select first_name,
       last_name,
       birth_date,
       age,
       pow((age + 2) * 6, 2)  # PEMDAS
from employee_demographics;

# distinct specifier can select only unique values
select distinct gender
from employee_demographics;

# the expression can find unique entries depending on the first_name and gender combination.
select distinct first_name, gender
from employee_demographics;