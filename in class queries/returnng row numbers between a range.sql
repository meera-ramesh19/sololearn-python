/*Return the item with the lowest costs that sold on the first day of sale, 8/7. Be sure to exclude items with $0 cost.

SELECT *
FROM(SELECT Item_ID,
Total_Cost,
row_number() over (order by Total_Cost asc) as 'Row #'
FROM Sales_08_09
WHERE Total_Cost <> 0 and
Date = '2019-08-07')A
WHERE [Row #] = 1

*/

/*Return the 6 - 10th largest orders in terms of the order total that was purchased during sale (8/7 – 8/27) that was ordered using UPS Ground.

*/
SELECT [4P_Order],
order_total,
[Row # ]
FROM(SELECT *,
row_number() over (order by Order_Total desc) as 'Row #'
FROM Shipping_Carrier
WHERE Order_Date between '2019-08-07' and '2019-08-27' and
[Carrier Class] = 'UPS/UPS Ground')B
WHERE [Row #] between 6 and 10
