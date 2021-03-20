/* cities not registered in zip table
orders from shippin_carrier

whats needed

all order information from shipping_Carrier
no  city, state or region from Zip
total adjusted order weight = weight +0.25lbs
Transit time
•	Ground orders, “4 – 7 business days”
•	USPS order, “5 – 7 business days”
•	Surepost, “3 – 5 business days”
•	Next Day Air, “1 business day”
•	3 Day Select, “3 business days”
•	Standard, “3 – 7 business days”
order_date 08/07-08/27

*/

select Shipping_Carrier.weight + 0.25 as 'Total adjusted order weight',
Shipping_Carrier.*,
Shipping_Carrier.zip,
Zip.zipcode,
Zip.city,
Zip.state,
zip.Region,
case when Shipping_Carrier.[Carrier Class] = 'Ground orders' then '4-7 business days'
when Shipping_Carrier.[Carrier Class]='USPS order' then '5-7 business days'
when Shipping_Carrier.[Carrier Class]='Surepost' then '3-5 business days'
when Shipping_Carrier.[Carrier Class]='Next Day Air' then '1 business day'
when Shipping_Carrier.[Carrier Class]='3 Day Select' then '3 business days'
else '3-7 business days' end as 'Transit Time'
from zip right join Shipping_Carrier on zip.zipcode=shipping_Carrier.zip
where Zip.city is null and
zip.state is null and
zip.region is null and
Order_date between '2019-08-07' and '2019-08-27'
order by Shipping_Carrier.weight desc


/* case needed for cities/state is Atlanta ,Ga
as local and others as long distance

top 10 cities and states
Total shipping Margin %
Total Tax $(order_Total * tax rate)
Shipping margin atleast 60%


Pull info from tables
Shipping_Carrier, zip, Tax_Table_19_US

*/

select Shipping_Carrier.[4P_Order],
Zip.city,
zip.zipcode,
Shipping_Carrier.zip,
sum(Shipping_Carrier.order_total* Tax_Table_19_US.Tax ) as 'Total Tax $',
sum(Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost)/sum(Shipping_Carrier.Shipping_revenues) as 'Total margin %',
case when Zip.city ='Atlanta. Ga' then 'local'
else 'Long distance' end as 'Cities/states'
from Shipping_Carrier join zip on Zip.zipcode = Shipping_Carrier.zip
join Tax_Table_19_US  on Tax_Table_19_US.state=Zip.state
where Shipping_Carrier.Shipping_revenues !=0 
group by Shipping_Carrier.[4P_Order],Zip.city,zip.zipcode,
Shipping_Carrier.zip
having sum(Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost)/sum(Shipping_Carrier.Shipping_revenues) > 0.60
order by 3 desc

/* total order $,
total shipping gross margin $,
number of orders
transit time if margin $ is positive

case needed for Transit time
•	Ground orders, “4 – 7 business days”
•	USPS order, “5 – 7 business days”
•	Surepost, “3 – 5 business days”
•	Next Day Air, “1 business day”
•	3 Day Select, “3 business days”
•	Standard, “3 – 7 business days”


pull info from
Shipping_Carrier

*/


Select [4P_order],
count(order_total) as ' Totalorder $',
sum(Shipping_revenues-Shipping_cost) as 'TGM $',
[Carrier Class],
case when [Carrier Class]='Ground' then '4-7 Business days'
when [Carrier Class]='USPS order' then '5-7 business days'
when [Carrier Class]='Surepost' then '3-5 business days'
when [Carrier Class]='Next Day Air' then '1 business day'
when [Carrier Class]='3 Day Select' then '3 business days'
else '3-7 business days' end as 'Transit Time'
from Shipping_Carrier
group by [4P_Order], [Carrier Class] 
having sum(Shipping_revenues-Shipping_cost)>0
order by 4 desc


