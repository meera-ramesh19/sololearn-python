rom time import sleep


def toprint():
    
    print("Hello there")
    
def toshuffle():

    print("everyday I'm shuffling")
    
def username():
    
    name=input("Enter your name:")
    return name
    
def userage():
    
    age=int(input("Enter your age:"))
    return age
def usercolor():
    
    color=input("enter your favorite color:")
    return color
    
def length(l):
     
    sq=l*l
    print("the area of the square is :",sq)
    
    return sq
    
    
def storyfunc(nm,cr,pl):
    
    print("\n STORY TIME!!!!!")
    print(" Once upon a time there was a hero named",nm,end="" )
   
    print(" was the only ",end="")
    print("\n who could save",pl,end="") 
    
    print(" from  the clutches of the evil",cr)
    
    
for i in range(0,10 ):
    
    toprint()
i=0    
    
while i!=0:
    
    toshuffle()
    
    sleep(2)
    
username()    

userage()

usercolor()

a=int(input("enter the length of a side:"))

area=length(a)



sname=input("\nenter the hero name:")

print(sname)

creat=input("\nenter the creature name:")
    
print(creat)    

splace=input("\n Enter the place of the story")

print(splace)

storyfunc(sname,creat,splace)
