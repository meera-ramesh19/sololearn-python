/*Return the length of the Item ID #*/

select *,
len(Item_ID) as 'Item # Length'
from Sales_08_09

/*Return the length of the tracking number*/

select TRK,
len(TRK) as 'TRK # Length'
from Shipping_Carrier