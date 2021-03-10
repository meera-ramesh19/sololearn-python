
import math
#euler no3



def primefactors(n):
  res = []
  large=0
  new=0
  for i in range(2,n):
    
 
      if (n%i==0):
        
        new=n/i
        res.append(i)
        
  return res   
  
  

print(primefactors(600851475143))
