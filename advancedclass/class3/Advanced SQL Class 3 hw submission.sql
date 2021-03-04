/*	PROBLEM 1

Using a derived table, return the overall average 
gross margin $ for all departments in the month of
September,excluding the Disc department.

      MAIN QUERY
		 Avg of Gross Margin $
		
		DERIVED TABLE
		Gross margin $
		For the month of September


*/
select avg([Gross Margin $]) as 'Avg Gross Margin $'
from 
(select Dept,
sum ([$_Sold]-[Total_Cost] ) as 'Gross Margin $'
from Sales_08_09
where month(Date)='09' 
group by Dept)A
where Dept not in('Disc')

/* PROBLEM 2
Using a derived table, provide the order count for all orders that
were in the Shipping Carrier table but not in the 
Shipped 09 table.

Main Query

        Sum of the Order Count

	Derived table 
		order count
		Carrier Class
		from Shipping Carrier
		not in Shipped_09

*/

select sum(Counts) as 'Order Count'
from
(Select Shipping_Carrier.[Carrier Class],
Shipped_09.Order#,
Shipping_Carrier.[4P_Order],
count( Shipping_Carrier.[4P_Order]) as 'Counts'
from Shipping_Carrier left join Shipped_09
on Shipped_09.Order#=Shipping_Carrier.[4P_Order]
where Shipped_09.Order# is null
group by Shipping_Carrier.[Carrier Class],
Shipped_09.Order#,
Shipping_Carrier.[4P_Order])A



	/* 	PROBLEM 3

	Provide the sales $ and % to total
	(sales $ for each department/total sales $) 
	by Department for the month of September.
	Be sure to exclude the Disc department.


       MAIN QUERY
	Dept
	sales $ 
	% to total sales 
	=sales $/SubQuery
	exclude Disc Dept

     
       SUBQUERY
       total sales $
	in the month of September
	

 */


 	select Dept,
 	sum([$_Sold]) as 'Sales $',
	sum([$_Sold])/
   	   (select sum([$_Sold] )
          from Sales_08_09
          where month(Date)='09' and Dept!='disc') as '% to total'
          from Sales_08_09
          where Dept not in('Disc') and month(Date)='09'
       group by Dept


/* PROBLEM 4
Provide the daily average sales $
for each item between 8/7 – 8/27.

       MAIN QUERY

		sum of $_Sold
              sum of $_Sold/Sub Query


		SUBQUERY
		count number of days for daily sales
		Date between aug 7 and aug 27



*/

select Dept,
sum([$_Sold]) as' Sales $',
sum([$_Sold])/
 (select count(distinct Date) as 'Count'
 from Sales_08_09
 where Date between '2019-08-07' and '2019-08-27') as 'Daily Avg Sales $'
from Sales_08_09
where Date between '2019-08-07' and '2019-08-27'
group by Dept


/*  PROBLEM 5
Provide the total order $ for the top 10 cities with 
the largest order $.

Main Query
Total ORder $

Derived Table
Top 10 cities 
Largest Order $ for each city
Shipping Carrier table
Zip table 
*/


select sum(Order$) as 'Total ORder $'
from
(select top 10
Zip.city,
sum(Shipping_Carrier.order_total) as 'Order$'
from Zip right join Shipping_Carrier on
Zip.zipCode=Shipping_Carrier.zip
where Shipping_Carrier.order_total>0
group by Zip.city
order by 2 desc) A


/* PROBLEM 6
Provide the total sales units for the top 5 orders 
with the largest sales units.


Main Query
total Sales units

Derived Table
top 5 orders 
$_Sold
largest Sales units
Shipped_09 table
Sales_08_09 table

*/


select sum([Sales Units]) as 'total Sales units'
from
 (select top 5
  Shipped_09.Order#,
  sum(Sales_08_09.[$_Sold]) as 'Sales Units'
  from Sales_08_09 left join Shipped_09 on
  Sales_08_09.Item_ID=Shipped_09.Item_No
  where Shipped_09.Order# is not NULL
  group by Shipped_09.Order#
  order by 2 desc)B






