select count(Unit_Sold) as 'times sold',
cast (max([$_Sold]) as money) as 'Largest sales $',
cast(min([$_Sold]) as money) as 'Lowest sales $',
cast(sum([$_Sold]) as money ) as 'total Sales $',
cast(sum([$_sold]-[Total_Cost]) as money ) as'Total gross margin $'
from Sales_08_09
where date between '2019-08-21' and '2019-08-30'
and ([$_Sold]) > 0


 



