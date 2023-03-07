
create or replace view view4 as
select product_name, 
       characteristic_desc, cost asc
from shop.Products 
where subcategory_id=14
group by product_name, characteristic_desc, cost, availability 
having availability='1';

select * from view4
