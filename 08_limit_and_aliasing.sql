# -- Limit

SELECT *
FROM employee_demographics
ORDER BY age DESC
# LIMIT 3 # select first 3 entries
LIMIT 2, 4 # start next one to the 2nd entry and select 4 items
;

# -- Aliasing

# SELECT gender, AVG(age) AS avg_age
SELECT gender, AVG(age) avg_age # AS is optional, if we take AS away, this expression will still work
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;