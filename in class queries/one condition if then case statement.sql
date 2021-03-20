/*Return all sales information by items including the item number,
department, class, sales, sales units, and costs. Any items that belong
to the Disc Department, mark these as on sale. If not, mark these as
regular.*/

select *,
case when Dept='Disc' then 'Sale' else 'Regular' end as 'Item Status'
from Sales_08_09