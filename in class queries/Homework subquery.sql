/*

 total sales $
 total gross margin $
 total gross margin %
 purchased in August only 

 top fourth,sixth and second

 Sales_08_09

 */

 select *
 from(select 
 [Dept],
 sum([$_Sold]) as ' total sales $',
 sum([$_Sold] - [Total_Cost]) as 'Total gross margin $',
 sum([$_Sold]-[Total_Cost])/sum([$_Sold]) as 'Total gross margin %',
 row_number() over(order by [Dept] asc ) as 'Row #'
 from Sales_08_09
 where month(Date)='08'
 group by Dept)A
 where A.[Row #] % 2= 0 and
 [Row #] between 2 and 6

 
 
 /* 
 
 total sales of all departments
top 5 classes with highest sales $
for August
Date
$_Sold
Total_cost
Class
Dept
pull info from
Sales_08_09

*/

select 
sum([Total Sales $]) as 'Overall Dept Sales'
from(select top 5 
[Dept],
[Class],
sum([$_Sold] - [Total_Cost]) as 'Total Sales $'
from Sales_08_09
where Month(date)='08' 
group by [dept],
[Class]
having  sum([$_Sold] - [Total_Cost]) > 0
order by [Class])D




 /*avg ship gross margin $
top 10 states
no tax rate

Pull items from
Tax_Table_19_US,
Zip,
Shipping_Carrier
*/

select top 10 
Zip.State,
Shipping_Carrier.order_total,
avg(Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost) as 'AGM $'
from Shipping_Carrier join zip on Zip.zipcode=Shipping_Carrier.zip
join Tax_Table_19_US on Zip.state=Tax_Table_19_US.State
where Tax_Table_19_US.Tax = 0
group by Zip.state,
Shipping_Carrier.order_total
order by 3 desc
 
 
 /* 
 
 4th problem
first,third ,fifth states 
most order volume (order count)

zip
Shipping_Carrier
*/

select *
from(select top 5
zip.state,
count(Shipping_Carrier.[4P_Order]) as 'Order count',
row_number() over( order by Zip.state) as 'Row #'
from Shipping_carrier join Zip on Zip.zipcode=Shipping_Carrier.zip
group by Zip.state)A
where A.[Row #] % 2<>0 and 
[Row #] between 1 and 5
order by 'Order count' 

/* 
order $
least performing state
not in international region


pull info from
zip
Shipping_Carrier

*/

select Zip.state,
Zip.Region,
min(Shipping_Carrier.order_total)as 'lowe'
from Shipping_Carrier left join Zip on zip.zipCode=Shipping_Carrier.zip
group by Zip.state,
Zip.Region
having min(Shipping_Carrier.order_total)> 0 and
Zip.Region !='International'
order by 3 asc

/* I was not sure whether you wanted
only one state or all states. Hence the two queries*/

select top 1
Zip.state,
Zip.Region,
min(Shipping_Carrier.order_total)as 'lowe'
from Shipping_Carrier left join Zip on zip.zipCode=Shipping_Carrier.zip
group by Zip.state,
Zip.Region
having min(Shipping_Carrier.order_total)> 0 and
Zip.Region !='International'
order by 3 asc