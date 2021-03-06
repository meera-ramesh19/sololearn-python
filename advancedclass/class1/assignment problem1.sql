/*	Create a unique ID for the Region and the first 2 
digits of the TRK column. Return the number of orders 
for each Region-TRK unique ID for September weekend UPS 
orders. UPS orders start with 1Z. Exclude International 
and Puerto Rico regions.

*/


/* What's needed

Unique ID for the Region
First 2 digits of the tracking column
number of orders from region-trk
september weekend ups orders
exclude international and puerto rico regions
ups orders start with 1Z

*/


select count( Shipping_Carrier.[4P_Order]) as 'Order count',
Datename(weekday,Shipping_Carrier.Order_date) as 'Day of week',
CONCAT(Zip.Region,'-',left(Shipping_Carrier.TRK,2)) as'Region-TRK ID'
from Shipping_Carrier join Zip on 
Zip.zipCode=Shipping_Carrier.Zip
where left(Shipping_Carrier.TRK,2)='1Z' and
Datename(weekday,Shipping_Carrier.Order_date) in ('Saturday','Sunday') and 
month(Shipping_Carrier.Order_date)='09' and
Zip.Region not in ('International','Puerto Rico')
group by Datename(weekday,Shipping_Carrier.Order_date),
CONCAT(Zip.Region,'-',left(Shipping_Carrier.TRK,2))




