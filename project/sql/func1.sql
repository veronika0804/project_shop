SELECT  subcategory, avg(cost) as av_price 
FROM shop.Products p 
JOIN shop.subcategory_name c on p.subcategory_id = c.subcategory_id 
WHERE p.maker = 'Xiaomi'
GROUP BY c.subcategory
ORDER BY av_price asc
