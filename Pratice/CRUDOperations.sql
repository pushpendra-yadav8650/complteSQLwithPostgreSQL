--create a studens table 
CREATE TABLE students(
	student_id INT,
	name VARCHAR(50),
	age INT,
	grade CHAR(1)
);
--Insert student data 
INSERT INTO students(student_id, name,age,grade)
VALUES (1, 'Kapil', 23, 'A'),
(2, 'Rahul', 21, 'B'),
(3, 'Amit', 22, 'A'),
(4, 'Priya', 20, 'A'),
(5, 'Neha', 21, 'B'),
(6, 'Rohit', 23, 'C'),
(7, 'Anjali', 22, 'A'),
(8, 'Vikas', 24, 'B'),
(9, 'Pooja', 20, 'A'),
(10, 'Arjun', 21, 'B'),
(11, 'Karan', 23, 'C'),
(12, 'Sneha', 22, 'A'),
(13, 'Nikhil', 24, 'B'),
(14, 'Riya', 21, 'A'),
(15, 'Manish', 23, 'C'),
(16, 'Simran', 20, 'B'),
(17, 'Aditya', 22, 'A'),
(18, 'Shivam', 21, 'B'),
(19, 'Komal', 23, 'A'),
(20, 'Deepak', 24, 'C'),
(21, 'Nisha', 20, 'B'),
(22, 'Varun', 22, 'A'),
(23, 'Akash', 23, 'B'),
(24, 'Kavita', 21, 'A'),
(25, 'Saurabh', 24, 'C'),
(26, 'Tanya', 20, 'B'),
(27, 'Mohit', 22, 'A'),
(28, 'Isha', 21, 'B'),
(29, 'Gaurav', 23, 'C'),
(30, 'Muskan', 20, 'A'),
(31, 'Yash', 22, 'B'),
(32, 'Divya', 21, 'A'),
(33, 'Varsha', 23, 'B'),
(34, 'Harsh', 24, 'C'),
(35, 'Sakshi', 20, 'A'),
(36, 'Abhishek', 22, 'B'),
(37, 'Payal', 21, 'A'),
(38, 'Rajat', 23, 'C'),
(39, 'Ayesha', 20, 'B'),
(40, 'Tarun', 24, 'A'),
(41, 'Preeti', 22, 'B'),
(42, 'Naveen', 21, 'C'),
(43, 'Shreya', 23, 'A'),
(44, 'Sumit', 20, 'B'),
(45, 'Pallavi', 22, 'A'),
(46, 'Varun', 24, 'C'),
(47, 'Megha', 21, 'B'),
(48, 'Rakesh', 23, 'A'),
(49, 'Jyoti', 20, 'B'),
(50, 'Ankit', 22, 'A');

--Read value from the table 
SELECT * FROM students;
SELECT student_id , name FROM students;
SELECT * FROM students WHERE grade ='A';

-- Update the value 
UPDATE students
SET age = 23
WHERE name ='Ankit';

UPDATE students
SET grade = 'C'
WHERE name='Ankit';

--Delete data from the table
DELETE FROM students
WHERE name = 'Ankit';
--Delete data by id 
DELETE FROM students
WHERE student_id = 33;


INSERT INTO students(student_id, name,age,grade)
VALUES (51,'rahulsi',23,'');