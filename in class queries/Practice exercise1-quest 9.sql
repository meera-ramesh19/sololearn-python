select top 10 avg(([$_Sold]-[Total_cost])/[$_Sold]) as'HGM %',
count([Item_no]) as ' Items',
[dept]
from Sales_08_09
where month([Date]) ='08' and
dept !='Disc' and
[$_sold]<>0 and
(([$_sold]-[Total_cost])/[$_sold]) > .60 
group by dept
order by 2 desc, dept

