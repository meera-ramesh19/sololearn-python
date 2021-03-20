select top 3 Zip.Region,
sum(Shipping_Carrier.Order_date) as 'Total sales $'
from Shipping_Carrier join zip on zip.zipCode=Shipping_Carrier.zip
where Shipping_Carrier.Order_date between '2019-08-07' and'2019-08-27'
group by Region
order by 2 desc
