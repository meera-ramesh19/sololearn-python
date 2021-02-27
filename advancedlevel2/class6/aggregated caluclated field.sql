/*Return the average daily sales $ per item for the month August
Formula: (Total sales $/31) / # of unique items */

select (sum([$_Sold])/31) / count(distinct Item_ID)
from Sales_08_09
where datename(month,Date) = 'August'



/*Return the items and their sales $ that sold on 8/27/2019 but only items
whose sales $ were greater than the average amount from #3*/

select Item_ID,
[$_Sold]
from Sales_08_09
where Date = '08-27-2019' and [$_Sold] >
(select (sum([$_Sold])/31) / count(distinct Item_ID)
from Sales_08_09
where datename(month,Date) = 'August')
order by 2 desc
