/*Pull all order information and include the cities and states the orders
were placed. Any order that had a shipping profit margin $ less than or
equal to $0, label the order as no profit. If the profit dollar is greater
than $0, label as profit.
*/

select Shipping_Carrier. * ,
Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost as 'Ship profit margin $',
case when Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost <=0 then 'No profit'
else 'Profit' end as 'Profit Indicator',
Zip.State,
Zip.city
from Shipping_Carrier join Zip on Zip.zipcode=Shipping_Carrier.zip


