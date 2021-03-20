/*Return the shipping gross margin $ by carrier for the top 3 carriers
that had the highest positive shipping gross margin $. */

/* whats needed

carrier class
shipping gross margin
shipping cost
shipping revenues

select top 3 [Carrier Class],
cast(sum[shipping_revenue] - [Shipping_cost])as money as 'Ship Gross Margin $'
from Shipping_Carrier
group by [Carrier class]
having (ship gross Margin) > 0
order by [carrier class]
