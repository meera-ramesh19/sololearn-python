/* create a grand total of the total sales $ for each 
department*/


select isnull(Dept, 'Grand Total') as 'Department',
isnull (class , 'Sub Total') as 'Class',
sum([$_sold]) as 'Sales $'
from Sales_08_09
group by  rollup  (Dept, Class)