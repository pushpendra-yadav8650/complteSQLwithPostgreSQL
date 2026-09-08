SELECT * FROM storeproduct;
--UPPER CASE 
SELECT upper(name) FROM storeproduct;
--LOWER CASE
SELECT lower(name) FROM storeproduct;
--Length
SELECT length(sku_code) FROM storeproduct;
--Substring 
SELECT substring('this is a sql series',1,4);
SELECT name,substring(sku_code,1,2) FROM storeproduct;

SELECT name,lower(substring(sku_code,1,2)) as sku_code_lower FROM storeproduct;
--left and right 
SELECT left('hii my name is pushpendra',8);
SELECT right('hii my name is pushpendra',10);

SELECT name , left(sku_code,2) FROM storeproduct;
SELECT name , right(sku_code,2) FROM storeproduct;

--Concatenate to string 
SELECT concat(name,' ',category) as product_with_category FROM storeproduct;

SELECT concat_ws(' ',name,category,sku_code) as product_with_category FROM storeproduct;
--trim() remove space of both side from string 
SELECT trim('  Rahul    ');
--replace This function will replace any thing you want 
SELECT name, replace(sku_code,left(sku_code,2),'GG') FROM storeproduct;
