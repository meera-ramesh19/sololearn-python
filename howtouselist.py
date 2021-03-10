list_1=[]
list_2=list()
print("list_1:{}".format(list_1))
print("list_2:{}".format(list_2))

if list_1==list_2:
    print("lists are equal")
else:
    print("lists are not equal")
even=[2,4,6,8]    
another_even=even
print(another_even is even)
another_even.sort(reverse=True)
print(even)

another_even=list(even)
print(another_even is even)
print(another_even == even)

another_even=sorted(even,reverse=True)
print(another_even is even)

even=[2,4,6,8]
odd=[1,3,5,7]
numbers=[even,odd]

for number_set in numbers:
    print(number_set)
    for value in number_set:
        print(value)
        
        
