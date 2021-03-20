/* what is the total sales $ for the  top 5 departments 
with the highest sales $ to the month of August*/


select sum([Sales $]) as 'Total sales'
from
(select top 5 dept,
sum([$_sold]) as 'Sales $'
from Sales_08_09
where month(date)='08'
group by dept
order by 2 desc)D