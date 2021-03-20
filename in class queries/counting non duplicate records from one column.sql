/*Count how many states are in the Southeast region*/

select count(distinct state) as 'State Count'
from zip
where Region = 'Southeast' 