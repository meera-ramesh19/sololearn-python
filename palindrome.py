#to find a palindrome



palin=input("Enter the palindrome")
length=len(palin)
print(length)
for i in range(0,length):

    if str(i) != str(length-i):
         print("not a palindrome")
         break
     
    else:
     
     print("is a palindrome")     
