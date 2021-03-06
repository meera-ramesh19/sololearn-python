*	Create a unique ID for the Region and the first 2 
digits of the TRK column. Return the number of orders 
for each Region-TRK unique ID for September weekend UPS 
orders. UPS orders start with 1Z. Exclude International 
and Puerto Rico regions.

*/


/* What's needed

Unique ID for the Region
First 2 digits of the tracking column
number of orders from region-trk
september weekend ups orders
exclude international and puerto rico regions
ups orders start with 1Z

*/


select count( Shipping_Carrier.[4P_Order]) as 'Order count',
Datename(weekday,Shipping_Carrier.Order_date) as 'Day of week',
CONCAT(Zip.Region,'-',left(Shipping_Carrier.TRK,2)) as'Region-TRK ID'
from Shipping_Carrier join Zip on 
Zip.zipCode=Shipping_Carrier.Zip
where left(Shipping_Carrier.TRK,2)='1Z' and
Datename(weekday,Shipping_Carrier.Order_date) in ('Saturday','Sunday') and 
month(Shipping_Carrier.Order_date)='09' and
Zip.Region not in ('International','Puerto Rico')
group by Datename(weekday,Shipping_Carrier.Order_date),
CONCAT(Zip.Region,'-',left(Shipping_Carrier.TRK,2))

/*	Return the grand total and subtotal for the order
total for all cities in the Southeast and West regions. 
Create a unique region id (Region – State).
Be sure to exclude states without a tax rate. 




What's needed

grand total 
subtotal 
all cities except southwest and west regions
unique region id with Region-state
exclude states without a tax rate
*/


select isnull(Concat(zip.Region,'-',Zip.State),'GRAND TOTAL') as 'Unique id',
ISnull(Zip.City,'Subtotal') as 'City',
sum(Shipping_Carrier.order_total) as 'Total order $'
from Shipping_Carrier left join Zip  on
Shipping_Carrier.zip=Zip.zipCode left join Tax_Table_19_US on Zip.state=Tax_Table_19_US.State
where Zip.Region in('Southwest','West')
and Tax_Table_19_US.Tax !=0 
group by rollup(Zip.city,concat(Zip.Region,Zip.state))



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


/* 	Write a stored procedure for #2. Name it TopRegion

*/


create procedure TopRegion @Region nvarchar(50), @Tax int as begin
select isnull(Concat(zip.Region,'-',Zip.State) ,'GRAND TOTAL') as 'Unique ID',
ISnull(Zip.City,'Subtotal') as 'City',
sum(Shipping_Carrier.order_total) as 'Total order $'
from Shipping_Carrier left join Zip  on
Shipping_Carrier.zip=Zip.zipCode left join Tax_Table_19_US on Zip.state=Tax_Table_19_US.State
where Zip.Region not in('Southwest','West')
and Tax_Table_19_US.Tax != @Tax
group by rollup(Zip.city,concat(Zip.Region,'-',Zip.state)
end


