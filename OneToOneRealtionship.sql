--Create first table 

CREATE TABLE students(
student_id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL
);
--Insert value
INSERT INTO students (name) VALUES 
	('Rohan'),
	('Radha'),
	('Krishna');
--Create second table 
CREATE TABLE student_profiles(
student_id INT PRIMARY KEY,
address  TEXT,
age INT,
phone VARCHAR(15)
);

INSERT INTO student_profiles(student_id,address,age,phone) VALUES 
	(1,'DLEHI INDIA',23,9893432332),
	(2,'MUMBAI INDIA',26,9993432332),
	(3,'NOIDA INDIA',27,9899432332);

ALTER TABLE student_profiles
ADD CONSTRAINT fk_student_id
FOREIGN KEY (student_id)
REFERENCES students(student_id); --connect two tables students and student_profile table 
	
SELECT * FROM student_profiles;
SELECT * FROM students;


--ONE to ONE Realationship and join this table 
SELECT 
	s.student_id,
	s.name,
	sp.address,
	sp.age,
	sp.phone
FROM students s
JOIN student_profiles sp
ON s.student_id = sp.student_id;