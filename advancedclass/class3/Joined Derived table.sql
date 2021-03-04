/*Provide the overall average shipping gross margin $ (Shipping Revenues - Shipping Costs)
for the states in the West region*/

Select avg([Ship GM $]) as 'Avg Ship GM'
from
(Select Zip.state,
sum(Shipping_Carrier.Shipping_revenues-Shipping_Carrier.Shipping_Cost) as 'Ship GM $'
from Shipping_Carrier join Zip on Zip.Zipcode=Shipping_Carrier.Zip
where Zip.Region = 'West'
group by Zip.State)D



