/*Return the total sales units for Orders in both the Shipping Carrier 
and Shipped 09 tab*/

select Shipping_Carrier.[4P_Order],
sum(Shipped_09.Units_sold) as 'Sales units'
from Shipping_Carrier join Shipped_09 on
Shipping_Carrier.[4P_Order]=Shipped_09.Order#
group by Shipping_Carrier.[4P_Order]

union

Select Order#,
sum(units_sold) as 'Sales units'
from Shipped_09
group by Order#