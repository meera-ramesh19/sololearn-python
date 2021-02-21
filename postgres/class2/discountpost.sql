select "Restaurant"
"Food_Type",
avg("Turn_Time") as "Avg_del_time",
avg("Total"-"Discount") as "Net_total"
from "2019"."Delivery"
group by "Restaurant", "Food_Type"
having avg("Turn_Time") > 30
order by 1 