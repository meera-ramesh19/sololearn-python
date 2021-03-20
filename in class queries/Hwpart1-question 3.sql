
select count(distinct city) as 'CCount ',
state
from Zip
group by state
having count(state)> 10
