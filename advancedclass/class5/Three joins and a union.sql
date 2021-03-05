/*
Return the total sales units and total order count for 
all orders from the Shipping Carrier and Shipped 09 
table that were ordered in California
*/



select count ( Shipping_Carrier.[4P_Order]) as 'Order Count',
sum ( Shipped_09.[Sales Units] ) as 'Sales Units'
from

(select Shipping_Carrier.[4P_Order],
sum(Shipped_09.Units_Sold) as 'Sales Units'
from Shipping_Carrier join Shipped_09 on Shipping_Carrier.[4P_Order]=Shipped_09.Order# join
Zip on Shipping_Carrier.Zip=Zip.Zipcode
where Zip.State='California'
group by Shipping_Carrier.[4P_Order]

union
select 
Order#,
sum(Units_Sold) as 'Sales Units'
from Shipped_09 join Shipping_Carrier on Shipping_Carrier.[4P_Order]=Shipped_09.Order# join
Zip on Shipping_Carrier.Zip=Zip.Zipcode
where Zip.State='California'
group by Shipped_09.Order#)A

/*
in union the duplicates will be eliminated so no need of distince


Does it mean you look for what you need from the first table then look for what you need from the second table, then you union the two.
*/