SELECT * FROM storeproduct;

SELECT name ,price,
CASE when (price > 1000) then 'Expensive'
	 when price between 500 and 1000 then 'Modrate'
	 ELse 'cheap'
End as price_tag FROM storeproduct;

-- ADD a new column in this table 
ALTER TABLE storeproduct
ADD COLUMN price_tag TEXT;

--Update the value price_tag column
UPDATE storeproduct
SET price_tag = 
CASE 
	WHEN price > 1000 THEN 'Expansive'
	WHEN price between 500 and 1000 then 'Modrate'
	ELse 'Cheap'
END;

-- '''Q-1 is available
-- column you have boolean true and false show case a new
-- column to with in_stock and out of stock'''

--Add new column in this table in_stock
ALTER TABLE storeproduct
ADD COLUMN in_stock boolean;

--Update column name 
ALTER TABLE storeproduct
	RENAME COLUMN in_stock to stock;
--Update Datatype
ALTER TABLE storeproduct
ALTER COLUMN stock TYPE VARCHAR(100);
--Update Value in this Column in_stock
UPDATE storeproduct
SET stock =
	CASE 
		WHEN is_available THEN 'in_stock'
		ELSE 'out of stock'
	END;
-- Q-2 “
-- Show product name, stock quantity, and label:
-- "High Stock" if quantity > 100
-- "Medium Stock" if between 30 and 100
-- "Low Stock" otherwise
-- ADD column stock_level
ALTER TABLE storeproduct
ADD COLUMN stock_level VARCHAR(100);
--Update Value in this column
UPDATE storeproduct
SET stock_level =
CASE 
	WHEN stock_quantity  > 100 THEN 'Hgh Stock'
	WHEN stock_quantity BETWEEN 30 AND 100 THEN 'Medium Stock'
	ELSE 'Low Stock'
END;










