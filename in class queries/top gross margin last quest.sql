/* what is the average ship margin $ for the bottom
10 cities and states with lowest shipping gross $ from
8/07-8/27 but only for cities with a positive gross margin %

bottom 10 cities and states-zip
lowest ship gross margin % -shipping_Carrier

*/


select avg([Gross Margin %]) as 'avg gm %'
from(select top 10 
Zip.city,
Zip.state,
sum(Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost)/sum(Shipping_Carrier.Shipping_revenues) as 'Gross margin %'
from Shipping_Carrier join Zip on Zip.zipcode=Shipping_Carrier.zip
where Shipping_Carrier.Shipping_revenues!=0 and
Shipping_Carrier.Order_date between '2019-08-07' and '2019-08-27' 
group by Zip.city,Zip.state
having sum(Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost)/sum(Shipping_Carrier.Shipping_revenues) > 0
order by sum(Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost)/sum(Shipping_Carrier.Shipping_revenues)  asc)E

