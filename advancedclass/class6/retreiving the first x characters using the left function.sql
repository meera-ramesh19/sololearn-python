/*Return the total order $ and the average insurance amount in the Southeast and
West regions for saturday and Sunday UPS orders. UPS orders start with 1Z*/

/*What's Needed?
Total Order $
Average Insurance
Southeast and West regions
Saturday and Sunday
UPS orders - start with 1z*/


select DATENAME(weekday,Order_Date) as 'Day of  Week',
sum(Shipping_Carrier.order_total) as 'Total order $',
avg(Shipping_Carrier.Ins) as 'AVg Ins amt'
from Shipping_Carrier join Zip on 
Zip.Zipcode=Shipping_Carrier.zip
where Zip.Region in ('West','Southeast') and
DATENAME(weekday,Order_Date) in ('Saturday','Sunday') and
Left(Shipping_Carrier.TRK,2)='1Z'
group by DATenAME(weekday,Order_Date)
 