/*Return the states that had no orders placed in them. If the state is
in the Southeast region, mark as "Local". If not, mark as "Distant".*/

/* What's needed?
states - no orders placed
region
   southeast -local
     not southeast - not local*/

/*
select Shipping_Carrier.[4P_Order],
Zip.state,
zip.region,
Shipping_Carrier.Order_date,
zip.zipCode,Shipping_Carrier.zip
from zip right join Shipping_Carrier on zip.zipCode=Shipping_carrier.Zip
where zip.state is null 
group by Shipping_Carrier.[4P_Order],
Zip.state,
zip.region,
Shipping_Carrier.Order_date
the above says where there is not mathcing zip from shipping to zip*/

select distinct Zip.state,
Zip.Region,
case when Zip.Region ='Southeast' then 'Local' else 'Distant' end as 'Territory'
from Shipping_Carrier full join Zip on Zip.zipcode=Shipping_Carrier.zip
where Shipping_Carrier.Zip is null

/*where as the abovehere */