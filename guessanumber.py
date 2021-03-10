#to guess a number

guessnum=78
innum=0
user_input=0
while innum!=guessnum:
    innum=int(input("Enter the number"))
    user_input+=1
    if innum<guessnum:
        print("number is less")
    else :
        print("number is right")
if user_input>3:
     print("that must have been complicated")
     print("you guessed the number in " + str(user_input) + " inputs  ")
else :   
     print("you guessed the number in " + str(user_input) + " inputs  ")
