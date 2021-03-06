/* 	Write a stored procedure for #2. Name it TopRegion

*/


create procedure TopRegion @Region nvarchar, @city nvarchar as
begin
select isnull(Zip.city,'GRAND TOTAL') as 'City',
ISnull(Zip.Region,'Subtotal') as 'Region',
sum(Shipping_Carrier.order_total) as 'Total order $',
Concat(zip.Region,'-',Zip.State) as 'Region-State id'
from Shipping_Carrier left join Zip  on
Shipping_Carrier.zip=Zip.zipCode left join Tax_Table_19_US on Zip.state=Tax_Table_19_US.State
where Zip.Region not in('Southwest','West')
and Tax_Table_19_US.Tax>0
group by rollup(Zip.city,Zip.Region,Zip.state)
end


exec TopRegion @Region='South', @city='Atlanta'