select  Order_Date,
[4P_Order],
Order_Total
from Shipping_Carrier
where Order_Date between '08-07-2019' and '08-27-2019' and Order_Total >
(select sum(Order_Total)/count(distinct([4P_Order]))
from Shipping_Carrier
where datename(month,Order_Date)='August')
order by 3 desc


/* SUBQUEREIES IN THE WHERE STATEMENT
What is the outer query saying?
Pull the order date, the order numbers (4P Order), and the order total from the
Shipping Carrier table for the dates between 8/7/2019 - 8/27/2019. Sort on the Order Totals
from largest to smallest

--What is the subquery saying?
Calculate the total order $ / the number of unique orders for the month of August
Translation: Providing the average order amount for the month of August

--What does the ENTIRE query say?
Pull the order date, order numbers, and order total from the Shipping Carier table
for the dates between 8/7/2019 - 8/27/2019 BUT only if the order total is greater than
the average order amount for the month of August. Sort on the Order Totals from largest
to smallest

*/

select Item_ID,
[$_Sold]
from Sales_08_09
where Date = '2019-09-12' and [$_Sold] >
(select min([$_Sold])
from Sales_08_09
where [$_Sold] > 0)

/*--What is the outer query saying?
/*Pull the items and the sales $ for the items from the Sales 08 09 table for the
sales date of 9/12/2019*/

--What is the subquery saying?
/*Pull the minimum sales $ record from the Sales 08 09 table. Only look at sales $ greater
than 0*/

--What is the ENTIRE query saying?
/*Pull the items and the sales $ for the items from the Sales 09 09 table for
the sales date of 9/12/2019 and only if the item's sales $ is greater than 
the minimum sales $ record from the Sales 08 09 table, only minimum records that is greater
than 0.*/
*/
select Item_ID,
Sales$
from(select Item_ID,
sum([$_Sold]) as 'Sales$'
from Sales_08_09
where month(Date)='08'
group by Item_ID)A
where Sales$ > 
(select 
sum([$_Sold])/count(distinct(Item_ID)) as 'Avg$'
from Sales_08_09
where datename(month,Date)='August')
order by 2 desc

/*
--What does the FROM statement query say (derived table)?
/*Pull the items and the total sales for those items from the Sales 08 09 table for the month
of August*/

--What does the outer query query say?
/*Pull the Item ID and the Sales $ from the derived table or table A where the Sales $ are
greater than X*/

--What does the subquery say?
/*Calculate the total sales $ / unique number of items for the month of August.
Translation: Average sales $ for an item*/

--What does the ENTIRE query say?
/*Pull the Item IDs and the Sales $ from Table A (derived table) but only for items whose
sales $ are greater than the average sales $ for an item for the month of August. Sort
on the Sales $ column from largest to smallest*/


DERIVED TABLE IS A TEMPORARY TABLE WHERE THE QUERY RESULTS FROM THE
QUERY MAKES UP THAT TABLE

*/