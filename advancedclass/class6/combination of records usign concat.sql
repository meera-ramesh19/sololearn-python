/*Create a unique ID for the Region State combination.
For example, West-California.*/


select region,
state,
concat(Region,'-',State) as 'Region-state'
from Zip 