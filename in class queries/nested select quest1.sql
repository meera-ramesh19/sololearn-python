/*Return the item with the lowest costs that was purchased on the first day of sale,
which was 8/7. Be sure t/* Return the state with the highest tax rate
*/


select *
from
(select state,
Tax,
row_number () over(order by Tax desc) as 'Row #' 
from Tax_Table_19_US )A
where [Row #] =23
/*
SELECT *
FROM
(
SELECT State, Tax 
ROW_NUMBER() over (order by Tax desc) as 'Row #'
FROM Zip)A
WHERE [Row #] = 1
*/o exlcude items with $0 costs.*/

