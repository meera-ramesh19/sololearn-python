/*Pull a list of zip codes that sold an order but does not have any
matching geographic data in the zip table.*/


select Shipping_Carrier.zip,
zip.*
from zip right join Shipping_Carrier on zip.zipcode=Shipping_Carrier.zip
where zip.zipCode is null

/*TAble A -list all employees in company
Table b- list all employees with benefits

table a- list of all customers for bank of America
table b- list of all cutsomers for not have loans*/