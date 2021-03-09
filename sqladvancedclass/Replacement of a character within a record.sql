/*Replace UPS/UPS Expedited Mail Innovations with United States Postal Service*/


select [4P_Order],
[Carrier Class],
replace([Carrier Class],'UPS?UPS Expedited Mail Innovations','United States Postal Service') as 'Carrier Class'
from Shipping_Carrier

/*Replace UPS/UPS with UPS*/
select [4P_Order],
[Carrier Class],
replace([Carrier Class],'UPS/UPS ', 'UPS') as 'Replacement'
from Shipping_Carrier
