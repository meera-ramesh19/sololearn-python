/*	From the Zip table, create a unique ID column that will combine the following:
•	Zip code
•	The records from the following column:
o	If the Region is International, Guam, Puerto Rico, or US Virgin Islands return an output value of International. If not, return as Domestic. Name this column as Status.
•	A hyphen

*/

select Region,
state,
zipCode,
concat(Zipcode,'-',case when Region='International' then 'International'
 when Region='Guam' then 'International'
 when Region='Puerto Rico' then 'International'
 when Region='Virgin Islands' then 'International'
 else 'Domestic' end) as 'Region Names'
from Zip


/*2.)	Return the discount Shipping Gross Margin (Shipping Revenue – Shipping Cost) for UPS carriers by Day of the Week (sort by day of the week) ,
but correct the following before doing so:
o	All carriers except UPS/UPS Expedited Mail Innovation should be UPS. UPS/UPS Expedited Mail Innovation should be USPS. 
*/


 select 
 datename(weekday,Order_Date) as 'Day of Week',
 sum(Shipping_Revenues-Shipping_Cost) as 'GM$',
 case when datename(weekday,Order_Date)='Monday' then 1
 when datename(weekday,Order_Date)='Tuesday' then 2
 when datename(weekday,Order_Date)='Wednesday'then 3
 when datename(weekday,Order_Date)='Thursday' then 4
 when datename(weekday,Order_Date)='Friday' then 5
 when datename(weekday,Order_Date)='Saturday' then 6
 else 7 end as 'Day Count',
 case when [Carrier Class] = 'UPS/UPS Expedited Mail Innovations' then 'USPS'
 else 'UPS' end as 'Carrier Class'
 from Shipping_Carrier
 where case when [Carrier Class] = 'UPS/UPS Expedited Mail Innovations' then 'USPS' else 'UPS' end = 'UPS'
 group by datename(weekday,Order_Date),
 case when [Carrier Class] = 'UPS/UPS Expedited Mail Innovations' then 'USPS'
 else 'UPS' end 
 order by 'Day Count' asc





/*	From the Sales 08 09 table, create a unique ID column that will combine the following:
•	The Department
•	| (This is a line special character)
•	The middle 4 digits of the Item number
•	The records from the following column:
o	If the item ends in 12, return as Assembly. If the item ends in 00, return as Seasonal. If neither, return as Regular.
*/
select Item_ID,
Dept,
substring(Item_ID,7,4) as 'String',
case when right(Item_ID,2)=12 then 'Assembly'
 when right(Item_ID,2)=00 then 'Seasonal'
 else 'Regular' end as 'Item Class',
 concat(Dept,'|',substring(Item_ID,7,4), '|',(case when right(Item_ID,2)=12 then 'Assembly'
 when right(Item_ID,2)=00 then 'Seasonal'
 else 'Regular' end)) as 'Unique ID'
from Sales_08_09

/*	Replace UPS/UPS Expedited Mail Innovations with USPS. Call the column USPS. 
Return the first four characters from this column and combine it with the tracking number. 
Call this column TRK ID. Use a derived table to get your answer.
*/
select concat(left(USPS,4),'|',TRK)
from
(select 
 TRK,
 replace([Carrier Class],'UPS/UPS Expedited Mail Innovations','USPS') as'USPS'
 from Shipping_Carrier)A

 /*2.)	Return the last 2 digits from the item number.
 Replace item ending in 12 with the letter A. Call this column New_Item_No. 
 Combine the department, class and the last two digits from the New Item No column. 
 Use a derived table to get your answer
 */

 select
 concat(Dept,'|',Class,'|',New_Item_No) as 'Concat                                      '
 from
 (select Dept,
 Class,
 replace(right(Item_ID,2),'12','A') as 'New_Item_No'
 from Sales_08_09)B