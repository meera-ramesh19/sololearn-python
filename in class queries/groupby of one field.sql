 /* return the total sales$ by department
 for the top 5 departments with the
highest sales $ for sales during 8/7 - 8/27 */ 
 select Dept,
 sum([$_sold]) as 'Sales $'
 from Sales_08_09
 group by dept

 /* 
 one column that is aggregated and other column that 
 is not aggrated
 Select - Pulls data from fields
From - Table location
Where - Filters data
Group By - Summarizes
Order By - Sorts
 */
 
 select top 5 Dept,
cast(sum([$_Sold]) as money) as 'Sales $'
from Sales_08_09
where date between '2019-08-07' and '2019-08-27'
group by dept
order by 2 desc
select Top 5 Dept,
cast(sum([$_sold]) as decimal)as 'Total Sales $'
from Sales_08_09
Where date between '2019-08-07' and '2019-08-27'
Group by Dept
Order by 2 desc
select top 5 Dept,
cast(sum([$_Sold]) as money) as 'Sales $'
from Sales_08_09
where date between '2019-08-07' and '2019-08-27'
group by dept
order by 2 desc
