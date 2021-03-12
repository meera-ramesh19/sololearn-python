//Usign strings
print("  WELCOME TO TEH NATIONAL HOCKEY CHAMPIONSHIPS !!!!!")

c1=input("enter the first country:")
print(c1)
c2=input("\n Enter the second country:")
print(c2)

print("\nToday's match is between :",c1[:2],"vs",c2[:2])


sentence=input("\nEnter your sentence:")
print(sentence)
gcount=sentence.count("g")       
print("\nThe sentence had  " ,gcount , "g occurences in it")     


letter=""
c=0
sen=input("\nEnter your sentence : ")
print(sen)
for letter in sen:
    
    if letter == "g":
        c=c+1
print("the no of cis :" ,c)



dogname=input("\nEnter your dog name:")
print(dogname)

l=len(dogname)

if l >6:
    
    print("\nSorry but our dog tags are too small to fit that")
    
else:
    
    print("\nexcellent, we will make this dog tag for you")
    
    
vowcheck=input("\nEnter your sentence to check vowels:")  
print(vowcheck)

co=0
for alpha in vowcheck:
    
    if alpha=="a" or alpha=="e" or alpha=="i" or alpha=="o" or alpha=="u":
        
        co=co+1
print("\nthe number of vowels the sentence has: ", co)    


con1=input("enter the first country:")

print(con1)

con2=input("\n Enter the second country:")

print(con2)

print("The matches played today are between:",con1[-3:],"vs", con2[-3:])

nm=input("enter your name:")

print(nm)

fcolor=input("\nenter your favorite color:")

print(fcolor)

byear=input("\nenter the year you were born:")

print(byear)



print("the facebook name is :",nm[1:3],end="")
print(fcolor,end="")
print(byear[1:3])
