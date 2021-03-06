/*	Return the grand total and subtotal for the order
total for all cities in the Southeast and West regions. 
Create a unique region id (Region – State).
Be sure to exclude states without a tax rate. 




What's needed

grand total 
subtotal 
all cities except southwest and west regions
unique region id with Region-state
exclude states without a tax rate
*/


select isnull(Zip.city,'GRAND TOTAL') as 'City',
ISnull(Zip.Region,'Subtotal') as 'Region',
sum(Shipping_Carrier.order_total) as 'Total order $',
Concat(zip.Region,'-',Zip.State) as 'Region-State id'
from Shipping_Carrier left join Zip  on
Shipping_Carrier.zip=Zip.zipCode left join Tax_Table_19_US on Zip.state=Tax_Table_19_US.State
where Zip.Region not in('Southwest','West')
and Tax_Table_19_US.Tax>0
group by rollup(Zip.city,Zip.Region,Zip.state)
