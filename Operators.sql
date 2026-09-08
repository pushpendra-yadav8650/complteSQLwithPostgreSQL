SELECT * FROM storeproduct;

SELECT * FROM storeproduct WHERE category = 'Electronic';
SELECT * FROM storeproduct WHERE category != 'Electronic';

SELECT * FROM storeproduct WHERE price < 1000;
SELECT * FROM storeproduct WHERE price < 1000 and category = 'Electronic';
SELECT * FROM storeproduct WHERE price < 1000 and price > 400 ;
SELECT * FROM storeproduct WHERE price BETWEEN 400 and 1000 ;

SELECT * FROM storeproduct WHERE category='Electronic' or category='Accessorie';
SELECT * FROM storeproduct WHERE category in ('Electronic','Accessorie');

SELECT * FROM storeproduct WHERE sku_code like 'A1%';
SELECT * FROM storeproduct WHERE sku_code like '__A1%';

SELECT * FROM storeproduct;
