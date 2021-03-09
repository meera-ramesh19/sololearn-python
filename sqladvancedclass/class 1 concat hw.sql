
/*Replace UPS/UPS Expedited Mail Innovations with USPS. Call the column USPS.
Return the first four characters from this column and combine it with the tracking number.
Call this column TRK ID.*/


select [4P_Order],
[Carrier Class],
concat([4P_Order],'-',[Carrier Class]),
concat([4P_Order],'Whitney')
from Shipping_Carrier

select [4P_Order],
replace([Carrier Class],'UPS/UPS Expedited Mail Innovations','USPS') as 'USPS',
concat(left(replace([Carrier Class],'UPS/UPS Expedited Mail Innovations','USPS'),4),TRK) as 'TRK ID'
from Shipping_Carrier






/*	Return the last 2 digits from the item number. Replace item ending in 12 with the letter A. 
Call this column New_Item_No. Combine the department, class and the last two digits from the New Item No column.*/




select *,
replace(right(Item_ID,2),'12','A') as 'New_Item_No',
concat(Dept,'-',[Class],'-',replace(right(Item_ID,2),'12','A')) as 'Concat column'
from Sales_08_09


/*9.)	Return the order number, zip code, and a 
combination of the zip code as XXX-XX, 
an asterisk, and the order number.*/

select Shipping_Carrier.[4P_Order],
Zip.zipCode,
concat(Zip.zipCode,'*',Shipping_Carrier.[4P_order]) as 'Zip code combo'
from Shipping_Carrier join zip on Zip.zipcode=Shipping_Carrier.zip
where len(zipCode)=5

/* or*/

select [4P_order],
zip,
left(Zip,3)