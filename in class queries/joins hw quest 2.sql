
/*what is needed

$_Sold-Sales_ table
order date -shipping carrier
Regions -zip


pull data from
zip and shipping carrier
*/

select top 3 

Zip.Region
from Sales_08_09 join Shipping_Carrier on Sales_08_09.Item_no=Shipping_Carrier.[4P_Order]
join Zip on Zip.zipCode = Shipping_Carrier.zip
where Sales_08_09.[$_Sold] >0.0 and
Sales_08_09.Date between '2019-09-07' and '2019-08-27'
Order by 3 desc, 2
