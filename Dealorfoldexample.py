
import random

def dealthecard(an):
    
    an=input("do you want to deal the card[y/n]:")
    print(an)
    
    return an
        
total=0
  
ans=input("do you want to deal the card[y/n]:")

print(ans)




while ans!="n" :

    
   if ans=="y":
         
       
          ch=random.randint(1,8)
          
          print("the number dealt was ", ch)
       
          total=total+ch
          
          if total<=21:
              
               ans=dealthecard(ans)
          else:
              print("The total is more than 21 so you loose ")
              
              break
          
   else:
         
         
         print("The user does not want to deal so Fold and quit the game")
        
   
   
     
