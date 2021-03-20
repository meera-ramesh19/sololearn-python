
/*Pull a list of all cities that didn't have any orders*/




select zip.*,
Shipping_Carrier.*
from Zip left join shipping_carrier on Zip.Zipcode=Shipping_Carrier.Zip
where Shipping_Carrier.[4P_order] is null

select zip.*,
Shipping_Carrier.*
from Zip right join Zip on Zip.Zipcodeshipping_carrier on Zip.Zipcode=Shipping_Carrier.Zip
where Shipping_Carrier.[4P_order] is null