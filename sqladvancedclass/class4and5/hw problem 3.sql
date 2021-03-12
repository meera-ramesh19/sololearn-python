/* Return the average sales $ per unique item.
Formula: Sum of Sales $ / # of unique items */

select sum([$_Sold])/count(distinct Item_ID)
from Sales_08_09
