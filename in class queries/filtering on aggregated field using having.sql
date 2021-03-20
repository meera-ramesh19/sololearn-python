/*Provide the average shipping gross margin $ by each carrier class
but only for non USPS carrier classes. Ship Gross Margin $:
Ship Rev. - Ship. Cost.*/


/* whats needed?
average
*/
/*my answer
select  
cast(avg([ [Shipping_revenue] -[ Shipping_Cost] ])as money ) as 'Avg Gross Margin $'
FROM Shipping_Carrier
where not in('USPS') 
*/
select  [Carrier_Class],
cast(avg([ [Shipping_revenue] -[ Shipping_Cost] ])as money ) as 'Avg Gross Margin $'
FROM Shipping_Carrier
where [Carrier_class] != 'UPS/UPS Expedited Mail Innovations'
group by [Carrier_class]


/*Select - Pulls data from fields
From  - Table Location
Where - Filters NON AGGREGATED FIELDS
Group By - Summarizes
Having - Filters AGGREGATED FIELDS
Order By - Sorts*/

/*Provide the average shipping gross margin $ by each carrier class
but only for non USPS carrier classes but only if the average ship GM $
is greater than $5. Ship Gross Margin $:
Ship Rev. - Ship. Cost.*/


select [Carrier Class],
avg(Shipping_revenues-Shipping_cost) as 'GM $'
from Shipping_Carrier
where [Carrier Class] != 'UPS/UPS Expedited Mail Innovations'
group by [Carrier Class]
having avg(Shipping_revenues-Shipping_cost) > 5
