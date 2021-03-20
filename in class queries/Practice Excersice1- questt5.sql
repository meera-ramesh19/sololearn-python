select top 10 
count(distinct city) as 'Countcity',
state
from Zip
group by state
having count(State)> 10
order by Countcity desc
