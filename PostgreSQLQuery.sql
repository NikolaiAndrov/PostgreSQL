-- Create table person
CREATE TABLE person (
	id INT,
	first_name    VARCHAR(50),
	last_name     VARCHAR(50),
	gender 	   	  VARCHAR(7),
	date_of_birth DATE
);

-- Drop/Delete table person
DROP TABLE person;

-- Create table person with constraints
CREATE TABLE person (
	id 			  BIGSERIAL NOT NULL PRIMARY KEY,
	first_name    VARCHAR(50) NOT NULL,
	last_name 	  VARCHAR(50) NOT NULL,
	gender 		  VARCHAR(7) NOT NULL,
	date_of_birth DATE NOT NULL,
	email 		  VARCHAR(150)
);

-- Insert into table person
INSERT INTO person(first_name, last_name, gender, date_of_birth)
VALUES('Anne', 'Smith', 'Female', '1988-01-09');

-- Insert into table person with email
INSERT INTO person(first_name, last_name, gender, date_of_birth, email)
VALUES('Jake', 'Jones', 'Male', '1988-01-09', 'jjones@gmail.com');

-- Insert into table person multiple records
INSERT INTO person(first_name, last_name, gender, date_of_birth, email)
VALUES
	('Niki', 'And', 'Male', '1988-01-09', 'niki@gmail.com'),
	('Viki', 'And', 'Female', '1988-01-09', 'viki@gmail.com'),
	('Piki', 'And', 'Male', '1988-01-09', NULL);

-- Add a new column into person table
ALTER TABLE person
ADD COLUMN  country_of_birth VARCHAR(50) NOT NULL DEFAULT 'Unknown';

-- DROP Default 
ALTER TABLE  person
ALTER COLUMN country_of_birth DROP DEFAULT;

-- ALTER column
ALTER TABLE  person
ALTER COLUMN gender TYPE VARCHAR(15);

-- Order by 
SELECT * 
FROM 	 person
ORDER BY date_of_birth;

-- Order by multiple columns
SELECT * 
FROM 	 person
ORDER BY first_name, last_name;

-- Distinct
SELECT DISTINCT country_of_birth
FROM   			person
ORDER BY 		country_of_birth;

-- WHERE filter
SELECT *
FROM   person
WHERE  email IS NOT NULL;

-- WHERE, OR, AND
SELECT *
FROM   person
WHERE  email IS NOT NULL AND (country_of_birth = 'Bulgaria' OR country_of_birth = 'Unknown');

-- LIMIT
SELECT *
FROM   person
LIMIT  10;

-- LIMIT, OFFSET
SELECT *
FROM   person
OFFSET 5 
LIMIT  5;

-- FETCH
SELECT 		*
FROM   		person
OFFSET 		5 
FETCH FIRST 5 ROW ONLY;

-- IN
SELECT   *
FROM 	 person
WHERE 	 country_of_birth IN ('Bulgaria', 'Italy', 'Spain')
ORDER BY country_of_birth;

-- BETWEEN
SELECT   *
FROM 	 person
WHERE 	 date_of_birth
BETWEEN  DATE '1990-01-01' AND '2026-01-01'
ORDER BY date_of_birth DESC;

-- LIKE
SELECT *
FROM   person
WHERE  email
LIKE   '%.com';

SELECT *
FROM   person
WHERE  email
LIKE   '____@%.com';

-- ILIKE
SELECT *
FROM   person
WHERE  country_of_birth
ILIKE  'b%';

-- GROUP BY
SELECT      country_of_birth,   
COUNT(*) AS "Count of countries"
FROM   	    person
GROUP BY    country_of_birth
ORDER BY	country_of_birth;

SELECT      country_of_birth,   
COUNT(*) AS "Count of countries"
FROM   	    person
GROUP BY    country_of_birth
ORDER BY	"Count of countries" DESC;

-- HAVING
SELECT 			  country_of_birth,
COUNT(*) AS 	  "Count of countries"
FROM 			  person
GROUP BY 		  country_of_birth
HAVING COUNT(*) > 10
ORDER BY		  "Count of countries" DESC;

-- Create new table
CREATE TABLE car (
	id 	  BIGSERIAL NOT NULL PRIMARY KEY,
	make  VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(15, 2)
);







