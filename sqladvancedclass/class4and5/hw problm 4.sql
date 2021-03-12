/*	Return the items and their sales $ that sold in the month of August 
but only items whose sales $ were greater than the average amount from #3.
Use a derived table for this exercise. Hint: 
the derived table WILL NOT be part of the subquery in the WHERE statement.
*/


select *
from 
(select Date,
count(distinct Item_ID) as 'Item Count',
sum([$_Sold]) as 'Total Sales',
sum([$_Sold])/count(distinct Item_ID) as 'avg'
from Sales_08_09
group by Date
having month(Date)='08' and  'Total Sales' > 'avg'
)C
