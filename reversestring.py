revstring=""
userstring=input("Enter the string : ")
print(userstring)
print("The original string is :" , userstring)
length=len(userstring)-1
for i in range(length,-1,-1):
    revstring=revstring+userstring[i]
print("The reversed string is: " , revstring)    
