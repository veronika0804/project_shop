

create or replace view view5 as
select
    overlay(article_no::text placing '****' from 2 for 5),
	subcategory_id, product_name, cost,
	characteristic_desc, installments_per_month, maker, availability
from shop.Products limit 61;

ALTER TABLE view5 RENAME COLUMN overlay TO article_no;

select * from view5;
