
create or replace view view1 as
select o.point_of_issue_no as point_num, 
       town as town,
       count(order_no) as num
from shop.Points t
join shop.Customers o on t.point_of_issue_no = o.point_of_issue_no 
join shop.Orders r on o.customer_id = r.customer_id
group by o.point_of_issue_no, t.town;

select * from view1
