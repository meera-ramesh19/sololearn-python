/* return a list of all states (no duplicates) in the 
southeast and northeast region*/

select distinct State,
Region
from Zip
where region in('Southeast', 'Northeast')
order by 1




/*1.) Immediately goes after the word SELECT in the SELECT statement
2.) You can only have one distinct function per SELECT statement
3.) Removes duplicates ONLY at the ROW level*/

