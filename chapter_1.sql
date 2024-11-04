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

-- ################################################################### --
-- ############################## DIY ################################ --
-- ################################################################### --
-- try to create a catalog of all animals at your local zoo. --
-- one table to track the kinds of animals in the collection --
-- another table to track the specifics on each animal --------

-- create databse: zoo --
CREATE DATABASE zoo;


-- create a table: animal_collections --
CREATE TABLE animal_collections (
	id bigserial,
	kind varchar(50),
	population numeric
);

-- insert into animal_collections --
INSERT INTO animal_collections (kind, population)
VALUES ('lion', 2),
('zebra', 1),
('giraffe', 1),
('shark', 1)


-- create a table: animals --
CREATE TABLE animals (
	id bigserial,
	name varchar(50),
	sex varchar(10),
	kind varchar(50),
	mass numeric,
	diet varchar(50),
	dob date,
	doa date
);

-- insert into animals
INSERT INTO ANIMALS (name, sex, kind, mass, diet, dob, doa)
VALUES ('Alex', 'MALE', 'lion', 150, 'carnivore', '2010-03-01', '2010-03-15'),
('Nairobi', 'FEMALE', 'lion', 110, 'carnivore', '2015-11-11', '2015-12-01'),
('Merlo', 'MALE', 'zebra', 130, 'herbivore', '2022-10-12', '2023-01-01'),
('Kyle', 'MALE', 'giraffe', 211, 'herbivore', '2023-02-19', '2023-04-15'),
('Dexter', 'MALE', 'shark', 300, 'carnivore', '2018-09-01', '2018-12-12');
