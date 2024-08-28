select *
from employee_salary
where salary >= 50000;

select *
from employee_demographics
where gender != 'Female'
  and birth_date > '1985-01-01'; # date-format

# Logical operators: and, or, not, etc.

select *
from employee_demographics
where (first_name = 'Leslie' and age = 44) or age > 50;

# Like statement
# % = anything
# _ = any character

select *
from employee_demographics
where first_name like '%er%' or first_name like 'a___%' or birth_date like '1987%';