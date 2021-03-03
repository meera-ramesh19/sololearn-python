select [Carrier Class],
sum(order_total) as 'Sold $',
(select sum(order_total)
  from Shipping_Carrier 
  where month(Order_date)='08') as ' Total Sales'
from Shipping_Carrier
where month(Order_date)='08'
group by [Carrier Class]


select [Carrier Class],
sum(order_total) as 'Sold $',
(select count(distinct order_Date)
 from Shipping_Carrier
 where month(Order_Date)='09') as 'ORder days'
 from Shipping_Carrier
 where month(order_Date)='09'
 group by [Carrier Class]


 select [Carrier Class],
sum(order_total) as 'Sold $',
sum(order_total)/
(select count(distinct order_Date)
 from Shipping_Carrier
 where month(Order_Date)='09') as ' daily ORder $'
 from Shipping_Carrier
 where month(order_Date)='09'
 group by [Carrier Class]


 
select [Carrier Class],
sum(order_total) as 'Sold $',
sum(order_total)/ 
(select sum(order_total) 
 from Shipping_Carrier
 where month(Order_Date)='09') as '%toTotal'
 from Shipping_Carrier
 where month(order_Date)='09' and order_total>0
 group by [Carrier Class]



select 
sum([$_Sold]) as 'Sold $',
sum([$_Sold])/31/
(select sum([$_Sold])/31
 from Sales_08_09
 where month(Date)='08') as ' daily ORder $'
 from Sales_08_09
 where month(Date)='08' 
