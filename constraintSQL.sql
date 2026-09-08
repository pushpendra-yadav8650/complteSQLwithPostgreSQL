CREATE TABLE random(
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
created_at DATE DEFAULT NOW(),
age INT CHECK (age >= 18)
);

INSERT INTO random (name,email,age)
VALUES ('pushpendra yadav','pushpendrayadav@gmail.com',32);

INSERT INTO random (name,email,age)
VALUES ('Anjali','anjali@gmail.com',32);

SELECT * FROM random;