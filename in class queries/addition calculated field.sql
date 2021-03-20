/*Add the total revenue for the 50 best orders in terms of the total
revenue (Total Revenue: order total + ship revenue) that were ordered during
the sales period of 8/7 - 8/27 for all non USPS orders (UPS/UPS Expedited
Mail Innovations). Be sure to include all order details along with the data
requested above.*/

select top 50 *,
order_total+Shipping_revenues as 'Total Revenue'
from Shipping_Carrier
where [Carrier Class] != 'UPS/UPS Expedited Mail Innovations' and
Order_Date between '2019-08-07' and '2019-08-27'
order by [Total Revenue] desc
