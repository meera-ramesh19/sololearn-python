/*Return the 10 orders with the best gross margin % if the gross margin %
is better than 60%. Be sure to exlcude any orders with a $0 shipping cost.*/

select top 10 *,
(Shipping_revenues- Shipping_cost)/Shipping_Revenues as 'GM%'
from Shipping_Carrier
where Shipping_Revenues <> 0 and 
Shipping_Cost <> 0 and
(Shipping_Revenues-Shipping_Cost)/Shipping_Revenues > .60
order by [GM%] desc
