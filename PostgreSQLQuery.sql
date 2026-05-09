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
	('Piki', 'And', 'Male', '1988-01-09');



















