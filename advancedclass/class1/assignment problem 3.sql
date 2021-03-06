/*	Return all items, their respective departments and
classes, and their total sales units from the Shipped 09 
and Sales 08 09 table 

items,
departments,
classes,
total sales,
shipped 09 table
Sales_08_09 table

*/


select Sales_08_09.Item_ID ,
Sales_08_09.Dept,
Sales_08_09.Class,
Sum(Sales_08_09.Unit_sold) as ' Sales Units'
from Sales_08_09 join Shipped_09 on 
Sales_08_09.Item_ID=Shipped_09.Item_No
group by Sales_08_09.Item_ID ,
Sales_08_09.Dept,
Sales_08_09.Class

union

select Shipped_09.Item_No,
Shipped_09.Dept_, 
Shipped_09.Class_,
Sum(Shipped_09.Units_sold) as 'Sales units'
from Shipped_09 join Sales_08_09 on
Sales_08_09.Item_ID=Shipped_09.Item_No
group by Shipped_09.Item_No,
Shipped_09.Dept_, 
Shipped_09.Class_