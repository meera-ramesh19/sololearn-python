/* return the item with the lowest costs that
was purchased on the first day of sale,which was 8/7. 
Be , sure to exclude items with $0 costs.

*/
select *
from(select *,
row_number ()  over(order by Total_cost asc) as 'Row #'
from Sales_08_09
where Total_Cost <> 0 and
Date='2019-08-07')C
where [Row #] = 1  