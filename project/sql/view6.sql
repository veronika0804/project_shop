
create or replace view view6 as
select
	point_of_issue_no, town,
    overlay(adress::text placing '##################' from 1 for 28)
	
from shop.Points limit 20;

ALTER TABLE view6 RENAME COLUMN overlay TO adress;

select * from view6;
