
create or replace view view2 as
select article_no, category,
       product_name,
       availability
from shop.Products o 
join shop.Subcategory_name t on o.subcategory_id=t.subcategory_id
join shop.Category_name r on t.category_id=r.category_id
where availability='0';

select * from view2
