select *
from
(select state,
Tax,
row_number() over (order by Tax desc) as 'Row #'
from Tax_Table_19_US)A
where [Row #]=23