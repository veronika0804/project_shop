SELECT product_name, cost FROM( 
SELECT distinct product_name, cost FROM shop.Products WHERE cost = (SELECT MAX(cost) FROM shop.Products where Products.subcategory_id = 1)
UNION 
SELECT distinct product_name, cost FROM shop.Products WHERE cost = (SELECT MAX(cost) FROM shop.Products where Products.subcategory_id = 5)
UNION 
SELECT distinct product_name, cost FROM shop.Products WHERE cost = (SELECT MAX(cost) FROM shop.Products where Products.subcategory_id = 7)
UNION 
SELECT distinct product_name, cost FROM shop.Products WHERE cost = (SELECT MAX(cost) FROM shop.Products where Products.subcategory_id = 29)
UNION 
SELECT distinct product_name, cost FROM shop.Products WHERE cost = (SELECT MAX(cost) FROM shop.Products where Products.subcategory_id = 4)
UNION 
SELECT distinct product_name, cost FROM shop.Products WHERE cost = (SELECT MAX(cost) FROM shop.Products where Products.subcategory_id = 2)
UNION 
SELECT distinct product_name, cost FROM shop.Products WHERE cost = (SELECT MAX(cost) FROM shop.Products where Products.subcategory_id = 15)
) as t 
WHERE t.cost < 50000
