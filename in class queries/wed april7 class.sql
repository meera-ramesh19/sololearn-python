/*Provide the tax rate for each order. Calculate the tax $ paid for each
order (Tax rate * Order Total)*/

/*What's Needed?
Orders - Shipping Carrier
Tax Rate - Tax
Order Total * Tax Rate = Tax $ - Shipping Carrier + Tax*/

/*Tables we will pull data from:
Tax Table
Shipping Carrier */



select Shipping_Carrier.[4P_Order],
Tax_Table_19_US.Tax,
Shipping_Carrier.Order_Total * Tax_Table_19_US.Tax as 'Tax $'
from shipping_carrier join zip on zip.zipcode=Shipping_Carrier.zip 
join Tax_Table_19_US on Tax_Table_19_US.state=zip.state



/*Return the overall average order $ and total order $ for the top 10 cities
and states in the West and Southeast regions based on the total sales $ but
only for states with a tax rate.*/

/*What's Needed?
Average $ - Shipping Carrier
Total Order $ - Shipping Carrier
Top 10 cities and states - Zip
Regions - Zip (excl. West and Southeast)
Tax Rate - Greater than 0% - Tax table*/



select 
from shipping_carrier join zip on zip.zipcode=Shipping_Carrier.zip
join Tax_Table_19_US on Tax_Table_19_US.State=Zip.State


select top 10 Zip.City,
Zip.State,
avg(Shipping_Carrier.Order_Total) as 'Avg Order $',
sum(Shipping_Carrier.Order_Total) as 'Total Order $'
from shipping_carrier join zip on zip.zipcode=Shipping_Carrier.zip
join Tax_Table_19_US on Tax_Table_19_US.State=Zip.State
where Tax_Table_19_US.tax >0 and Zip.Region in ('West','Southeast')
group by Zip.City, Zip.State
order by 4 desc



select Shipping_Carrier.[4P_Order],
Tax_Table_19_US.Tax,
Shipping_Carrier.Order_Total * Tax_Table_19_US.Tax as 'Tax $'
from shipping_carrier full join zip on zip.zipcode=Shipping_Carrier.zip 
full join Tax_Table_19_US on Tax_Table_19_US.state=zip.state



select Shipping_Carrier.*,
Zip.*,
Tax_Table_19_US.*
from shipping_carrier full join zip on zip.zipcode=Shipping_Carrier.zip 
full join Tax_Table_19_US on Tax_Table_19_US.state=zip.state
/*what is needed
region -zip
sales - Sales-08-09
order date   shipping carrier and shipped_09
zip shipping Carrier ans zip

Provide the tax rate for each order. Calculate the tax $ paid for each
order (Tax rate * Order Total)*/

/*What's Needed?
Orders - Shipping Carrier
Tax Rate - Tax
Order Total * Tax Rate = Tax $ - Shipping Carrier + Tax*/

/*Tables we will pull data from:
Tax Table
Shipping Carrier */

select Shipping_Carrier.*,
Zip.*,
Tax_Table_19_US.*
from shipping_carrier full join zip on zip.zipcode=Shipping_carrier.zip
 full join Tax_Table_19_US on Tax_Table_19_US.state=zip.state
 where zip.zipcode is null