/*Return a list of all items, order dates, and shipping 
dates from the Shipping Carrier and Shipped 09 tables.

*/
Select count([Order Column]) as 'Order Count'
from
(select [4P_Order] as 'Order Column',
Order_date,
Shipping_date
from Shipping_Carrier
Union
select Order#,
Order_date,
Shipping_date
from Shipped_09)A