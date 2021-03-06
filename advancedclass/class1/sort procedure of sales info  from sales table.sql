/* store procedure for all item info from the 
Sales _08_09 table*/



Create procedure Sales as
select * 
from Sales_08_09
go

exec Sales