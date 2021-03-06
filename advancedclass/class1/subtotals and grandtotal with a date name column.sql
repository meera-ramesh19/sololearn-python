/* create a grand total and subtotals for the following:
order count by carrier for saturday and sunday


needed
carrier class
day of week :saturday and sunday
order count

*/


select isnull([Carrier Class] , 'Grand Total' )  as 'Carrier',
isnull(Datename(Weekday,Order_Date), 'SubTotal') as 'Day of Week',
count([4P_Order]) as 'Order Count'
from Shipping_Carrier
where Datename(Weekday,Order_date) in ('Saturday','Sunday')
group by rollup ([Carrier Class],Datename(Weekday,Order_Date))
