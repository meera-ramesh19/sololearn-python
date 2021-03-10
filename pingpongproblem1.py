def ping(i):
    if i>0:
        print(i)
        return pong(i-1)
    else:
        return"0"
        
def pong(i) :
    if i>0:
        print(i)
        return ping(i-1)
        
    else:
        return"1"
        
print(ping(14))        
