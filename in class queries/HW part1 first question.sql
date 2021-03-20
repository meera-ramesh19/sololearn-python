select top 5 [Dept],
cast(sum([$_sold]) as money) as 'Sales $'
from Sales_08_09
where [date] between '2019-08-07' and 
'2019-08-27' and [Unit_Sold] < 500
group by Dept
order by 2 desc