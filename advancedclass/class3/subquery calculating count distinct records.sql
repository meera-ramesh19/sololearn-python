/* return the August sales  $ and August average daily sales $ by item*/


/* item  Sales$  avg$(sales$/order date for august)
12345    100     100/20
34567    200     200/20
*/

select Item_ID,
sum([$_Sold]) as 'Sales $',
  (select count(distinct Date)
   from Sales_08_09
   where month(Date)='08') as 'Day count',
    sum([$_Sold])/
	(select count(distinct Date)
  from Sales_08_09
  where month(Date) = '08') as 'Avg Aug. $'


from Sales_08_09
where month(Date) = '08'
group by Item_ID
