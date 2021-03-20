select dept,
class,
cast(sum([$_sold])as money) as 'Sales $'
from Sales_08_09
where date between'2019-08-07' and '2019-08-27' and
[$_Sold] !=0
group by dept,class
having avg([$_Sold]) > 250
