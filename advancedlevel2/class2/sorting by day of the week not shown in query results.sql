/*Return the number of orders for each day of the week for month of August*/


select datename(weekday,Order_Date) as 'Day of Week',
count(distinct [4P_Order]) as 'Order Count'
from Shipping_Carrier
where month(Order_Date)='08'
group by datename(weekday,Order_Date)
order by case when datename(weekday,Order_Date)='Monday' then 1
 when datename(weekday,Order_Date)='Tuesday' then 2
 when datename(weekday,Order_Date)='Wednesday'then 3
 when datename(weekday,Order_Date)='Thursday' then 4
 when datename(weekday,Order_Date)='Friday' then 5
 when datename(weekday,Order_Date)='Saturday' then 6
 else 7 end  asc


 /*or */

 select datename(weekday,Order_Date) as 'Day of Week',
count(distinct [4P_Order]) as 'Order Count',
case when datename(weekday,Order_Date)='Monday' then 1
 when datename(weekday,Order_Date)='Tuesday' then 2
 when datename(weekday,Order_Date)='Wednesday'then 3
 when datename(weekday,Order_Date)='Thursday' then 4
 when datename(weekday,Order_Date)='Friday' then 5
 when datename(weekday,Order_Date)='Saturday' then 6
 else 7 end as 'Day Count'
from Shipping_Carrier
where month(Order_Date)='08'
group by datename(weekday,Order_Date),
case when datename(weekday,Order_Date)='Monday' then 1
 when datename(weekday,Order_Date)='Tuesday' then 2
 when datename(weekday,Order_Date)='Wednesday'then 3
 when datename(weekday,Order_Date)='Thursday' then 4
 when datename(weekday,Order_Date)='Friday' then 5
 when datename(weekday,Order_Date)='Saturday' then 6
 else 7 end
order by [Day Count] asc