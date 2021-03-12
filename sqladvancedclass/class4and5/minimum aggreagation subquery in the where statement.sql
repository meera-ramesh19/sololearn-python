/*Return the orders and order totals for each order for the month of September
only if the order total amount is greater than the minimum order total*/

select [4P_Order],
Order_Total
from Shipping_Carrier
where datename(month,Order_Date) = 'September' and
Order_Total >
(select min(Order_Total)
from Shipping_Carrier
where Order_Total > 0 )
