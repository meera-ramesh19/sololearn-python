select [Carrier Class],
sum([Shipping_revenues]-[Shipping_cost]) as'GSM $',
sum(([Shipping_revenues]-[Shipping_cost])/[Shipping_revenues]) as 'GSM %',
sum(order_total) as 'total order total'
from Shipping_Carrier
where [Shipping_revenues]!=0 and
[Shipping_cost]!=0  and
([Shipping_revenues]-[Shipping_cost])/[Shipping_revenues] > 0 
group by [Carrier Class]
