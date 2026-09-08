CREATE TABLE numbers(
Id serial,
age smallint,
price numeric(4,2),
rating Real
);

INSERT INTO  numbers(age,price,rating)
VALUES (23,45.43,12.5),
	 (25,40.43,10.5);

SELECT * FROM numbers;