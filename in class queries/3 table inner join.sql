/*what is needed
region -zip
sales - Sales-08-09
order date   shipping carrier and shipped_09
zip shipping Carrier ans zip

Provide the tax rate for each order. Calculate the tax $ paid for each
order (Tax rate * Order Total)*/

/*What's Needed?
Orders - Shipping Carrier
Tax Rate - Tax
Order Total * Tax Rate = Tax $ - Shipping Carrier + Tax*/

/*Tables we will pull data from:
Tax Table
Shipping Carrier */

select Shipping_Carrier.*,
Zip.*,
Tax_Table_19_US.*
from shipping_carrier full join zip on zip.zipcode=Shipping_carrier.zip
 full join Tax_Table_19_US on Tax_Table_19_US.state=zip.state
 where zip.zipcode is null