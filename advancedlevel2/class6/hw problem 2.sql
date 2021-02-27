/*	Return orders and their order totals for orders that were above the 
average order total amount for the dates between 8/7 – 8/27.   */

select [4P_Order],
order_total
from Shipping_Carrier 
where [order_total] > 
(select avg(order_total)
 from Shipping_Carrier
 where order_date between '08-07-2019' and '08-27-2019')

