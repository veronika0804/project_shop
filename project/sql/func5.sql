SELECT order_no, date_d, sum_amt
FROM
(SELECT ROW_NUMBER() OVER (ORDER BY sum_amt DESC) n1,
ROW_NUMBER() OVER (ORDER BY sum_amt) n2, * FROM shop.Orders) sort
WHERE n1>2 and n2>2
ORDER BY date_d
