Get started with interactive Python!

print("Hello, World!") ; 
print("This is second line")

# This is how we use semicolon to write
# more than 1 statement in one line

# area of quadilaterals and circle
import math

    
def area_sq(l,b):
    return l*b
    
def area_rect(w,h):
    return w*h
    
def area_circle(rad):
    return math.pi*rad**2
    
def quitprogram():
    print("the end")
    return 
    
def invalidoption():
    print("Invalid option -- Enter the right options ")
    return
  
  
def menu_int():
    print("\n calculate areas")
    print(" r. area of rectangle:")
    print(" s. area of square")
    print(" c. area of a circle")
    print(" q. quit the program")
    
    
    
choice="a"   
    
global w,h,l,b,rad

while choice !="q":
        
    if choice == "r":
         w = int(input("Enter the width"))
         h=int(input("enter the height"))
         
         if w <= 0  :
                print("enter positive number")
                w=int(input("enter the width again"))
         elif h<= 0 :      
                print("enter positive number")
                h=int(input("Enter the height again"))
         print("Area of rectangle is :", area_rect(w,h)) 
         print("\n")
     
    elif choice == "s":
        l = int(input("Enter the length "))
        b= int(input("enter the breadth"))
        if l <= 0:
                print("enter positive number")
                l=int(input("enter the length again"))
        elif b <= 0:   
                print("Enter positive number")
                b=int(input("Enter the breadth again"))
                
        print("Area of square is:" , area_sq(l,b))
        print("\n")
    
    elif choice == "c":
         rad=int(input("Enter the radius"))
         if rad <= 0:
                print("enter positive number")
                rad=int(input("enter the radius again"))
            
         print("Area of rectangle is :", area_circle(rad)) 
         print("\n")
     
    elif choice !="q":
        
         menu_int()
         
    else:
         invalidoption()
       
    choice=input("\nEnter your option")
