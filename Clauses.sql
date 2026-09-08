-- Q1. Show the name and price of all products.
select name,price from storeproduct;
-- Q2. Show all products where the category is 'Electronics'.
SELECT * FROM storeproduct WHERE category='Electronic';
-- Q3. Group products by category. Show each category once.
SELECT category FROM storeproduct GROUP BY category;
-- Q4. Show categories that have more than 1 product. (Use after GROUP BY)
SELECT category ,count(*) FROM storeproduct GROUP BY category HAVING count(*) > 1;
-- Q5. Show all products sorted by price in ascending order.

SELECT * FROM  storeproduct ORDER BY price ;
SELECT * FROM  storeproduct ORDER BY price DESC;

-- Q6. Show only the first 3 products from the table.
SELECT * FROM storeproduct limit 3;
-- Q7. Show product name as "Item_Name" and price as "Item_Price".
SELECT name as item_name ,price as item_price FROM storeproduct;
-- Q8. Show all the unique categories from the products table.
SELECT DISTINCT category FROM storeproduct;




select * from storeproduct;
