/* pull all orders from the Shipped table that do not have nay corresponding order
details in the shipping table
*/


select distinct Shipped_09.Order#,
Shipping_Carrier.*
from Shipped_09 left join Shipping_Carrier on Shipped_09.Order#=Shipping_Carrier.[4P_Order]
where Shipping_Carrier.[4P_Order] is null

