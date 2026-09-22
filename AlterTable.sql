CREATE TABLE students(
studnet_id SERIAL PRIMARY KEY,
name VARCHAR(100),
age BIGINT
);
INSERT INTO students (name, age) VALUES
('Rahul', 20),
('Priya', 21),
('Aman', 19),
('Neha', 22),
('Rohit', 20),
('Sneha', 21),
('Vikas', 23),
('Anjali', 19),
('Arjun', 22),
('Pooja', 20),
('Karan', 21),
('Simran', 23),
('Aditya', 19),
('Kavya', 22),
('Nikhil', 20),
('Riya', 21),
('Saurabh', 24),
('Megha', 19),
('Varun', 22),
('Isha', 20);

--ALTER 
--1.Add new column
ALTER TABLE students ADD COLUMN email VARCHAR(100) DEFAULT 'not provided';
--2. Remove a column
ALTER TABLE students DROP COLUMN email;
--3. Rename column
ALTER TABLE students RENAME COLUMN name to full_name;
--4.Change datatype of column
AlTER TABLE students ALTER COLUMN age type smallint;

--5. SET default value 
ALTER TABLE students ALTER COLUMN age SET  DEFAULT 18;
--6.Remove a default va

SELECT * FROM students;