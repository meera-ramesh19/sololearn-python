/* average lead time
sales recorded for december > 0
sku 
dec sales 

pull info from 
inventory_december
Sales_units_nov_Dec
*/


select 
Sales_Units_Nov_Dec.SKU,
Sales_Units_Nov_Dec.DEC,
avg(Inventory_December.leadtime) as 'AVG time'
from Inventory_December join Sales_Units_Nov_Dec on Sales_Units_Nov_Dec.SKU=Inventory_December.idCatalog
where Sales_Units_Nov_Dec.DEC > 0 and
Inventory_December.leadtime is not null
group by Sales_Units_Nov_Dec.DEC,
Sales_Units_Nov_Dec.SKU
order by 3 desc,DEC desc



/* country name ,
country,
total sales of 2017,
total sales of 2018
commonality is country

pull info from
Geo_17
Geo_18
*/

select 
sum( Geo_17.January+ Geo_17.February+
      Geo_17.March+Geo_17.April+Geo_17.May+
	  Geo_17.June+Geo_17.July+Geo_17.August+
	  Geo_17.September+Geo_17.October+
	  Geo_17.November+Geo_17.December) as 'total 2017',
sum( Geo_18.[January ]+ Geo_18.February+
      Geo_18.March+Geo_18.April+Geo_18.May+
	  Geo_18.June+Geo_18.July+Geo_18.August+
	  Geo_18.September+Geo_18.October+
	  Geo_18.November+Geo_18.December) as 'total 2018',
Geo_18.[Country Name],
Geo_18.Continent
from Geo_17 left join Geo_18 on Geo_18.Country=Geo_17.Country
group by Geo_18.[Country Name],
Geo_18.Continent,Geo_17.Country, Geo_18.Country
having sum( Geo_18.[January ]+ Geo_18.February+
      Geo_18.March+Geo_18.April+Geo_18.May+
	  Geo_18.June+Geo_18.July+Geo_18.August+
	  Geo_18.September+Geo_18.October+
	  Geo_18.November+Geo_18.December) > 0 and
	  sum( Geo_17.January+ Geo_17.February+
      Geo_17.March+Geo_17.April+Geo_17.May+
	  Geo_17.June+Geo_17.July+Geo_17.August+
	  Geo_17.September+Geo_17.October+
	  Geo_17.November+Geo_17.December) != 0
order by Geo_18.[Country Name]

/* sales units in november
total inventory on hand 

pull info from table
Sales_units_Nov_Dec
Inventory_December

*/
/* using left join*/
select 
Inventory_December.idCatalog,
sum(Inventory_December.qtyOnHand) as 'total inventory',
Sales_Units_Nov_Dec.NOV,
Inventory_December.skuCost
from Sales_Units_Nov_Dec left join Inventory_December on
  Inventory_December.idCatalog=Sales_Units_Nov_Dec.SKU
where Sales_Units_Nov_Dec.NOV > 0 and
Inventory_December.idCatalog is not NULL
group by Sales_Units_Nov_Dec.NOV,
Inventory_December.idCatalog,
Inventory_December.skuCost


/*   using inner join */
select 
Inventory_December.idCatalog,
sum(Inventory_December.qtyOnHand) as 'total inventory',
Sales_Units_Nov_Dec.NOV,
Inventory_December.skuCost
from Sales_Units_Nov_Dec join Inventory_December on
  Inventory_December.idCatalog=Sales_Units_Nov_Dec.SKU
where Sales_Units_Nov_Dec.NOV > 0 
group by Sales_Units_Nov_Dec.NOV,
Inventory_December.idCatalog,
Inventory_December.skuCost

/* total sales in 2017
total sales in 2018
continents

pull data from 
Geo_17 and
Geo_18

*/

select 
count(distinct Geo_18.country) as 'Country count',
sum( Geo_18.[January ]+ Geo_18.February+
      Geo_18.March+Geo_18.April+Geo_18.May+
	  Geo_18.June+Geo_18.July+Geo_18.August+
	  Geo_18.September+Geo_18.October+
	  Geo_18.November+Geo_18.December) as 'total 2018',
sum( Geo_17.January+ Geo_17.February+
      Geo_17.March+Geo_17.April+Geo_17.May+
	  Geo_17.June+Geo_17.July+Geo_17.August+
	  Geo_17.September+Geo_17.October+
	  Geo_17.November+Geo_17.December) as 'total 2017',
case when Geo_18.[Continent] = 'Latin America' then 'South America' 
when Geo_18.[Continent] = 'Europe' then 'Europe'
when Geo_18.[Continent] = 'Australia' then 'Australia'
when Geo_18.[Continent] = 'Canada' then 'North America'
when Geo_18.[Continent] = 'Asia' then 'Asia'
when Geo_18.[Continent] = 'United States' then 'North America'
when Geo_18.[Continent] = 'China' then 'Asia'
when Geo_18.[Continent] = 'Australia' then 'Australia'
when Geo_18.[Continent] = 'Russia' then 'Asia'
when Geo_18.[Continent] = 'Africa' then 'Africa' end as ' Continent'
from Geo_17  join Geo_18 on Geo_18.Country=Geo_17.Country
group by case when Geo_18.[Continent] = 'Latin America' then 'South America' 
when Geo_18.[Continent] = 'Europe' then 'Europe'
when Geo_18.[Continent] = 'Australia' then 'Australia'
when Geo_18.[Continent] = 'Canada' then 'North America'
when Geo_18.[Continent] = 'Asia' then 'Asia'
when Geo_18.[Continent] = 'United States' then 'North America'
when Geo_18.[Continent] = 'China' then 'Asia'
when Geo_18.[Continent] = 'Australia' then 'Australia'
when Geo_18.[Continent] = 'Russia' then 'Asia'
when Geo_18.[Continent] = 'Africa' then 'Africa' end 
having sum( Geo_18.[January ]+ Geo_18.February+
      Geo_18.March+Geo_18.April+Geo_18.May+
	  Geo_18.June+Geo_18.July+Geo_18.August+
	  Geo_18.September+Geo_18.October+
	  Geo_18.November+Geo_18.December) > 0 and
	  sum( Geo_17.January+ Geo_17.February+
      Geo_17.March+Geo_17.April+Geo_17.May+
	  Geo_17.June+Geo_17.July+Geo_17.August+
	  Geo_17.September+Geo_17.October+
	  Geo_17.November+Geo_17.December) != 0
	  order by 'Country count' desc, 'total 2018' desc, 'total 2017' desc

