/*Return the order total and % to total (Order total for each specific carrier/
Overall Order Total) by Shipping Carrier for the month of August.*/


/*
UPS Ground  $100 $100/$1000=.10
UPS Next Day $200 $200/$1000= 0.20
UPS 3 Day $300 $300/$1000=.30
*/

select [Carrier Class],
sum(order_total) as 'Order $',

  sum(order_total)/
    (select sum(order_total)
	 from Shipping_Carrier
	 where month(order_Date)='08') as '% to total'

from Shipping_Carrier
where month(Order_date)='08'
group by [Carrier Class]

