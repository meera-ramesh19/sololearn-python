/* 
	Return the items and their total sales $ for 9/12/2019
	but only if the sales $ were greater than the overall minimum sales $ amount.
  */

  select Item_ID,
  sum([$_Sold]) as 'Sales $'
  from Sales_08_09
  where Date ='09-12-2019' and 
   [$_Sold] >
  (select min([$_Solsed])
   from Sales_08_09
   where [$_Sold] >0)
   group by Item_ID
  