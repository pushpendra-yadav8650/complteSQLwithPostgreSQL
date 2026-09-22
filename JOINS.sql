CREATE TABLE studentinfo(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);
INSERT INTO studentinfo(name) VALUES
('pushpendra'),
('ROhan')
CREATE TABLE marks(
	mark_id SERIAL PRIMARY KEY,
	student_id INT,
	subject VARCHAR(50),
	marks INT,
	FOREIGN KEY (student_id) REFERENCES studentinfo(student_id)
);
SELECT * FROM studentinfo;
z