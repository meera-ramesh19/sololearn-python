/* question 1*/

select Zip.state,
cast(sum(Shipping_Carrier.order_total*Tax_Table_19_US.Tax) as money) as'Tax $'
from Shipping_Carrier  join Zip on Zip.zipCode=Shipping_Carrier.zip
join Tax_Table_19_US on Tax_Table_19_US.State=zip.state
where Tax_Table_19_US.Tax > 0
group by Zip.state
order by 2 desc

/*question 2*/


select top 3 Zip.Region,
cast(sum(Shipping_Carrier.order_total) as money) as'largest Sales $'
from Shipping_Carrier join zip on zip.zipCode=Shipping_Carrier.zip
where Shipping_Carrier.Order_date between '2019-08-07' and '2019-08-27'
group by Zip.Region
order by 2 desc


/* Question 3*/

select Item_ID,
count(Item_ID) as 'Items count',
cast (max([$_Sold]) as money) as 'Largest sales $',
cast(min([$_Sold]) as money) as 'Lowest sales $',
cast(sum([$_Sold]) as money ) as 'total Sales $',
cast(sum([$_sold]-[Total_Cost]) as money ) as'Total gross margin $'
from Sales_08_09
where date between '2019-08-21' and '2019-08-30'
and ([$_Sold]) > 0
group by Item_ID

/* Question 4*/

select Zip.state,
count(Shipping_Carrier.[4P_Order]) as 'Number of orders',
cast(sum(Shipping_Carrier.Order_total) as money)as  'total sales $'
from Shipping_Carrier join Zip on zip.zipCode=Shipping_Carrier.zip
where Zip.state not in ('Alaska', 'Hawaii')
group by Zip.state
order by 2 desc


/*Question 5*/
Select top 100 Shipping_Carrier.[4P_Order],
sum(Tax_Table_19_US.Tax * Shipping_Carrier.order_total ) as ' Total tax $',
sum(Shipping_Carrier.Shipping_revenues) as'Total shippin revenue',
sum(Shipping_Carrier.Shipping_cost) as 'Total shipping costs',
sum(Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost) as 'Total margin $',
sum(Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost)/sum(Shipping_Carrier.Shipping_revenues) as ' gross margin %'
from Shipping_Carrier join zip on zip.zipcode=Shipping_Carrier.zip
join Tax_Table_19_US on Tax_Table_19_US.state=zip.state
where Zip.Region='West' and 
Shipping_Carrier.Shipping_revenues !=0 and 
Shipping_Carrier.Shipping_Cost !=0
group by Shipping_Carrier.[4P_Order]
having sum(Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost)/sum(Shipping_Carrier.Shipping_revenues)> 0.60
order by 6 desc

/* Question 6 */

 select top 10 Shipped_09.Item_No,
 Sales_08_09.Item_ID,
 Shipped_09.Dept_,
 Shipped_09.Class_,
 sum(Shipped_09.Units_sold )as 'Top Sales $'
 from Shipped_09 left join Sales_08_09 on Shipped_09.Item_no=Sales_08_09.Item_ID
 where Sales_08_09.Item_ID is null
 group by Shipped_09.Item_No,Sales_08_09.Item_ID,Shipped_09.Dept_,
 Shipped_09.Class_
 order by 4 desc

 /* Question 7 */
select 
 Sales_08_09.Item_ID,
 sum(Sales_08_09.[$_Sold]) as 'Total sales',
 sum(Sales_08_09.[$_Sold]-Sales_08_09.Total_Cost) as 'TGM $',
 sum(Sales_08_09.[$_Sold]-Sales_08_09.Total_Cost)/sum(Sales_08_09.[$_Sold]) as 'TGM %'
 from Shipped_09 right join Sales_08_09 on Shipped_09.Item_No=Sales_08_09.Item_ID
 where Sales_08_09.Dept not in('Disc','Seasonal') and 
 Sales_08_09.[$_Sold] !=0 and
 Shipped_09.Item_No is null
 group by Sales_08_09.Item_ID
 having sum(Sales_08_09.[$_Sold]-Sales_08_09.Total_Cost)/sum(Sales_08_09.[$_Sold]) >0.60
 order by 'TGM %' desc