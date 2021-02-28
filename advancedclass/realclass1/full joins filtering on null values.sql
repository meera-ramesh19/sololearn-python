/* Pull the total sales unit for all orders in the Order table
but only for orders that have sales units data*/




select Shipping_Carrier.[4P_order],
Shipped_09.Order#,
sum(Shipped_09.Units_Sold ) as 'Sales Units'
from Shipped_09 full join Shipping_Carrier on 
Shipped_09.Order#=Shipping_Carrier.[4P_Order]
group by Shipping_Carrier.[4P_Order],Shipped_09.Order#
having sum(Shipped_09.Units_sold) is not null
