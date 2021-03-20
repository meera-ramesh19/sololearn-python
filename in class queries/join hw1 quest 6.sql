select top 10
Sales_08_09.[$_Sold],
Sales_08_09.[Unit_Sold],
Shipped_09.[Dept_],
Shipped_09.Class_
from Sales_08_09 join Shipped_09 on Shipped_09.Item_no=Sales_08_09.Item_No
where month(Shipped_09.Shipping_date)='09' and
month(Sales_08_09.Date) not in ('08','09')  and
[unit_Sold] > 0
order by 2 desc


Select top 10 Shipped_09.Item_No,
Item_ID,
Shipped_09.Dept_,
Shipped_09.Class_,
sum(Shipped_09.Units_sold) as 'Total Sales units'
from Shipped_09 left join Sales_08_09 on Shipped_09.Item_No=
Sales_08_09.Item_ID

