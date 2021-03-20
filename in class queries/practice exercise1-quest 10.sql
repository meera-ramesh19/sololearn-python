
 


select top 10 sum([total_cost]) as 'total cost',
sum([unit_Sold]) as' total sales units',
[dept]
from Sales_08_09
where [unit_Sold] > 2 and 
[Dept] !='Disc'
group by Dept
order by 'total cost' desc,dept