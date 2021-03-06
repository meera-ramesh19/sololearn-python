/* write a stored procedure that pulls all order info for 
a specific order date and specific ship date */

create procedure Ordership @date1 date, @date2 date as begin
select * 
from Shipping_Carrier
where Order_date= @date1 and Shipping_date= @date2 end

exec Ordership @date1='2019-08-01' ,@date2='2019-08-02'