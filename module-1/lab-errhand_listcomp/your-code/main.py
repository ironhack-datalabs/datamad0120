#Example: 

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

print(my_listComprehension)

#Insert here the module/library import statements 

import statements

#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results

square = [i**2 for i in range(0,20)]

print(square)


#2. Calculate the first 50 power of two. Use power_of_two as the name of the list.
# Remember to use list comprehensions and to print your results

power_of_two = [2**i for i in range(0,50)]
print(power_of_two)

#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.  
# Remember to use list comprehensions and to print your results
import math

sqrt = [math.sqrt(i) for i in range(0,100)]

print(sqrt)



#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results

my_list = [i for i in reversed(range(0,-11,-1))]

print(my_list)

#5. Find the odd numbers from 1-100. Use odds as the name of the list. 
# Remember to use list comprehensions and to print your results

odds = [i for i in range(1,101) if i % 2 == 0]

print(odds)

#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results

divisible_by_seven = [i for i in range(1,1001) if i % 7 == 0]

print(divisible_by_seven)

#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience

teststring = 'Find all of the words in a string that are monosyllabic'


non_vowels = ''.join([i for i in teststring.lower() if i not in ['a','b','c', 'd']])
print(non_vowels)



#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'. 
# Use capital_letters as the name of the list.  
# Remember to use list comprehensions and to print your results

testString2 = 'The Quick Brown Fox Jumped Over The Lazy Dog'

capital_letters = ''.join([i for i in testString2 if  i.isupper()])

print(capital_letters)



#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.

testString3 = 'The quick brown fox jumped over the lazy dog'

consonants = [i for i in testString3 if i != ' ']

print(consonants)



#10. Find the folders you have in your madrid-oct-2018 local repo. Use files as name of the list.  
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.

#ME FALTA QUITAR LOS ARCHIVOS
files_and_folders = os.listdir('/home/irene/datamad0120')
folders = ''
print(folders)


#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list. 
#You will probably need to import random module
# Remember to use list comprehensions and to print your results

import random

#La lista principal es crear las 4 listas cumpliendo las condiciones de cada una
random_lists = [[random.randrange(0,100) for i in range(10)] for i in range(4)]

print(random_lists)


#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results

list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]

flatten_list = [e for i in list_of_lists for e in i]

print(flatten_list)



#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list. 
# Remember to use list comprehensions and to print your results.

list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], \
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]

floats = [float(e) for i in list_of_lists for e in i] #lista aplanada de floats

floats2 = [[float(i) for i in n] for n in list_of_lists] #lista no aplanada de floats


print(floats)
print(floats2)



#14. Handle the exception thrown by the code below by using try and except blocks. 

try:
    for i in ['a','b','c']:
        print(i**2)    #He añadido los paréntesis aquí para que no me arrojara error
except TypeError:
    print('Unsopported operand type(s)')
except SyntaxError:
    print('Invalid syntax')



#15. Handle the exception thrown by the code below by using try and except blocks. 
#Then use a finally block to print 'All Done.'
# Check in provided resources the type of error you may use. 

x = 5
y = 0

try:
    z = x/y
except ZeroDivisionError:
    print('Division by zero')
finally:
    print('All Done')




#16. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

abc=[10,20,20]

try:
    print(abc[3])
except IndexError:
    print('list index out of range')


#17. Handle at least two kind of different exceptions when dividing a couple of numbers provided by the user. 
# Hint: take a look on python input function. 
# Check in provided resources the type of error you may use. 

x, y = input('Give me two numbers: ').split()

try:
    print('This is your first number ', x)
    print('This is your second number ', y)
    print('The division is equal to ', int(x)/int(y)) 
except ValueError:
    print('Not enough values (expected 2, got 1)')
except SyntaxError:
    print('Invalid syntax')




#18. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

try:
    f = open('testfile','r')
    f.write('Test write this')
except UnsupportedOperation:
    print('Not writable')


#19. Handle the exceptions that can be thrown by the code below using try and except blocks. 
#Hint: the file could not exist and the data could not be convertable to int

try:
    fp = open('myfile.txt')
    line = f.readline()
    i = int(s.strip())
except FileNotFoundError:
    print('No such file or directory')
except NameError:
    print('name 'f' is not defined') #duda
except ValueError:
    print('invalid literal for int() with base 10')



#20. The following function can only run on a Linux system. 
# The assert in this function will throw an exception if you call it on an operating system other than Linux. 
# Handle this exception using try and except blocks. 
# You will probably need to import sys 

def linux_interaction():
    if:
        assert ('linux' in sys.platform), "Function can only run on Linux systems."
    except Exception as e:
        print('Function can only run on Linux systems.')
    print('Doing something.')


# Bonus Questions:

# You will need to make some research on dictionary comprehension to solve the following questions

#21.  Write a function that asks for an integer and prints the square of it. 
# Hint: we need to continually keep checking until we get an integer.
# Use a while loop with a try,except, else block to account for incorrect inputs.



# 22. Find all of the numbers from 1-1000 that are divisible by any single digit besides 1 (2-9). 
# Use results as the name of the list 
results=[]
for number in range(1,1001):
    for digit in range(2,10):
        if number % digit == 0:
            results.append(number)

print(results) #lista con todos los divisores para cada número
print(set(results)) #set con los números que son divisores de algún número


# 23. Define a customised exception to handle not accepted values. 
# You have the following user inputs and the Num_of_sections can not be less than 2.
# Hint: Create a class derived from the pre-defined Exception class in Python

class Num_of_Sections_Error(Exception):
   """Base class for other exceptions"""
   pass

try:
    Total_Marks = int(input("Enter Total Marks Scored: ")) 
    Num_of_Sections = int(input("Enter Num of Sections: "))
    if(Num_of_Sections < 2):
        raise Num_of_Sections_Error
except Num_of_Sections_Error:
    print("El numero de secciones debe ser mayor de 2")

