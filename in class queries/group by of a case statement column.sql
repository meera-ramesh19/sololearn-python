/* count th enumber of each territory listed from the orevious query*/

select 
case when Zip.Region = 'Southeast' then 'Local' else 'Distant' end as 'Territory',
count(distinct Zip.City) as 'City Count'
from Shipping_Carrier full join Zip on Zip.Zipcode=Shipping_Carrier.Zip
where Shipping_Carrier.Zip is null
group by 
case when Zip.Region = 'Southeast' then 'Local' else 'Distant' end
