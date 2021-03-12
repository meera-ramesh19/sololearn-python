#waits until a password is entered


    
    
x=0    
choice="no"
while choice != "lock" :
    if x >=5:
        break;
    else:    
        choice = input("Enter a word :  ")
        print(choice)
        x=x+1   

else:     
    
    login = input("enter your login: ")
    print(login)
    password = input("enter your password:")
    print(password)
print("you did not enter lock")  
