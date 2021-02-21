select Restaurant,
Food_Type,
avg(Turn_Time) as 'Avg_time',
sum(Total-Discount) as 'Net_total'
from Delivery
group by 2,1
having avg(Turn_Time) < 30
order by 1
