#define factorial



factofn=0
def factorial(n):
    
    if n == 1:   
        return n
    else:
        return n * factorial(n-1)
        
number=int(input("Enter the number to find factorial:  ")) 
if number<=0:
    print(" cannot find factorial ---Enter a positive number\n\n " )
    
    number=int(input("Enter the number again to find factorial:")) 
    print(number)

else:
  
  factofn=factorial(number)
  print("the factorial of " + str(number) + " is : " + str(factofn))
