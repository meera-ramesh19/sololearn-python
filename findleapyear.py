inputyear=int(input("enter the year:"))
print(inputyear)
if ((inputyear % 4  == 0 ) and (inputyear % 100  != 0)) or  ((inputyear % 400 ==0)):
#  if ((inputyear % 400)  == 0):
         print("leap year")
else:
    print("not a leap year")
