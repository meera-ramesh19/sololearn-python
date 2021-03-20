
/*How many items were sold in each of the top 5 departments with the highest
sales $ for the sales period of 8/7 - 8/27*/



/*Return the max and min sales $ for the 5 classes with the lowest sales $
between 8/7 - 8/27. Be sure to exclude the DISC class and $0 sales.*/

/*What's Needed?
Max Sales $
Min Sales $
Bottom 5 classes
Sales $
Order date between 8/7 - 8/27
Exlcude Disc Class
Exlcude $0 sales
*/

select top 5 class,
sum([$_sold]) as 'Sales $',
max([$_Sold])  as 'Max Sales $',
min([$_sold]) as 'Min Sales $'
from Sales_08_09
where date between '2019-08-07' and '2019-08-27' and
class != 'disc' and
[$_Sold] != 0
group by Class
order by 2
