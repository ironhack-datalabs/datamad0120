#1. Import the NUMPY package under the name np.
import numpy as np


#2. Print the NUMPY version and the configuration.
1.16.5


#3. Generate a 2x3x5 3-dimensional array with random values. Assign the array to variable "a"
# Challenge: there are at least three easy ways that use numpy to generate random arrays. How many ways can you find?
a = np.random.random((2,3,5))


#4. Print a.
[[[0.62204014 0.8649637  0.11385464 0.46444231 0.73106722]
  [0.13989112 0.88203857 0.98616741 0.06054316 0.21190758]
  [0.10108994 0.83278644 0.88697504 0.06730669 0.5203713 ]]

 [[0.48784356 0.82209025 0.43648626 0.98206557 0.60965555]
  [0.1762449  0.35723509 0.94063574 0.11926763 0.10341031]
  [0.69517511 0.61173762 0.22969014 0.08530264 0.28712646]]]


#5. Create a 5x2x3 3-dimensional array with all values equaling 1.
#Assign the array to variable "b"
b= np.full((5,2,3),1)


#6. Print b.
[[[1 1 1]
  [1 1 1]]

 [[1 1 1]
  [1 1 1]]

 [[1 1 1]
  [1 1 1]]

 [[1 1 1]
  [1 1 1]]

 [[1 1 1]
  [1 1 1]]]


#7. Do a and b have the same size? How do you prove that in Python code?
a.size=30
b.size=30

a.size==b.size


#8. Are you able to add a and b? Why or why not?
#hay que hacerle un re.shape a alguna de las dos array para que puedan emparejar por lo tanto no es posible


#9. Transpose b so that it has the same structure of a (i.e. become a 2x3x5 array). Assign the transposed array to varialbe "c".
c=b.transpose().reshape(2,3,5)


#10. Try to add a and c. Now it should work. Assign the sum to varialbe "d". But why does it work now?
#it works because both arrays have he same structure
d=a+c



#11. Print a and d. Notice the difference and relation of the two array in terms of the values? Explain.
[[[0.62204014 0.8649637  0.11385464 0.46444231 0.73106722]
  [0.13989112 0.88203857 0.98616741 0.06054316 0.21190758]
  [0.10108994 0.83278644 0.88697504 0.06730669 0.5203713 ]]

 [[0.48784356 0.82209025 0.43648626 0.98206557 0.60965555]
  [0.1762449  0.35723509 0.94063574 0.11926763 0.10341031]
  [0.69517511 0.61173762 0.22969014 0.08530264 0.28712646]]]

[[[1.62204014 1.8649637  1.11385464 1.46444231 1.73106722]
  [1.13989112 1.88203857 1.98616741 1.06054316 1.21190758]
  [1.10108994 1.83278644 1.88697504 1.06730669 1.5203713 ]]

 [[1.48784356 1.82209025 1.43648626 1.98206557 1.60965555]
  [1.1762449  1.35723509 1.94063574 1.11926763 1.10341031]
  [1.69517511 1.61173762 1.22969014 1.08530264 1.28712646]]]

#both arrays have same structure but the d array being the add of a & c array has both values on it

#12. Multiply a and c. Assign the result to e.

e=a*c
print (e)
print (a)

[[[0.62204014 0.8649637  0.11385464 0.46444231 0.73106722]
  [0.13989112 0.88203857 0.98616741 0.06054316 0.21190758]
  [0.10108994 0.83278644 0.88697504 0.06730669 0.5203713 ]]

 [[0.48784356 0.82209025 0.43648626 0.98206557 0.60965555]
  [0.1762449  0.35723509 0.94063574 0.11926763 0.10341031]
  [0.69517511 0.61173762 0.22969014 0.08530264 0.28712646]]]

[[[0.62204014 0.8649637  0.11385464 0.46444231 0.73106722]
  [0.13989112 0.88203857 0.98616741 0.06054316 0.21190758]
  [0.10108994 0.83278644 0.88697504 0.06730669 0.5203713 ]]

 [[0.48784356 0.82209025 0.43648626 0.98206557 0.60965555]
  [0.1762449  0.35723509 0.94063574 0.11926763 0.10341031]
  [0.69517511 0.61173762 0.22969014 0.08530264 0.28712646]]]

#13. Does e equal to a? Why or why not?
#yes it is, because e is the result of a*c where all parameters in c are 1, and when you multiply arrays each parameter multiplies the other array parameter in the same position



#14. Identify the max, min, and mean values in d. Assign those values to variables "d_max", "d_min", and "d_mean"

d_max=np.max(d)
d_min=np.min(d)
d_mean=np.mean(d)

1.9861674109061411
1.0605431616226837
1.4809804038346852

#15. Now we want to label the values in d. First create an empty array "f" with the same shape (i.e. 2x3x5) as d using `np.empty`.

f=np.empty([2,3,5])

[[[0.62204014 0.8649637  0.11385464 0.46444231 0.73106722]
  [0.13989112 0.88203857 0.98616741 0.06054316 0.21190758]
  [0.10108994 0.83278644 0.88697504 0.06730669 0.5203713 ]]

 [[0.48784356 0.82209025 0.43648626 0.98206557 0.60965555]
  [0.1762449  0.35723509 0.94063574 0.11926763 0.10341031]
  [0.69517511 0.61173762 0.22969014 0.08530264 0.28712646]]]

#los valores no estan en la array, solo los muestra porque usa valores de la memoria para darle forma al array, pero en si el array esta vacio, por ello tomo los valores del array a


"""
#16. Populate the values in f. For each value in d, if it's larger than d_min but smaller than d_mean, assign 25 to the corresponding value in f.
If a value in d is larger than d_mean but smaller than d_max, assign 75 to the corresponding value in f.
If a value equals to d_mean, assign 50 to the corresponding value in f.
Assign 0 to the corresponding value(s) in f for d_min in d.
Assign 100 to the corresponding value(s) in f for d_max in d.
In the end, f should have only the following values: 0, 25, 50, 75, and 100.
Note: you don't have to use Numpy in this question.
"""
#me tranque en este, podrias porfa darme un ejemplo de como hacer que el bucle distinga cada parametro por cada parametro en las arrays?



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