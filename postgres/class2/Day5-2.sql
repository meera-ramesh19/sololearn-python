select First_Name,
Last_Name,
Email,
Customers.Ph_No,
City,
State,
sum(Fee_No_Tip) as 'Total_Fees',
sum(Total-Discount) as 'Net_Total'
from Customers join Delivery on Delivery.Ph_No=Customers.Ph_no
join Market on Market.Ph_No=Delivery.PH_NO
group by 1,2,3,4,5,6
having sum(Total-Discount) <= 0
