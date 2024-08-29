SELECT gender,
       AVG(age)
FROM employee_demographics
# WHERE AVG(age) > 40   # incorrect,
                        # because AVG(age) will only occur after specific entries have been grouped
                        # at the moment, AVG(age) has not been calculated yet
GROUP BY gender
HAVING AVG(age) > 40    # instead, you can use this expression and place it after the "GROUP BY" clause
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING  AVG(salary) > 75000     # if you are using aggregate function to filter the result
                                # you should always use "HAVING" clause
;