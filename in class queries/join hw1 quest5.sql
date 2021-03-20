Select top 100
sum(Shipping_Carrier.Shipping_revenues) as'Total shippin revenue',
sum(Shipping_Carrier.Shipping_cost) as 'Total shipping costs',
sum(Tax_Table_19_US.Tax* Shipping_Carrier.order_total ) as ' Total tax $',
(sum(Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost)) as 'Total shipping gross margin $',
(sum(Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_cost)/sum(Shipping_Carrier.Shipping_revenues)) as 'Total shipping gross margin %'
from Shipping_Carrier join zip on zip.zipcode=Shipping_Carrier.zip
join Tax_Table_19_US on Tax_Table_19_US.state=zip.state
where Zip.Region='West' and 
Shipping_Carrier.Shipping_revenues !=0 and 
Shipping_Carrier.Shipping_Cost !=0
having 'Total shipping gross margin %' > .60 
order by 5 desc
