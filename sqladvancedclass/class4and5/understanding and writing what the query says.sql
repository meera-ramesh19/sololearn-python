
select Dept,
sum([$_Sold]) as 'Column1',
sum([$_Sold])/
(select sum([$_Sold])
from Sales_08_09
where datename(month,Date) = 'August') as 'Column2'
from Sales_08_09
where datename(month,Date) = 'August' 
group by Dept
order by 3 desc

--Answer:
--Pulling this data from the Sales 08 09 table:

--What is the outer query saying? Pull the total sales $ by Dept for the month of August.  

--What is the subquery saying? Pull the total sales $ (OVERALL) from the Sales 08 09 table for the month
--of August

--What is the calc doing? Calculate the total sales $ by Dept for the month of August
--divided by the overall sales $ for the month August

--What does the entire query say? Pull the total sales $ by Dept and the total sales $ by Dept
--divided by the overall sales $ for the month of August. Sort by the third column in the query
--from largest to smallest.


select Case when right(Item_ID,2) = 12 then 'Assembly'
when right(Item_ID,2) = 00 then 'Seasonal'
else 'Regular' end as 'Item_Status',

sum([$_Sold]) as 'Column1',

(select count(distinct Date)
from Sales_08_09
where datename(month,Date) = 'September') as 'Column2',

sum([$_Sold])/
	(select count(distinct Date)
	from Sales_08_09
	where datename(month,Date) = 'September') as  'Column3'


from Sales_08_09
where datename(month,Date) = 'September'

group by Case when right(Item_ID,2) = 12 then 'Assembly'
when right(Item_ID,2) = 00 then 'Seasonal'
else 'Regular' end


--What does the case statement say? If the last 2 digits from the Item ID column is
  --12, then you want an output of Assembly. If not, if the last 2 digits from the 
  --Item ID column is 00, then you want an output of Seasonal. If neither condition is
  --met, then you want an output of Regular. Call this column Item Status.

--Provide the total sales $ by Item Status for the month of Sept. 
--Item Status is determined by our case statement.

--What is the subquery saying?
--Count the number of unique days in the month of September

--What is the calculation saying?
--Calculate the total sales $ by Item Status for the month September/
--the number of unique days in the month of September

--What is the entire query?
--Provide the total sales $ by Item Status for the month of September

--and calculate the total sales $ by Item Status/
--the number of unique day in the month of September (Average daily Sales $ or  I think it was percentage of total sales by dept for the month of aug)

--query of multiple query use subquery in select

/* dept    sales   % to Total
shirts     100		100/1000
shoes		500
dresses		400
total		1000
percent of total subquery is essential
avg daily sales $ subquery is beneficia
when u want results of mutliple query and calculate the results we need subquery 
if u have formula and use an another query then we need subquery

*/

/*if u are filtering  in your outer query , please filter your subquery*/

/*subquery in the where*/