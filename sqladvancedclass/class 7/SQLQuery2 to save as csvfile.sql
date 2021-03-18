select State,
sum(Order_$) as 'Order_Total'
   from
   (select
   Zip.State,
   Zip.City,
   sum(Shipping_Carrier.Order_Total) as 'Order_$',
   count(distinct [4P_Order]) as 'Order_Count'
   from Shipping_Carrier join Zip on Zip.zipCode = Shipping_Carrier.Zip
   where Zip.Region not in ('International','Puerto Rico','Guam') 
   group by Zip.State,Zip.City)A
where State in ('Alabama','Louisiana','Mississippi','Georgia','Florida')
group by State
