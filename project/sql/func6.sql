SELECT ROW_NUMBER() OVER(ORDER BY co desc, m, article_no) no, m,  article_no
FROM 
(SELECT one.maker as m, article_no, co   
FROM shop.Products as one join 
(SELECT maker, count(article_no) as co 
FROM shop.Products GROUP BY maker) as two on one.maker=two.maker) as mak 
