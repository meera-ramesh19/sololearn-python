/*	What is the total sales $ for the top 5 departments 
with the highest sales $ in the month of August?*/


select sum([Sales $]) as 'Sales'
from 
  (select top 5 Dept,
  sum([$_Sold]) as 'Sales $'
  from Sales_08_09
  where month(Date)='08'
  group by Dept
  order by [Sales $] desc) A



  