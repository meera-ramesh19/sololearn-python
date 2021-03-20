select 
zip.state,
count(Shipping_Carrier.order_total) as 'Total sales',
count(Shipping_Carrier.[4P_Order]) as 'number of orders'
from Shipping_Carrier full join zip on zip.zipcode=Shipping_Carrier.zip
where zip.state not in('Alaska','Hawaii')
group by zip.state
order by 2 desc
