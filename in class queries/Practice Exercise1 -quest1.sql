select cast(sum([Unit_Sold]) as money) as 'total number of orders',
cast(sum([$_sold])as money) as 'Total order total',
cast(avg([$_sold]) as money) as 'Average order total'
from Sales_08_09
where month(date)='09'
