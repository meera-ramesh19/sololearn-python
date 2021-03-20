*We need the top 100 orders with the highest insurance coverage during
the month of August but only for Surepost orders/. Be sure to include all
order details for these 100 orders.*/


select top 100 *
from Shipping_Carrier
where month(Order_Date) = '08' and
[Carrier Class] in ('UPS/UPS Surepost 1 lb or greater',
'ups/ups surepost less than 1 lb')
order by Ins desc 