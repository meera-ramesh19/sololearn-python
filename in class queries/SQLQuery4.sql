/*Return a list of the 50 worst perforing items in terms of
sales $ for all departments except Fitness and Essentials during the sales
period of 8/7 - 8/27. Be sure not to include items that didn't sell anything.*/


Select Top 50 Item_ID,
Dept,
[$_Sold]
from Sales_08_09
where Dept not in ('Fitness','Essentials') and
[$_Sold] <> 0 and
Date between '2019-08-07' and '2019-08-27'
order by [$_Sold] asc