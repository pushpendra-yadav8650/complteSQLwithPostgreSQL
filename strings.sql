CREATE TABLE strings(
code char(5),
email varchar(100),
bio text 
);
INSERT INTO strings(code,email,bio)
VALUES ('ab1','pushpendra@gmail.com','Hy i am AI developer ');

-- INSERT INTO strings(code,email,bio)
-- VALUES ('ab1we2','pushpendra@gmail.com','Hy i am AI developer '); return error 
-- because char length 5 
SELECT * FROM strings;