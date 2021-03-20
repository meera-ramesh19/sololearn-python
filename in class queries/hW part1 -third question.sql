select count(distinct city) as 'CCount ',
state
from Zip
where region in('northeast','southeast','southwest') 
group by state
order by ccount, state






