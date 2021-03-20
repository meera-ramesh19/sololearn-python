select 
sum(Sales_08_09.[$_Sold]) as 'total sales $',
sum((Sales_08_09.[$_sold])-(Sales_08_09.[Total_Cost])) as 'Total gross margin $',
sum(((Sales_08_09.[$_Sold])-(Sales_08_09.[Total_Cost]))/sum([$_Sold]) as 'TGM %'
from Sales_08_09 join Shipped_09 on Shipped_09.Item_No=Sales_08_09.Item_no
where Sales_08_09.Dept not in('Disc', 'Seasonal') and 
Shipped_09.Shipping_date != (month(date)='09')
and Sales_08_09.[$_Sold] !=0 
having 'TGM%' >0.60