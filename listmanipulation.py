# Get started with interactive Python!

print( "Hello, World!")

# This is how simple a Hello World program in Python is.

   # Get started with interactive Python!

print ("Hello, World!") ; print("This is second line")

# This is how we use semicolon to write
# more than 1 statement in one line

#using menu to create and do operations on a list


menuitem=0
list_op=[]
while menuitem != 5:
   
      print(20 * "-","MENU OPTIONS", 20 * "-")
      print(" 1.  PRINT THE LIST")
      print(" 2.  ADD A NAME TO THE LIST")
      print(" 3.  REMOVE A NAME FROM THE  LIST")
      print(" 4.  REPLACE AN ITEM IN THE LIST")
      print(" 9.  QUIT FROM THE MENU")
      
      menuitem=int(input("\n Enter your input(1-5): "))
      
      if menuitem == 1:
           count=0
           if len(list_op) !=0:
               print("the names in the list are: \n")
               while count < len(list_op): 
                   print(list_op[count])
                   count+=1
           else:
               print("the list is empty")
           
      elif menuitem == 2:
           
           addname=input("Enter the name to be added")
           list_op.append(addname)
           ch='a'
           ch=input("do you want to add another name to the list(y or n)?")
           while ch !='n':
             addname=input("Enter the name to be added")
             list_op.append(addname)
             ch=input("do you want to add another name to the list(y or n)?")          
          
      elif menuitem == 3:
          
           delname=input("Enter the name to delete")
           if delname in list_op:
              indexnum=list_op.index[delname]
              del list_op[indexnum]
           else:
              print(delname , " was not found in the list")
           ch='a'
           ch=input("do you want to add another name to the list(y or n)?")
           while ch !='n':
             addname=input("Enter the name to be added")
             list_op.append(addname)
             ch=input("do you want to add another name to the list(y or n)?")          
          
      elif menuitem == 4:
        
   
            oldnames = input("enter the name of the item to be replaced")
            if oldnames in list_op:
               indexnum=list_op.index(oldnames) 
               newname=input("Enter the new name of the item")
               list_op[indexnum]=newname
            else:
                print(oldnames , "was not found in the list")
            ch='a'
            ch=input("do you want to add another name to the list(y or n)?")
            while ch !='n':
             addname=input("Enter the name to be added")
             list_op.append(addname)
             ch=input("do you want to add another name to the list(y or n)?")          
              
                
      elif menuitem >5:
             print("invalid input")
             print("enter from 1-5")
             menuitem=input("\nEnter your input(1-5) again: ")
      else:
           break;

print("goodbye")
