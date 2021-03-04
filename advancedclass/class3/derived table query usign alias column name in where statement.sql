/*What is the total sales $ for the following departments: Fitness,
Accessories, and Gear for the month of August*/


select sum ([Sales $]) as 'Total Aug $'
from
 (select Dept as 'Department',
 sum([$_Sold]) as 'Sales $'
 from Sales_08_09
 where month(Date) = '08'
 group by Dept)AB
where Department in ('Fitness','Gear','Accessories')
