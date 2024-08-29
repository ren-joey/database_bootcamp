SELECT gender,
       AVG(age),
       GROUP_CONCAT(first_name), # concatenate all the existing value by ","
       MAX(age),
       COUNT(age) # count how many lines lie in the group
FROM employee_demographics
GROUP BY gender;

SELECT *
FROM employee_salary;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

# -- ORDER BY
# default ordering takes ASC (ascending order),
# which can be reversed by changing to DESC (descending order)
SELECT *
FROM employee_demographics
ORDER BY gender DESC, age DESC;

# -- ORDER BY position
# not recommended
SELECT *
FROM employee_demographics
ORDER BY 5, 4 DESC;