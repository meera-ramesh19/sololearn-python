select [Carrier Class],
sum([Shipping_revenues]-[Shipping_cost]) as 'GSM $',
sum(([Shipping_revenues]-[Shipping_cost])/[Shipping_revenues]) as 'GSM %'
from Shipping_Carrier
where [Shipping_revenues] !=0 and
([Shipping_revenues]-[Shipping_cost])/[Shipping_revenues] > .30
group by [Carrier Class]