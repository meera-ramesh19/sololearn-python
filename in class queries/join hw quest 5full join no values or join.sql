select top 100
Shipping_carrier.[4P_Order],
sum(Tax_Table_19_US.Tax * Shipping_Carrier.Order_Total) as 'Tax $',
sum(Shipping_Carrier.Shipping_Revenues) as 'Ship Rev',
sum(Shipping_Carrier.Shipping_Cost) as 'Ship Cost',
sum(Shipping_Carrier.Shipping_Revenues - Shipping_Carrier.Shipping_Cost) as 'GM $',
sum(Shipping_Carrier.Shipping_Revenues - Shipping_Carrier.Shipping_Cost) /
sum(Shipping_Carrier.Shipping_Revenues) as 'GM %'
from shipping_carrier full join zip on zip.zipcode=shipping_carrier.zip
full join Tax_Table_19_US on Tax_Table_19_US.state=zip.state
where Shipping_Carrier.Shipping_Revenues != 0 and
Zip.Region ='West'
group by Shipping_Carrier.Zip,Zip.Zipcode,Zip.State,Tax_Table_19_US.State,
Shipping_carrier.[4P_Order]
having sum(Shipping_Carrier.Shipping_Revenues - Shipping_Carrier.Shipping_Cost) /
sum(Shipping_Carrier.Shipping_Revenues) > .60
order by [GM %] desc