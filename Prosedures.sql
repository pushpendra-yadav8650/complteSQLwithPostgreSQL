/*
									PROCEDURES

			A procedure is a block of SQL code that performs a
			series of operations — like inserting, updating, deleting,
			or selecting data — and is stored in the database.
			“
			Think of it like a function in programming — once
			defined, you can call it again and again without rewriting
			the logic.

*/
CREATE PROCEDURE add_products(
	p_name VARCHAR,
	p_sku CHAR(8),
	p_price NUMERIC,
	p_qty INT,
	p_category TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO storeproduct(name,sku_code,price,stock_quantity, category) 
	VALUES (p_name,p_sku,p_price,p_qty,p_category);

	RAISE NOTICE 'product added successfully';

END;
$$;

CALL add_products('Charger','B012A',345.43,20,'Electroin');

SELECT * FROM storeproduct;