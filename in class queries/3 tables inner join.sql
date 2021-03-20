

/*
orders
state 
order total 
tax rate


data comes 
from 
tax table
shipping Carrier


commonality table is zip
broker table is zip
*/


select Shipping_Carrier.[4P_Order],
Tax_Table_19_US.Tax,
Shipping_Carrier.order_total * Tax_Table_19_US.Tax as 'Tax $'
from Shipping_Carrier join zip on zip.zipcode=Shipping_Carrier.zip
join Tax_Table_19_US on Tax_Table_19_US.state=zip.state
where Tax_Table_19_US.Tax > 0.0

 
