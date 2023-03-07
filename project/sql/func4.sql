SELECT name, 
CASE
WHEN count(order_no)<>0 THEN count(order_no)
ELSE NULL end as number
FROM shop.Customers c LEFT JOIN shop.Orders p
ON c.customer_id=p.customer_id
GROUP BY c.name
HAVING count(order_no)>=0
