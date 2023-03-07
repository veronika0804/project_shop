SELECT ROW_NUMBER() OVER(ORDER BY maker) as num,
CASE 
WHEN numS=1 THEN maker
ELSE NULL
END as maker, subcategory_id
FROM (SELECT ROW_NUMBER() OVER(PARTITION BY maker ORDER BY maker) as numS, maker, subcategory_id
FROM shop.Products)  as n2
