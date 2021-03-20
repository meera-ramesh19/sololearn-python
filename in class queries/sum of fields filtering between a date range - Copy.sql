/* return the total order $ for all orders 
that took place from 8/7 --8/27*/

select sum(order_total as 'Total_Order $'
from Shipping_Carrier
where Order_Date between '2019-08-07' and '2019-08-27'

