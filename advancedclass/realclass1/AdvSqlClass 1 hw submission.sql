/*Return a list of any orders and their total sales units that were in 
the Shipped_09 table but not the Shipping_Carrier table


order#,
Sum(units_sold) 
Shipped_09 table
Shipping_Carrier table
*/


select Shipped_09.Item_No,
sum(Shipped_09.[Units_sold]) as 'Sold $'
from Shipping_Carrier right join Shipped_09 on
Shipping_Carrier.[4P_Order]=Shipped_09.Order#
where Shipping_Carrier.[4P_Order] is null
group by Shipped_09.Item_No

/* Return any cities and states that are listed in the 
Zip table but not in the Tax table.


cities
states
info from Zip table
but not in Tax table

*/

select Zip.state,
Zip.city
from Tax_Table_19_US right join Zip on 
Zip.state=Tax_Table_19_US.State
where Tax_Table_19_US.State is NULL


/* Return any items, their total sales dollars, and gross margin $ 
(sales $ - costs $) listed in the Sales_08_09 table but not listed 
in the Shipped_09 table. 

items
total sales $
gross margin $(sales $-costs$)
from Sales_08_09 table
not in Shipped_09 table

*/



select Sales_08_09.Item_ID,
cast(sum(Sales_08_09.[$_Sold]-Sales_08_09.Total_Cost) as money) as 'Gross MArgin $',
cast(sum(Sales_08_09.[$_Sold])  as money) as 'Gross margin sales $'
from Sales_08_09 left join Shipped_09 on 
Sales_08_09.Item_ID=Shipped_09.Item_No
where Shipped_09.Item_No is null
group by Sales_08_09.Item_ID



/* return any items and their respective departments and classed
listed in the Shipped_09 table but not listed in the Sales_08_09
table.

*/

select Shipped_09.Item_No,
Shipped_09.Dept_,
Shipped_09.Class_
from Shipped_09 left join Sales_08_09 on 
Shipped_09.Item_No=Sales_08_09.Item_ID
where Sales_08_09.Item_ID is null


/*	Return a list of zip codes that have order details in the
Shipping_Carrier table but not listed in the Zip table.

*/


select Shipping_Carrier.*,
Zip.*
from Shipping_Carrier left join Zip on
Zip.zipCode=Shipping_Carrier.zip
where Zip.zipCode is null


