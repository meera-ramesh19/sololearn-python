/*Pull the total shipping gross margin $ (ship rev - ship cost) by city and state.
Any city/state that had a ship profit dollar less than or equal to $0, label it as
No Profit. If the profit dollar is greater than $0, label as profit.*/


select Zip.city,
Zip.State,
sum(Shipping_Carrier.Shipping_Revenues-Shipping_Carrier.Shipping_Cost) as 'Total ship GM%',
case when Shipping_Carrier.Shipping_Revenues-Shipping_Carrier.Shipping_Cost < 0 then 
'No Profit' else 'Profit' end as 'Profitable'
from Shipping_Carrier join Zip on Zip.zipCode=Shipping_Carrier.Zip
group by Zip.City,
Zip.state ,
case when Shipping_Carrier.Shipping_Revenues-Shipping_Carrier.Shipping_Cost < 0 then 
'No Profit' else 'Profit' end 

/* Below we get different results even though the query works without case in groupby*/
/*so the above query is the right query*/
SELECT
Zip.city,
Zip.state,
SUM(Shipping_Carrier.Shipping_revenues - Shipping_Carrier.Shipping_cost) AS 'GM $',
CASE WHEN SUM(Shipping_Carrier.Shipping_revenues - Shipping_Carrier.Shipping_cost) <= 0 THEN 'No Profit' ELSE 'Profit' END AS 'Profitable'
FROM Shipping_Carrier JOIN Zip
ON Shipping_Carrier.zip = Zip.zipCode
GROUP BY Zip.city,Zip.state
