/*Return all sales information by item including the item number, department, clas,
sales $, sales units, and total costs. Any items that belong to the Disc department, 
mark these as on sale. If not, mark these as regular.*/


Select *,
case when Dept='Disc' then 'On Sale' else 'Regular' end as'Item Status'
from Sales_08_09