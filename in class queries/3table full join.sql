select Shipping_Carrier.*,
Zip.*,
Tax_Table_19_US.*
from shipping_carrier join zip on zip.zipcode=Shipping_Carrier.zip 
 join Tax_Table_19_US on Tax_Table_19_US.state=zip.state
