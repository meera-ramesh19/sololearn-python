/* return the 6th-10th largest orders in terms of the 
order total that was purchasd during sales(8/7 -8/27) that
was ordered using UPS ground*/
select [4P_order],
order_total,
[Row #]
from(select *,
row_number() over (order by Order_Total desc) as 'Row #'
from Shipping_Carrier
where Order_date between '2019-08-07' and '2019-08-27' and
[Carrier Class]='UPS/UPS Ground')B
where [Row #] between 6 and 10

/* based on the order total it is ranked by the row*/