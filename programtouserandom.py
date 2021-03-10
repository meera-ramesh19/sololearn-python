import random

highest=1000
answer=random.randint(1,highest)
print("enter the random number between 1 and {}".format( highest))

guess=0

while guess!=answer:
    
    guess=int(input())
    
    if guess < answer:
        print("Enter higher")
        
    elif guess > answer:
        print("Enter lower")
        
    else:
        print("you guessed right")
