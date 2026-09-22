/* WHAT IS A VIEW IN SQL?
“
A view is a virtual table based on a SQL query.
It does not store actual data, but shows results when
accessed — just like a saved query */

SELECT * FROM storeproduct;

---CREATE VIEW
--1. Get only available main product 
CREATE VIEW main_product AS
SELECT 
	name , sku_code,price, category
FROM 
storeproduct 
WHERE price > 1000 ;

--2. View for Low Stock Item.
CREATE VIEW low_stocks AS 
SELECT
	name,category,stock_quantity
FROM storeproduct 
	WHERE stock_quantity  < 30;

SELECT * FROM low_stocks;

DROP VIEW low_stock;