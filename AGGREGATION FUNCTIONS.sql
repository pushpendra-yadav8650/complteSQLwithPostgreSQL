SELECT count(product_id) FROM storeproduct;
SELECT * FROM storeproduct;


SELECT sum(price) FROM storeproduct WHERE category ='Electronic';

SELECT ROUND(AVG(price),2) FROM storeproduct;

SELECT MIN(price) FROM storeproduct WHERE category ='Electronic';

SELECT MAX(price) FROM storeproduct WHERE category ='Electronic';