
/*Aggregate Functions - "Lumps" data together:
sum - Totals or adds together
count - Counts the records in a column
min - Minimum value from a column
max - Maximum value from a column
avg - Averages*/

/* Return the average gross margin $ for
in the Fitness, Essentails and Disc departments.
Gross Margin $: Sales$- total cost*/


select avg([$_sold] - Total_Cost) as 'Avg GM $'
from Sales_08_09
where dept in('Fitness', 'Essentials', 'Disc')