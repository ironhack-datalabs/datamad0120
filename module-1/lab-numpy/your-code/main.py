#1. Import the NUMPY package under the name np.
import numpy as np


#2. Print the NUMPY version and the configuration.
print(np.version.version)
print(np.show_config())


#3. Generate a 2x3x5 3-dimensional array with random values. Assign the array to variable "a"
# Challenge: there are at least three easy ways that use numpy to generate random arrays. How many ways can you find?

a = np.random.random((2,3,5)
a = np.random.randint(0, 100, size=(2, 3, 5))
a= np.empty((2,3,5)) # Matriz vacía, con valores residuales de la memoria
#4. Print a.

print (a)
'''[[[ 0.80313529  0.0658663   0.48082475  0.30112498  0.72350651]
  [ 0.90638356  0.61603613  0.20985487  0.66510872  0.73584673]
  [ 0.54271887  0.4021919   0.44777099  0.05689231  0.77359098]]

 [[ 0.72160303  0.28970526  0.44638735  0.55419317  0.69555651]
  [ 0.91999715  0.15371575  0.27636341  0.77767151  0.7108012 ]
  [ 0.51176189  0.16759781  0.24472534  0.89788413  0.99206328]]]
  '''
                     

#5. Create a 5x2x3 3-dimensional array with all values equaling 1.
#Assign the array to variable "b"

b=np.ones((5,2,3))

#6. Print b.
print (b)
'''
array([[[ 1.,  1.,  1.],
        [ 1.,  1.,  1.]],

       [[ 1.,  1.,  1.],
        [ 1.,  1.,  1.]],

       [[ 1.,  1.,  1.],
        [ 1.,  1.,  1.]],

       [[ 1.,  1.,  1.],
        [ 1.,  1.,  1.]],

       [[ 1.,  1.,  1.],
        [ 1.,  1.,  1.]]])
        '''


#7. Do a and b have the same size? How do you prove that in Python code?

np.array_equiv([a], [b])#devuelve falso, con a.shape y b.shape ves las dimensiones de las matrices
  


#8. Are you able to add a and b? Why or why not?
a+b
'''                     
ValueError: operands could not be broadcast together with shapes (2,3,5) (5,2,3) 
        No se pueden sumar matrices con distintas dimensiones
'''

#9. Transpose b so that it has the same structure of a (i.e. become a 2x3x5 array). Assign the transposed array to varialbe "c".

c= b.transpose(1, 2, 0)

#10. Try to add a and c. Now it should work. Assign the sum to varialbe "d". But why does it work now?
d=a+c
'''
array([[[ 12.,  75.,  36.,  64.,   2.],
        [ 85.,  47.,  31.,  48.,  81.],
        [ 86.,  59.,  37.,  47.,  39.]],

       [[ 45.,  11.,  68.,  73.,  35.],
        [ 24.,  62.,  11.,  26.,  75.],
        [ 49.,  84.,  94.,  42.,  96.]]])
        
funciona porque son matrices de iguales dimensiones

np.shape(a) (2, 3, 5)
np.shape(c) (2, 3, 5)
'''
#11. Print a and d. Notice the difference and relation of the two array in terms of the values? Explain.
hizo la suma por posiciones: d[0,0,0]=a[0,0,0]+b[0,0,0] y asi sucesivamente hasta llenar d



#12. Multiply a and c. Assign the result to e.
e=a*c
                     
'''
array([[[ 11.,  74.,  35.,  63.,   1.],
        [ 84.,  46.,  30.,  47.,  80.],
        [ 85.,  58.,  36.,  46.,  38.]],

       [[ 44.,  10.,  67.,  72.,  34.],
        [ 23.,  61.,  10.,  25.,  74.],
        [ 48.,  83.,  93.,  41.,  95.]]])'''

#13. Does e equal to a? Why or why not?

(e==a).all()
'''devuelve True, es decir, que son iguales'''


#14. Identify the max, min, and mean values in d. Assign those values to variables "d_max", "d_min", and "d_mean"

d_max=np.amax(d)
d_min=np.amin(d)
d_mean=np.mean(d)


#15. Now we want to label the values in d. First create an empty array "f" with the same shape (i.e. 2x3x5) as d using `np.empty`.

f=np.empty([2,3,5])
'''array([[[ 11.,  74.,  35.,  63.,   1.],
        [ 84.,  46.,  30.,  47.,  80.],
        [ 85.,  58.,  36.,  46.,  38.]],

       [[ 44.,  10.,  67.,  72.,  34.],
        [ 23.,  61.,  10.,  25.,  74.],
        [ 48.,  83.,  93.,  41.,  95.]]])
 '''


"""
#16. Populate the values in f. For each value in d, if it's larger than d_min but smaller than d_mean, assign 25 to the corresponding value in f.
If a value in d is larger than d_mean but smaller than d_max, assign 75 to the corresponding value in f.
If a value equals to d_mean, assign 50 to the corresponding value in f.
Assign 0 to the corresponding value(s) in f for d_min in d.
Assign 100 to the corresponding value(s) in f for d_max in d.
In the end, f should have only the following values: 0, 25, 50, 75, and 100.
Note: you don't have to use Numpy in this question.
"""
for h in range(f.shape[0]):
    for i in range(f.shape[1]):
        for j in range(f.shape[2]):
            if d[h][i][j] > d_min and d[h][i][j]< d_mean:
                d[h][i][j]=25
            elif d[h][i][j] > d_mean and d[h][i][j]<d_max:
                d[h][i][j]=75
            elif d[h][i][j] == d_mean:
                d[h][i][j]=50
            elif d[h][i][j] == d_min:
                d[h][i][j]=0
            else:
                d[h][i][j]=100
"""
array([[[  25.,   75.,   25.,   75.,    0.],
        [  75.,   25.,   25.,   25.,   75.],
        [  75.,   75.,   25.,   25.,   25.]],

       [[  25.,   25.,   75.,   75.,   25.],
        [  25.,   75.,   25.,   25.,   75.],
        [  25.,   75.,   75.,   25.,  100.]]])
"""


"""
#17. Print d and f. Do you have your expected f?
For instance, if your d is:
array([[[ 11.,  74.,  35.,  63.,   1.],
        [ 84.,  46.,  30.,  47.,  80.],
        [ 85.,  58.,  36.,  46.,  38.]],

       [[ 44.,  10.,  67.,  72.,  34.],
        [ 23.,  61.,  10.,  25.,  74.],
        [ 48.,  83.,  93.,  41.,  95.]]])

Your f should be:
array([[[  25.,   75.,   25.,   75.,    0.],
        [  75.,   25.,   25.,   25.,   75.],
        [  75.,   75.,   25.,   25.,   25.]],

       [[  25.,   25.,   75.,   75.,   25.],
        [  25.,   75.,   25.,   25.,   75.],
        [  25.,   75.,   75.,   25.,  100.]]])
"""


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
No me sale ...no se como pasar los valores int por las letras
for h in range(f.shape[0]):
    for i in range(f.shape[1]):
        for j in range(f.shape[2]):
            if d[h][i][j] > d_min and d[h][i][j]< d_mean:
                d[h][i][j]=str("B")
            elif d[h][i][j] > d_mean and d[h][i][j]<d_max:
                d[h][i][j]=str("D")
            elif d[h][i][j] == d_mean:
                d[h][i][j]=str("C")
            elif d[h][i][j] == d_min:
                d[h][i][j]=str("A")
            else:
                d[h][i][j]=str("E")


