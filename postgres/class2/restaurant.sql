select ph_no,
total,
discount,
total-discount as 'Net_total'
from delivery
where restaurant='new'
order by 4 desc