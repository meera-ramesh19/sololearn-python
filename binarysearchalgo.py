#binary search


def binary(slist,mini,maxim,element):
    
    

         mid=(mini+maxim) // 2
         
         if (mini >maxim):
             
             print("number not found")
         
         elif (element > slist[mid]):
             
             mini=mid+1
             
             binary(slist,mini,maxim,element)
             
         elif  (element < slist[mid]):
             
             maxim=mid-1
             
             binary(slist,mini,maxim,element)
             
         else  :
#            
              print("The element is found at position :", str(mid))

        
        
  
            
     
    
total=int(input("Enter the total number in the list: ")) 

print(total)

userlist=[]

for i in range(0,total):
    
    number=int(input("\n Enter the element of the list as sorted array: "))
    
    userlist.append(number)
    
    print(userlist,end='')
    
skey=int(input("\nenter the number to be searched:"))    

print(skey)
    
first=0

last=total-1

binary(userlist,first,last,skey) 


    
