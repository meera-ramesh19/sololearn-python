/* What is the average order total $ for the bottom 5 zip codes?*/

select avg([Order $]) as 'Avg order total $'
 from 
 (select top 5 Zip,
  sum(Order_Total) as 'Order $'
  from Shipping_Carrier
  where Order_Total != 0
  group by Zip
  order by [Order $] asc)B