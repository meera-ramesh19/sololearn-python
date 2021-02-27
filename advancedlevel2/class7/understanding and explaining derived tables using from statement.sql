select sum(Order_$) as 'Order_Total'
from(select
Zip.State,
Zip.City,
sum(Shipping_Carrier.Order_Total) as 'Order_$',
count(distinct [4P_Order]) as 'Order_Count'
from Shipping_Carrier join Zip on Zip.zipCode = Shipping_Carrier.Zip
where Zip.Region not in ('International','Puerto Rico','Guam')
group by Zip.State,Zip.City)A
where State in ('Alabama','Louisiana','Mississippi','Georgia','Florida')

/* Explanation

--What does the derived table query say?
/*Pulling the State and City from the Zip table and providing the total sales $ and
number of orders for those states and cities from the Shipping_Carrier table but only
if the Region is not International, Puerto Rico, or Guam*/

--What does the outer query say?
/*Calculate the total sales $ from the Order_$ column from table A (derived table query)
but only for Alabama, Louisiana, Mississippi, Georgia, and Florida*/

--What does the ENTIRE query say?
/*Calculate the total sales $ for the states of Alabama, LA, MS, GA, and FL from 
table A, in which table A pulls the state and city from the Zip table and calculates the 
total sales $ and number of orders for those states and cities from the Shipping Carrier
table but only for Regions that are not International, PR, or Guam*/
*/

/*My question -You mentioned in earlier classes in subquery we need to apply filter in both the outer and subquery. Why is it not applicable here?
answer-That is for subqueries in the select statement
We are working on subqueries in the from statement
*/
/*This is the revised query of above query*/

select State,
sum(Order_$) as 'Order_Total'
   from
   (select
   Zip.State,
   Zip.City,
   sum(Shipping_Carrier.Order_Total) as 'Order_$',
   count(distinct [4P_Order]) as 'Order_Count'
   from Shipping_Carrier join Zip on Zip.zipCode = Shipping_Carrier.Zip
   where Zip.Region not in ('International','Puerto Rico','Guam') 
   group by Zip.State,Zip.City)A
where State in ('Alabama','Louisiana','Mississippi','Georgia','Florida')
group by State


/*problem 2*/

select top 2 Dept,
Sales_$,
Column3
from(select top 5 Dept,
sum([$_Sold]) as 'Sales_$',
sum([$_Sold])/(select sum([$_Sold]) from Sales_08_09) as 'Column3'
from Sales_08_09
group by Dept
order by 2 desc)A
order by 2 asc

/*
--What does our derived table query in the FROM statement say?
/*Pull the top 5 Departments, total sales $ and % to total for the 5 dept
with the largest total sales $*/

--What does the subquery in the the derived table query say?
/*Calculating the total/overall sales $ from the Sales 08 09 table*/

--What does the calculation that contains the subquery in the derived table query say?
/*Calculating the total sales $ for the top 5 departments divided by the overall sales $
amount......AKA % to total*/

example:
Accessorties $ 1000/15,000
gear         $2000
Disc         $ 3000
Shirts       $ 4000
pants        $ 5000
total         $ 15000


--What does the outer query say?
/*Pulling the 2 lowest performing departments based on the sales $, along with the % to total
from Column 3 from table A*/





*/