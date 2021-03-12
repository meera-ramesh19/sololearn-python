doors=[]

testp=int(input("Enter the number of testcase:"))




for i in range(testp):
    
    n=int(input())
    
    for j in range(1,i+1):
        
        sq=int(math.sqrt(j))
        
        if (sq**2 == j):
            
            doors.append(1)
            
        else:
            
            door.append(0)
            
    print(door[i])        
