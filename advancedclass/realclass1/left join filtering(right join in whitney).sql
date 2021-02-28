/* Pull all cities that dont have any corresponding order information in the shipping tables
*/



select Zip.city,
Shipping_Carrier.*
from Shipping_carrier right join Zip on Zip.Zipcode=Shipping_Carrier.Zip
where Shipping_Carrier.[4P_Order] is null
select Zip.city,
Shipping_Carrier.*
from Zip left join Shipping_Carrier on Zip.Zipcode=Shipping_Carrier.Zip
where Shipping_Carrier.[4P_Order] is null
