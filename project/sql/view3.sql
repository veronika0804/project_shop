
create or replace view view3 as
select subcategory, 
	   min(installments_per_month) desc
from shop.Products o 
join shop.Subcategory_name t on o.subcategory_id=t.subcategory_id
group by subcategory
order by subcategory;

select * from view3
