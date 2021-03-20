select top 10 avg(([$_sold]-[total_Cost])/[$_Sold]) as 'Total gross margin $',
[dept],
count([Item_no]) as 'top items',
[date],
sum([$_Sold]) as'total sales $',
sum([total_cost]) as 'total costs of goods sold',
avg([$_Sold]) as ' Average sales',
avg([total_cost]) as 'Average costs of goods sold',
sum([$_Sold]-[total_cost]) as 'Total gross profit $'
from Sales_08_09
where date between '2019-08-07' and '2019-08-27' and
[$_Sold] <> 0
group by [date] ,[dept]
order by 'Total gross margin $' desc

