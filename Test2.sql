SELECT * FROM storeproduct;

-- Q1. Display the name and price of the cheapest product in the entire table.
SELECT  name, price FROM storeproduct WHERE price = (SELECT MIN(price) FROM storeproduct);

-- Q2.Find the average price of products that belong to the 'Home & Kitchen' or 'Fitness' category
SELECT category, ROUND(AVG(price),2) AS avg_price FROM storeproduct WHERE category in('Electronic','Accessorie') GROUP BY category;

-- Q3. Show product names and stock quantity where the product is available, stock is more than 50, and price is not equal to ₹299
SELECT name,stock_quantity FROM storeproduct WHERE is_available=TRUE and stock_quantity >= 10 and price != 299;

-- Q4. Find the most expensive product in each category (name and price).
SELECT category , MAX(price) AS max_price FROM storeproduct  GROUP BY category;

-- Q5. Show all unique categories in uppercase, sorted in descending order.
SELECT DISTINCT  UPPER(category) AS category_upper FROM storeproduct ORDER BY category_upper DESC;
