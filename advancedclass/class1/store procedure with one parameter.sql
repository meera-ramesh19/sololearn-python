/* store procedures that has parameters- like a filter query
where we get subset of data  

procedure that pulls all order info for a specific date


*/
create procedure OrderDate @DateVariable date as begin
select * 
from Shipping_Carrier
where Order_date = @DateVariable end

exec OrderDate @DateVariable = '2019-08-01'