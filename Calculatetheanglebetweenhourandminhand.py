#to clacualte the degrees between hour and minute hand


itest=int(input("Enter the number of tests between 1 and 2:"))

print(itest)


ihour=[]

imin=[]

for i in range(0,itest):


   hr=int(input("\nEnter the hour between 1 and 12:"))
   
   ihour.append(hr)
   
   print("\n",ihour[i])
   
   minte=int(input("\nEnter the minute between 0 and 60:"))
   
   imin.append(minte)
   
   print("\n",imin[i])

#hourhandangle=int(0.5*(60*ihour[i]+imin[i]))

#   minhandangle=int(0.5*12*imin[i])

   equate=0.5*(60*ihour[i]-11*imin[i])
   
#   print("\n",hourhandangle,minhandangle)

#   equate=abs(int(hourhandangle-minhandangle))

   if equate > 180 :
    
      anglediff=360-equate
      
      print("the angle between them is :" ,anglediff)
    
   else:
        
      print("the angle between them is :", equate)

