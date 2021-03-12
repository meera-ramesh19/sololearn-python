# Declare a list  
x = [2, 3, 4, 5, 6] 
  

y = map(lambda v : v * 5, filter(lambda u : u % 2, x)) 
print y 

def cube(x): 
    return x**2
  
  

cubes = map(cube, range(10)) 
print cubes 
  

print (lambda x: x**2)(5) 
  

print (lambda x, y: x*y)(3, 4) 

special_cubes = filter(lambda x: x > 9 and x < 60, cubes) 

print special_cubes 
