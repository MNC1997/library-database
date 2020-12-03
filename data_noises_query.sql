CREATE DATABASE data_noises;

USE data_noises;
IF OBJECT_ID('students') IS NOT NULL
	DROP TABLE students;


CREATE TABLE students(

	student_id VARCHAR(10),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	course VARCHAR(50),
	date DATE,
	time TIME(0),
	"table" VARCHAR(50),
	sound_level INT
	)

BULK INSERT students
FROM 'C:\Users\Noel\PycharmProjects\pythonProject\clean.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR ='\n'
	)


SELECT *
FROM students