/*Return all sales info for items whose $_Sold is greater than the overall average $_Sold*/
select *
from Sales_08_09
where [$_sold] > 
(select avg ([$_Sold]) 
from Sales_08_09)
