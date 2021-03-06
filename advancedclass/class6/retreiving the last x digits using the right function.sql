/*Return the total sales units, total sales $, total costs, and total margin $ (Sales $ - Cost)
for items ending in 12 for the month of August.*/

/*What's Needed?
Total sales units
Total sales $
Sales $ - Cost
Items- Ending in 12
Month - August*/


select sum(Unit_Sold) as ' Sales Units',
sum([$_sold]) as 'Sales $',
sum(Total_Cost) as 'Cost$',
sum([$_sold]- Total_Cost) as 'MArgin $'
from Sales_08_09
where datename(month,Date) ='August' and 
right(Item_ID,2)='12'

/* in sql does not matter if we put 12 in quotes 
or not in the right functionbut matters in excel
trim(right(Item_ID,2)='12'-removes leading and trailing spaces
*/