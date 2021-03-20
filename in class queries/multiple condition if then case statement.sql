/* Return the total order $, average weight, and order count by weight class.
Please categorize the weight class as following:
0 - 5 lbs - Low Weight
5.01 - 10 lbs - Mid Weight
10.01 - 25 lbs - Large Weight
Over 25 lbs - Special Carrier Delivery*/


select 
case when weight between 0 and 5 then 'low weight'
when weight between 5.01 and 10 then 'medium weight'
when weight between 10.01 and 25 then 'large weight'
else 'Special Carrier Delivery ' end as 'Weight class',
sum(order_Total) as 'total order $',
avg(weight) as 'avg weight',
count([4P_order]) as'ORder count'
from Shipping_Carrier
group by case when weight between 0 and 5 then 'low weight'
when weight between 5.01 and 10 then 'medium weight'
when weight between 10.01 and 25 then 'large weight'
else 'Special Carrier Delivery ' end