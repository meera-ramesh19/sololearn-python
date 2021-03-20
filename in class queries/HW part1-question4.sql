select cast(sum([shipping_revenues]) as money) as 'total ship revenue',
cast(sum([order_total]) as money)as 'total order total',
cast(sum([shipping_cost]) as money) as'total shipping costs',
cast(avg([shipping_revenues]) as money) as 'avg ship revenue',
cast(avg([order_total]) as money)as 'avg Total order',
cast(avg([shipping_cost]) as money) as'Average shipping costs',
cast(count([4P_order]) as money) as 'order count',
cast(min([order_total]) as money) as 'min order total',
cast(max([order_total]) as money ) as 'max order total'
from shipping_Carrier
where order_Date between '2019-08-07' and '2019-08-27'


