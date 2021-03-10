# input from the user the month and the year of the calendar and displaythe
#calendar for the month or the year

yearuser=int(input("Enter the year:"))
print(yearuser)
#monthuser=int(input("\nEnter the month : "))
#print(monthuser)
startday=input("Enter the day of the week:")
print(startday)

calendar=[('January',range(1,31+1)),
          ('february',range(1,28+1)),
          ('March',range(1,31+1)),
          ('April',range(1,30+1)),
          ('May',range(1,31+1)),
          ('June',range(1,30+1)),
          ('July',range(1,31+1+1)),
          ('August',range(1,31+1)),
          ('September',range(1,30+1)),
          ('October',range(1,31+1)),
          ('November',range(1,30+1)),
          ('December',range(1,31+1)) ]
          
week=['Mo','Tu','We','Th','Fr','Sa','Su']          


def leapyear(year):
  if year % 4 ==0:
   if year%100 != 0:
      if year % 400 == 0:
         return 1
      else :
         return 2
   else:
       return 1
  else:
    return 2
     
isyear=leapyear(yearuser) 
   
if isyear == 1:
    calendar[1] =('Febraury',range(1, 29 + 1))
    
    
startpoint=week.index(startday)    

for month,days in calendar:
    
    print('{0} {1}'.format(month,yearuser).center(20,' '))
    print(''.join(['{0:<3}'.format(w) for w in week]))
    print('{0:<3} '.format('') *startpoint,end=' '  )
    
    for day in days:
       print('{0:<3}'.format(day),end='')
       startpoint = startpoint+ 1
       if startpoint==7:
           print()
           startpoint=0
    print('\n')
