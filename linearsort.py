#linear sort

def index_position(snum, userlist):
    
    return[n for n,item in enumerate(userlist) if item == snum ]
        
totalnumber=int(input("enter the total number of the list"))

print(totalnumber)

alist=[]

print("Enter the elements of the list")
for i in range(0,totalnumber):
    
    number=int(input())
    alist.append(number)

print(alist,end='')
searchnum = int(input("\nEnter the search number: "))
index = index_position(searchnum,alist)

print("\nthe position of the number:", index)
