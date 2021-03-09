 /*Return the discount Shipping Gross Margin (Shipping Revenue - Shipping Cost) for UPS carriers by Day of the Week (sort by day of the week) , but correct the following before doing so:
o All carriers except UPS/UPS Expedited Mail Innovation should be UPS. UPS/UPS Expedited Mail Innovation should be USPS
*/
select datename(weekday,Order_Date) as 'Day of the Week',
sum(Shipping_Revenues- Shipping_Cost) as 'Ship GM $',
case when [Carrier Class] = 'UPS/UPS Expedited Mail Innovations' then 'USPS' else 'UPS' 
end as 'Carrier'
from Shipping_Carrier
where case when [Carrier Class] = 'UPS/UPS Expedited Mail Innovations' then 'USPS' else 'UPS' 
end = 'UPS'
group by datename(weekday,Order_Date),
case when [Carrier Class] = 'UPS/UPS Expedited Mail Innovations' then 'USPS' else 'UPS' 
end
order by (case when datename(weekday,Order_Date) = 'Monday' then 1
when datename(weekday,Order_Date) = 'Tuesday' then 2
when datename(weekday,Order_Date) = 'Wednesday' then 3
when datename(weekday,Order_Date) = 'Thursday' then 4
when datename(weekday,Order_Date) = 'Friday' then 5
when datename(weekday,Order_Date) = 'Saturday' then 6
else 7 end)


/* Return the last 2 digits from the item number. Replace item ending in 12 with the letter A.
Call this column New_Item_No. Combine the department, class and the last two digits from the New Item No column*/
select
replace(L2D,'12','A') as 'NEWITEM NO',
concat(Dept,'-',Class,'-',
from
(select *,
right(Item_ID,2) as 'L2D'
from Sales_08_09)A