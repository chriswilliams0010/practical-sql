-- 3.1
-- list teachers by school by last name
SELECT last_name FROM teachers
ORDER BY school, last_name;
-- 3.2
-- find one teacher first name starts with s and earns more than 40000
SELECT last_name, first_name FROM teachers
WHERE first_name LIKE 'S%' AND salary > 40000;
-- 3.3
-- rank teachers hired since Jan 1 2010 order by highest paid to lowest
SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='teachers';
SELECT last_name, first_name FROM teachers
WHERE hire_date > '2010-01-01' ORDER BY salary DESC;