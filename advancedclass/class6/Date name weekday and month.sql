/*Return the total order $, average gross margin $ (Ship Rev - Ship Cost), and
the number of orders for each day of the week for the month of August. Exclude Saturdays
and Sundays.*/



/*What's Needed?
Total Order $,
Average Margin $:
Ship Rev - Ship Cost
Number of Orders
Day of Week - Exclude Saturdays and Sundays
Month - August*/


select datename(weekday,order_Date) as 'Day of Week',
sum(Order_Total) as 'Order $',
avg(Shipping_Revenues-Shipping_Cost) as 'Avg Margin $',
count(distinct [4P_Order]) as 'Order Count'
from Shipping_Carrier
where datename(weekday,order_Date) not in ('Saturday','Sunday') and
datename(month,order_date) = 'August'
group by datename(weekday,order_Date)
