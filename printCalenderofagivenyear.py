def daynumber(day,month,year):
    t=[0,3,2,5,0,3,4,6,2,4]
     
    if (month<3):
       year=year-1
    return((year+(year//4)-(year//100)+(year//400)+t[month-1]+day) % 7)
     
def monthname(monthnumber):
    months=("January","February","March","April","May","June","july","August"
    "September","October","November","December") 
    
    return(months[monthnumber])
    
            
def numberofdays(mnum,yearinput):    
    
#    daydict={1:31,2:28,3:31,4:30,5:31,6:30,7:31,8:31,9:30,10:31,11:30,12:31}
    
#    day=daydict.get(mnum)
#    print(day)
           
    if (mnum == 2):       
        if ((yearinput/ 4) == 0 and (yearinput // 100) !=0 ) or ((yearinput //400) == 0):
           
                     
            return (29)
        
        else:
            
            
            return(28)
            
    elif (mnum==4) or (mnum==6) or (mnum==9) or (mnum==11):
        
        
        return(30)
        
    else :
        
        return(31)
            
          
        
        
def printcalendar(pyear):
    
    
    firstday=daynumber(1,1,pyear)
    print(firstday)
     
    pday=0
     
    print('{0}'.format("Calendar of  " +str( pyear)).center(38))
     
     
    for i in range(1,12,1):
        

        pday=numberofdays(i,pyear)
        
        
        print('{0:^35}\n\n'.format(monthname(i-1)))

        print(" Sun  Mon  Tue  Wed   Thu   Fri   Sat\n ")
        
        
       
        k=0
        while (k < firstday):
            k=k+1
 
        w=1
        for w in range(firstday):
           print('{0:<6}'.format(''),end='')
            
        
        
        for j in range(1,pday,1): 
             
#            w=1
            
#            for w in range(firstday): 
                
#                print('{0:<6}'.format('   '),end='')
                
            print('{0:<6}'.format(j),end='')
            
            k=k+1
            
            if (k > 6):
               print("\n")
               k=0
               
    
        print("\n")
                
        firstday=k    
    
    return(0)

year=int(input("enter the year:"))
print(year)

printcalendar(year)
