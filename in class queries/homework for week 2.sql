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