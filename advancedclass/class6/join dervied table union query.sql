/* Return the total sales units and total order count(use derived table)
for all orders from the shipping carrier and  shipped 09 table that 
were ordered in california*/

select sum([Sales Units]) as 'Total Sales Units',
count(order#) as 'Total order count'
from
(Select Shipped_09.order#,
sum(shipped_09.units_Sold) as 'Sales units'
from Shipped_09 join Shipping_carrier on
Shipped_09.Order#=Shipping_Carrier.[4P_Order] join
Zip on Zip.Zipcode=Shipping_Carrier.Zip
where Zip.state='California'
group by Shipped_09.order#

union

Select Shipping_carrier.[4P_Order],
sum(shipped_09.units_Sold) as 'Sales units'
from Shipping_Carrier join Shipped_09 on
Shipping_Carrier.[4P_Order]=Shipped_09.Order# join
Zip on Zip.Zipcode=Shipping_Carrier.Zip
where Zip.state='California'
group by Shipping_Carrier.[4P_Order])A