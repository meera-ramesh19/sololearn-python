/* Return 4 digit code from item_ID*/
select Item_ID,
substring(Item_ID,7,4) as 'Mid Item Count'
from Sales_08_09


/* REturn the 2,3,4 digit of order number*/


select [4P_Order],
substring([4P_Order],2,3) as 'Mid Order Number'
from Shipping_Carrier
