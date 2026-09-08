-- Create database for this command
Create Database my_new_db;
-- Create table for insert data 
Create Table students(
student_id INT,
name char(50),
age INT,
grade char(1)
);
-- Insert data in this student table
INSERT INTO students(student_id,name,age,grade)
VALUES (1,'Pushpendra',23,'A'),
		(2,'Rohan',23,'B'),
		(3,'Riya',24,'A');

SELECT * FROM students;

SELECT name FROM students;

SELECT name FROM students WHERE age = 24;

-- Update student data from this command
UPDATE students
SET age = 26
WHERE name='Pushpendra';

UPDATE students 
SET student_id = 4
WHERE name='Pushpendra';
UPDATE students 
SET student_id = 1
WHERE name='Rohan';

SELECT * FROM students;

DELETE from students 
WHERE name='Pushpendra';

DELETE from students 
WHERE name='Rohan';