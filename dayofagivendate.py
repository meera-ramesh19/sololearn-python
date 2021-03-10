cyear=0
ydir=0
year=0
remyear=0


daydir={0:'saturday',1:'sunday',2:'monday',3:'tuesday',4:'wednesday',5:'thursday',6:'friday'}
monthdir={1:'1',2:'4',3:'4',4:'0',5:'2',6:'5',7:'0',8:'3',9:'6',10:'1',11:'4',12:'6'}
yeardir={15:'0',16:'6',17:'4',18:'2',19:'0',20:'6'}

inputdate=int(input("Enter the date:"))
print(inputdate)
inputmonth=int(input("\nEnter the number of the month:",))
print(inputmonth)
inputyear=input("\nEnter the year:")
print(inputyear)

bornyear=int(inputyear[2:4])

monthnum=monthdir.get(inputmonth)

cyear=int(inputyear)

if (cyear > 2099):
     
    cyear=cyear-400

    while(cyear > 2099):
          cyear=cyear-400

    inttostryear=str(cyear)
    checkyear=int(inttostryear[0:2])
    ydir=yeardir.get(checkyear)

else:

     centuryyear=int(inputyear[0:2])
     ydir=yeardir.get(centuryyear)

remyear=inputdate +int(monthnum)+int(ydir)+bornyear+(bornyear//4)

year=remyear % 7

print("\nThe day of your birthdate is :",daydir.get(year))
