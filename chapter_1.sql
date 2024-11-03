----------------------------------------------
-- Chapter 1 includes basic stuff about SQL --
------ Installing Postgres App & pgsql4 ------
----- Creating a database, table, and etc ----
----------------------------------------------



-- initialize database: analysis --
CREATE DATABASE analysis;

-- creating a table: teachers --
CREATE TABLE teachers (
  id bigserial,
  first_name varchar(25),
  last_name varchar(50),
  school varchar(50),
  hire_date date,
  salary numeric
);

-- inserting data into the teaches table --
INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500); 
-- comic about ISO format date: https://xkcd.com/1179/ -- 


-- DIY --
-- try to create a catalog of all animals at your local zoo. --
-- one table to track the kinds of animals in the collection --
-- another table to track the specifics on each animal --------

