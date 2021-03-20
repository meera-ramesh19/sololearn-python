

select count([carrier Class]) as'CCount',
cast(avg([Shipping_revenues]-[Shipping_cost]) as money)as'AVG $'
from Shipping_Carrier
where Order_date between '2019-08-07' and '2019-08-27' and 
Ins > 0 and
[Shipping_revenues]-[Shipping_cost] > 0
group by[Carrier Class]
order by 2 asc





 
