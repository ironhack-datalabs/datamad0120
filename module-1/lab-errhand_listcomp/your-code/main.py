#Example: 

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

print(my_listComprehension)


#Insert here the module/library import statements 

import math
import os


#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results

square = [element**2 for element in range(20)]


#2. Calculate the first 50 power of two. Use power_of_two as the name of the list.
# Remember to use list comprehensions and to print your results

power_of_two = [2**i for i in range(50)]



#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.  
# Remember to use list comprehensions and to print your results

sqrt = [math.sqrt(e) for e in range(100)]


#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results

my_list = [e for e in range(-10,1)]


#5. Find the odd numbers from 1-100. Use odds as the name of the list. 
# Remember to use list comprehensions and to print your results

odds = [e for e in range(1,101) if e % 2 != 0]


#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results

divisible_by_seven = [e for e in range(1,1000) if e % 7 == 0]


#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience

teststring = 'Find All of the words in a string that are monosyllabic'
non_vowels = [e for e in teststring if e.lower() != "a" and e != "e" and e != "i" and e != "o" and e != "u"]


#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'. 
# Use capital_letters as the name of the list.  
# Remember to use list comprehensions and to print your results

sentence = 'The Quick Brown Fox Jumped Over The Lazy Dog'

capital_letters = [e for e in sentence if e.isupper()]
print(capital_letters)


#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.

sentence = 'The quick brown fox jumped over the lazy dog'
consonants = [e for e in sentence if e.lower() not in ["a","e","i","o","u"," "]]



#10. Find the folders you have in your madrid-oct-2018 local repo. Use files as name of the list.  
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.

path = "/Users/guillermo.martinez/datamad0120"
files = [x[0] for x in os.walk(path)]
print(files)


#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list. 
#You will probably need to import random module
# Remember to use list comprehensions and to print your results

print(random.randrange(0,100))
random_lists = [[random.randrange(0,101) for e in range(10)] for x in range(4)]



#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results

list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]

flatten_list = [k for e in list_of_lists for k in e]



#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list. 
# Remember to use list comprehensions and to print your results.

list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], \
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]

floats = [[float(k) for k in e]for e in list_of_lists]




#14. Handle the exception thrown by the code below by using try and except blocks. 


for i in ['a','b','c']:
    print i**2

    #respuesta
for i in ['a','b','c']:
    try:
      print(i**2)
    except Exception as e:
      print(i)


#15. Handle the exception thrown by the code below by using try and except blocks. 
#Then use a finally block to print 'All Done.'
# Check in provided resources the type of error you may use. 

x = 5
y = 0

try:
  z = x/y
except ZeroDivisionError as error:
  z = x/(y+1)
print("All Done")



#16. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

abc=[10,20,20]
try:
  print(abc[3])
except IndexError as error:
  print(error)
  print(abc[2])


#17. Handle at least two kind of different exceptions when dividing a couple of numbers provided by the user. 
# Hint: take a look on python input function. 
# Check in provided resources the type of error you may use. 

try:
  number1 = input("Give me first number: ")
  number2 = input("Give me second number: ")
  print(int(number1)/int(number2))
except ZeroDivisionError as error1:
  print("¡No puedes dividir entre cero!")
except ValueError as error2:
  print("¡No has introducido un número!")


#18. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 


try:
  f = open('testfile','r')
  f.write('Test write this')
except FileNotFoundError as error1:
  print("¡No se encuentra el archivo!")
except io.UnsupportedOperation as err:
    print('File opened in read mode, cannot be written')
    print(err)


#19. Handle the exceptions that can be thrown by the code below using try and except blocks. 
#Hint: the file could not exist and the data could not be convertable to int

try:
  fp = open('myfile.txt')
  line = f.readline()
  i = int(s.strip())
except FileNotFoundError as error1:
  print("¡No se encuentra el archivo!")
except NameError as error2:
  print("¡Hay alguna variable no definida!")


#20. The following function can only run on a Linux system. 
# The assert in this function will throw an exception if you call it on an operating system other than Linux. 
# Handle this exception using try and except blocks. 
# You will probably need to import sys 

def linux_interaction():
  try:
    assert ('linux' in sys.platform), "Function can only run on Linux systems."
    print('Doing something.')
  except NameError as error1:
    print(error1)
    print("Esta función sólo funciona en Linux")

linux_interaction()


# Bonus Questions:

# You will need to make some research on dictionary comprehension to solve the following questions

#21.  Write a function that asks for an integer and prints the square of it. 
# Hint: we need to continually keep checking until we get an integer.
# Use a while loop with a try,except, else block to account for incorrect inputs.

def square():
  try:  
    n = int(input("Dame un número: "))
  except:
    print("El valor intrudico no es un entero")
    return square()
  else:
    print(n**2)
square()



# 22. Find all of the numbers from 1-1000 that are divisible by any single digit besides 1 (2-9). 
# Use results as the name of the list 

results = [e for e in range(1,1001) if e % 2 == 0 or e % 3 == 0 or e % 4 == 0 or e % 5 == 0 or e % 6 == 0 or e % 7 == 0 or e % 8 == 0 or e % 9 == 0] 

print(results)


# 23. Define a customised exception to handle not accepted values. 
# You have the following user inputs and the Num_of_sections can not be less than 2.
# Hint: Create a class derived from the pre-defined Exception class in Python

class Error(Exception):
   """Base class for other exceptions"""
   pass
class ValueTooSmallError(Error):
   """Raised when the input value is too small"""
   pass

Total_Marks = int(input("Enter Total Marks Scored: "))
number = 2
while True:
   try:
       Num_of_Sections = int(input("Enter Num of Sections: "))
       if Num_of_Sections <= number:
           raise ValueTooSmallError
       break
   except ValueTooSmallError:
       print("This value is too small, try again!")
  
print("Congratulations! You guessed it correctly.")


