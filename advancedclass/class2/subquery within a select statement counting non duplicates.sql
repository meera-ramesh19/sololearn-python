/* Return the order total by Shipping Carrier and 
the full number of order days for the month of September.
*/



select [Carrier Class],
sum(order_total) as 'Order $',
(select count(distinct Order_Date)
from Shipping_Carrier
where month(Order_Date) = '09') as 'Sept Day Count'
from Shipping_Carrier
where month(Order_Date)= '09'
group by [Carrier Class]

/* separate entitites they come together*/