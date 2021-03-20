/*Return all order information for orders that had at least 10% of insurance
coverage based on the order total. Insurance Coverage: Insurance/Order Total
*/

select *,
ins/order_total as '% of coverage'
from Shipping_Carrier
where order_total !=0 and
Ins/order_total = 10