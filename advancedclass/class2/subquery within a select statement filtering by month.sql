/* return the order total by Shipping Carrier and the full order total 
for the month of August*/


Select [Carrier Class],
sum(Order_Total) as 'Order $',
(select sum(order_total) 
from  Shipping_Carrier
where month(Order_date)='08') as 'August Order $'
from Shipping_Carrier
where month(Order_date)='08'
group by [Carrier Class]