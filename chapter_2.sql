----------------------------------------------
-- Chapter 2 is about data exploration --
----------------------------------------------

-- Basic SELECT Syntax --
SELECT * FROM teachers;


-- Select specific columns --
SELECT last_name, first_name, salary FROM teachers;


-- Using DISTINCT to find unique values --
SELECT DISTINCT school
FROM teachers;


-- Sorting data with ORDER BY --
SELECT first_name, last_name, salary
FROM teachers
ORDER BY salary DESC;


-- More insight with ORDER BY --
-- we can get a list of teachers grouped --
-- by the most recently hired teachers first --
SELECT last_name, school, hire_date
FROM teachers
ORDER BY school ASC, hire_date DESC;


-- Filtering rows with WHERE --
SELECT last_name, first_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';
-- WHERE first_name LIKE ('Sam%') --
-- WHERE first_name ILIKE ('sam%') --


-- Using LIKE and ILIKE with WHERE --
-- (%) Percent sign -> a wildcard mathcing one or more characters
-- (_) Underscore -> a wildcard matching just one character

-- The main difference between LIKE and ILIKE
-- is that LIKE operator is case sensitive, while
-- ILIKE is case insensitive
SELECT first_name
FROM teachers
WHERE first_name LIKE 'sam%';

SELECT first_name
FROM teachers
WHERE first_name ILIKE 'sam%';


-- Combining operators with AND and OR --
SELECT *
FROM teachers
WHERE school = 'Myers Middle School'
	AND salary < 40000;

SELECT *
FROM teachers
WHERE last_name ILIKE 'cole'
	OR last_name = 'Bush';

SELECT *
FROM teachers
WHERE school ILIKE 'f.d%'
AND (salary < 38000 OR salary > 40000);



-- ################################################################### --
-- ############################## DIY ################################ --
-- ################################################################### --
-- 1. Write a query that lists the schools in alphabetical order along --
-- with teachers ordered by last name A-Z. --
SELECT school, first_name, last_name
FROM teachers
ORDER BY school ASC, last_name ASC;


-- 2. Write a query that finds the one teacher whose first name starts --
-- with the letter S and who earns more than $40000. --
SELECT *
FROM teachers
WHERE first_name ILIKE 's%'
AND salary > 40000;


-- 3. Rank teachers hired since January 1, 2010, ordered by highest --
-- paid to lowest. --
SELECT *
FROM teachers
WHERE hire_date > date('2010-01-01')
ORDER BY salary DESC;













