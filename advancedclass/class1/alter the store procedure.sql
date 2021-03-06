/* alter store procedure*/


Alter procedure Ordership @date1 date,@date2 date as
select *
from Shipping_carrier
where Order_Date > @date1 and Shipping_date > @date2 go