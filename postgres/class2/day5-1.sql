select Ph_No,
Total-Discount as'Net_Total'
from delivery
where Restaurant = 'new' and Food_Type in ('bbq','asian') and 
total-Discount > 5