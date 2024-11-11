----------------------------------------------
-- Chapter 3 covers mainly data types --
----------------------------------------------
-- To see three character types in action: --
CREATE TABLE char_data_types (
  varchar_column varchar(10),
  char_column char(10),
  text_column text
);


INSERT INTO char_data_types
VALUES
  ('abc', 'abc', 'abc'),
  ('defghi', 'defghi', 'defghi');


COPY char_data_types TO '/Users/isik/Desktop/study/practical-sql/typetest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');


-- Auto-Incrementing Integers --
CREATE TABLE people (
  id serial,
  person_name varchar(100)
);
