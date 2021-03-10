ipaddress= input("please enter an ipaddress,an IP address consists of a number"
                 "seperated from each other with a full stop\n")

if ipaddress[-1] !='.':
    ipaddress+= '.'
                
segment=1
segment_len=0

for character in ipaddress:
    if character =='.':
        print("segment {} contains{} characters".format(segment , segment_len))
        segment +=1
        segment_len=0
    else:
        segment_len=1
  
