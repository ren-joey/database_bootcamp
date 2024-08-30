# -- Case Statements

SELECT first_name,
       last_name,
       age,
       CASE
           WHEN age <= 30 THEN 'Young'
           WHEN age BETWEEN 31 AND 50 THEN 'Old'
           WHEN age > 50 THEN 'On Death\'s Door'
           END AS Age_Bracket
FROM employee_demographics
;

# -- Pay Increases and Bonus
# < 50000 = 5%
# >= 50000 = 7%
# Finance = 10% bonus

SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS 'full_name',
       department_name,
       occupation,
       salary,
       CASE
           WHEN salary < 50000 THEN salary * 1.05
           WHEN salary >= 50000 THEN salary * 1.07
           END AS 'Increased Salary',
       IF(department_name = 'Finance', salary * .1, 0) AS 'Bonus'
FROM employee_salary AS emp
LEFT OUTER JOIN parks_departments AS dep
ON emp.dept_id = dep.department_id
;