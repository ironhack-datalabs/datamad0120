#1. Import the NUMPY package under the name np.
import numpy as np

#2. Print the NUMPY version and the configuration.
print(np.version.version)

#3. Generate a 2x3x5 3-dimensional array with random values. Assign the array to variable "a"
# Challenge: there are at least three easy ways that use numpy to generate random arrays. How many ways can you find?
a = np.random.random((2,3,5)).round(2)
#a2 = np.random.rand(2,3,5).round(2)
#a3 = np.random.randint(low=1, high=10, size=(2,3,5))

#4. Print a.
print(a)
#print(a2)
#print(a3)

#5. Create a 5x2x3 3-dimensional array with all values equaling 1.
#Assign the array to variable "b"
b = np.ones((5,2,3))

#6. Print b.
print(b)

#7. Do a and b have the same size? How do you prove that in Python code?
if a.size == b.size:
        print("Correct: a.size == b.size. It is",b.size)
else:
        print("Not equal")

#8. Are you able to add a and b? Why or why not?
if a.shape == b.shape:
        print("a y b se pueden juntar haciendo un add")
        c = a+b
        print (c)
else: 
        print("a.shape != b.shape --> a y b no se pueden juntar sin hacer un broadcast")

#9. Transpose b so that it has the same structure of a (i.e. become a 2x3x5 array). Assign the transposed array to varialbe "c".
c = np.transpose(b,(1,2,0))
#el paréntesis es porque se eligen los axis en los que se hace la trasposición para que coincida con el shape de a.
print(c)

#10. Try to add a and c. Now it should work. Assign the sum to varialbe "d". But why does it work now?
if a.shape == c.shape:
        print("a.shape == c.shape. ES=",c.shape," a y c se pueden juntar haciendo un add por tener el mismo")
else: 
        print("a.shape != c.shape --> a y c no se pueden juntar sin hacer un broadcast")
d=a+c
#11. Print a and d. Notice the difference and relation of the two array in terms of the values? Explain.
print(a)
print(d)

#12. Multiply a and c. Assign the result to e.
e = a*c


#13. Does e equal to a? Why or why not?
if e.all() == a.all():
        print ("e equals a, porque se multiplica valor a valor")
else:
        print("e no es igual que a")


#14. Identify the max, min, and mean values in d. Assign those values to variables "d_max", "d_min", and "d_mean"
d_max = np.max(d)
d_min = np.min(d)
d_mean = np.mean(d)

print(d_max,d_min,d_mean)

#15. Now we want to label the values in d. First create an empty array "f" with the same shape (i.e. 2x3x5) as d using `np.empty`.
f = np.empty([2,3,5])
print(f)

"""
#16. Populate the values in f. For each value in d, if it's larger than d_min but smaller than d_mean, assign 25 to the corresponding value in f.
If a value in d is larger than d_mean but smaller than d_max, assign 75 to the corresponding value in f.
If a value equals to d_mean, assign 50 to the corresponding value in f.
Assign 0 to the corresponding value(s) in f for d_min in d.
Assign 100 to the corresponding value(s) in f for d_max in d.
In the end, f should have only the following values: 0, 25, 50, 75, and 100.
Note: you don't have to use Numpy in this question.
"""
a=-1
b=-1
c=-1
for d3 in d:
        a+=1
        b=-1
        for row in d3:
                b+=1
                c=-1
                for elem in row:
                        c+=1
                        if elem == d_min:
                                f[a,b,c] = 0 
                        elif elem > d_min and elem < d_mean:
                                f[a,b,c] = 25  
                        elif elem == d_mean:
                                f[a,b,c] = 50 
                        elif elem > d_mean and elem < d_max:
                                f[a,b,c] = 75  
                        elif elem == d_max:
                                f[a,b,c] = 100
print(f) 

"""
#MUY INTERESANTE LA FUNCIÓN np.ndenumerate(matriz).
for index, elem in np.ndenumerate(d):

        if elem == d_min:
                f[index] = 0 
        elif elem > d_min and elem < d_mean:
                f[index] = 25  
        elif elem == d_mean:
                f[index] = 50 
        elif elem > d_mean and elem < d_max:
                f[index] = 75  
        elif elem == d_max:
                f[index] = 100

#OTRA FUNCIÓN: np.place(dónde,condición == True,valor)
np.place(f,d == d_min,25)
np.place(f,(d > d_min) & (d < d_mean), 25)
"""


"""
#17. Print d and f. Do you have your expected f?
For instance, if your d is:
array([[[1.85836099, 1.67064465, 1.62576044, 1.40243961, 1.88454931],
        [1.75354326, 1.69403643, 1.36729252, 1.61415071, 1.12104981],
        [1.72201435, 1.1862918 , 1.87078449, 1.7726778 , 1.88180042]],

       [[1.44747908, 1.31673383, 1.02000951, 1.52218947, 1.97066381],
        [1.79129243, 1.74983003, 1.96028037, 1.85166831, 1.65450881],
        [1.18068344, 1.9587381 , 1.00656599, 1.93402165, 1.73514584]]])

Your f should be:
array([[[ 75.,  75.,  75.,  25.,  75.],
        [ 75.,  75.,  25.,  25.,  25.],
        [ 75.,  25.,  75.,  75.,  75.]],

       [[ 25.,  25.,  25.,  25., 100.],
        [ 75.,  75.,  75.,  75.,  75.],
        [ 25.,  75.,   0.,  75.,  75.]]])
"""
print (d)
print (f)
print ("Todo cuadra excepto que el valor de la media dificilmente se va a representar pues es dificil que coincida que aparezca en la matriz d")

"""
#18. Bonus question: instead of using numbers (i.e. 0, 25, 50, 75, and 100), how to use string values 
("A", "B", "C", "D", and "E") to label the array elements? You are expecting the result to be:
array([[[ 'D',  'D',  'D',  'B',  'D'],
        [ 'D',  'D',  'B',  'B',  'B'],
        [ 'D',  'B',  'D',  'D',  'D']],

       [[ 'B',  'B',  'B',  'B',  'E'],
        [ 'D',  'D',  'D',  'D',  'D'],
        [ 'B',  'D',   'A',  'D', 'D']]])
Again, you don't need Numpy in this question.
"""

g = np.empty([2,3,5],dtype="str")

"""
#MUY INTERESANTE LA FUNCIÓN NP.NDENUMERATE.
for index, elem in np.ndenumerate(d):

        if elem == d_min:
                g[index] = "A" 
        elif elem > d_min and elem < d_mean:
                g[index] = "B"  
        elif elem == d_mean:
                g[index] = "C" 
        elif elem > d_mean and elem < d_max:
                g[index] = "D"  
        elif elem == d_max:
                g[index] = "E"

print(g)
"""
a=-1
b=-1
c=-1
for d3 in d:
        a+=1
        b=-1
        for row in d3:
                b+=1
                c=-1
                for elem in row:
                        c+=1
                        if elem == d_min:
                                g[a,b,c] = "A" 
                        elif elem > d_min and elem < d_mean:
                                g[a,b,c] = "B"  
                        elif elem == d_mean:
                                g[a,b,c] = "C" 
                        elif elem > d_mean and elem < d_max:
                                g[a,b,c] = "D"  
                        elif elem == d_max:
                                g[a,b,c] = "E"
print(g) 