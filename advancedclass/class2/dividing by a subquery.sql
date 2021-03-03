
/*Return the order total for September and the September daily order $
by Shipping Shipping Carrier.
*/

select [Carrier Class],
sum(order_total) as 'Order $',
sum(order_total)/
  (select count(distinct Order_Date)
   from Shipping_Carrier
    where month(Order_Date) = '09') as 'Avg Sept $'
from Shipping_Carrier
where month(Order_date)='09'
group by [Carrier Class]




select [Carrier Class],
sum(Order_Total) as 'Order $',
  (select count(distinct Order_Date)
  from Shipping_Carrier
  where month(Order_Date) = '09') as 'Day Count',
sum(Order_Total)/
  (select count(distinct Order_Date)
  from Shipping_Carrier
  where month(Order_Date) = '09') as 'Avg $'
from Shipping_Carrier
where month(Order_Date) = '09'
group by [Carrier Class]


