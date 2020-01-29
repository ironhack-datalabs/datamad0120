#Example: 

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

#print(my_listComprehension)

#Insert here the module/library import statements 

import pandas as pd
import math as m

#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results

square = [e**2 for e in eggs]
print(square)

square20 = [e**2 for e in range(1,21)]
print(square20)

#2. Calculate the first 50 power of two. Use power_of_two as the name of the list.
# Remember to use list comprehensions and to print your results

power_of_two = [2**e for e in range(1,51)]
print(power_of_two)


#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.  
# Remember to use list comprehensions and to print your results

sqrt = [m.sqrt(e) for e in range(1,101)]
print(sqrt)

#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results

my_list = [e for e in range(-10,0)]
print(my_list)





#5. Find the odd numbers from 1-100. Use odds as the name of the list. 
# Remember to use list comprehensions and to print your results

odds = [e for e in range(1,101) if e % 2 == 1]
print(odds)




#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results

divisible_by_seven = [e for e in range(1001) if e % 7 == 0]
print(divisible_by_seven)



#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience

teststring = 'Find All of the words in a string that are monosyllabic'

non_vowels = [e for e in teststring if e.lower() not in "aeiou"]
print(non_vowels)
print("".join(non_vowels))




#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'. 
# Use capital_letters as the name of the list.  
# Remember to use list comprehensions and to print your results

fox = "The Quick Brown Fox Jumped Over The Lazy Dog"
capital_letters = [e for e in fox if e.isupper()]
print(capital_letters)




#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.

fox2 = "The quick brown fox jumped over the lazy dog"
consonants_letters = [e for e in fox if e.lower() not in "aeiou "]
print(consonants_letters)



#10. Find the folders you have in your madrid-oct-2018 local repo. Use files as name of the list.  
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.

import os
os.chdir('/home/edu/datamad0120-1/')
print(os.getcwd())
os.walk('/home/edu/datamad0120-1/')

# Method 1
files = [e for e in os.walk('/home/edu/datamad0120-1/')]
print(files)

# Method 2
files2 = [e for e in os.listdir('/home/edu/datamad0120-1/')]
print(files2)


#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list. 
#You will probably need to import random module
# Remember to use list comprehensions and to print your results

import random
rand = random.randrange(101)

random_lists = [[random.randrange(101) for e in range(11)] for e in range(4)]
print(random_lists)


#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results

list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]
flatten_list = [e for e in list_of_lists for e in e]
print(flatten_list)

# Clearer syntax
list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]
flatten_list = [number for list in list_of_lists for number in list]
print(flatten_list)

# Equivalent to:
flatten_list=[]
for list in list_of_lists:
    for number in list:
        flatten_list.append(number)

print(flatten_list)


#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list. 
# Remember to use list comprehensions and to print your results.

list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], \
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]

# Method 1
floats = [float(number) for list in list_of_lists for number in list]
print(floats)

# Method 2(preserves nested lists)
floats2 = [[float(number) for number in list] for list in list_of_lists]
print(floats2)

#14. Handle the exception thrown by the code below by using try and except blocks. 


for i in ['a','b','c']:
    try:
        print (i**2)
    except: 
        print("An error occured for argument:",i)
    

#15. Handle the exception thrown by the code below by using try and except blocks. 
#Then use a finally block to print 'All Done.'
# Check in provided resources the type of error you may use. 

# Zero division error:
x = 5
y = 0

def division(x,y):
    try:
        return x/y
    except ZeroDivisionError:
        print("Cannot divide by zero")
    except:
        print("Unexpected error")

print(division(x,y))

# Other error:
x = 5
y = "a"

print(division(x,y))

 #16. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

abc=[10,20,20]
try:
    print(abc[3])
except IndexError:
    print("IndexError: list index out of range")


#17. Handle at least two kind of different exceptions when dividing a couple of numbers provided by the user. 
# Hint: take a look on python input function. 
# Check in provided resources the type of error you may use. 

try:
    input("Give me a number")/input("Give me a second number")
except TypeError:
    print("The programmer forgot to convert the strings to integers, what a dork")

try:
    int(input("Give me the numerator"))/int(input("Give me the denominator"))
except ZeroDivisionError:
    print("The answer is infinity")


#18. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

# Import io library in order to be able to handle writing error
import io

try:
    f = open('test.txt','r')
    f.write('Test write this')
except FileNotFoundError:
    print("Could not find file, check location!")
except io.UnsupportedOperation:
    print("File not open for writing")
except:
    print("Uknown error")


#19. Handle the exceptions that can be thrown by the code below using try and except blocks. 
#Hint: the file could not exist and the data could not be convertable to int

import io

try:
    f = open('test.txt','r')
    line = f.readline()
    i = int(f.strip())
except FileNotFoundError:
    print("Could not find file, check location!")
except io.UnsupportedOperation:
    print("File not open in correct mode (i.e. read, writing or appending)")
except NameError:
    print("A variable is not defined!")
except AttributeError:
    print("Probably that the file is not open in the right mode")
    

#20. The following function can only run on a Linux system. 
# The assert in this function will throw an exception if you call it on an operating system other than Linux. 
# Handle this exception using try and except blocks. 
# You will probably need to import sys 

import sys
def linux_interaction():
    assert ('MacOS' in sys.platform), "Function can only run on Linux systems."
    print('Doing something.')

# I have Linux, so I can't do this exercise :'(


# Bonus Questions:

# You will need to make some research on dictionary comprehension to solve the following questions

#21.  Write a function that asks for an integer and prints the square of it. 
# Hint: we need to continually keep checking until we get an integer.
# Use a while loop with a try,except, else block to account for incorrect inputs.

def sq_int():
    try:
        print(int(input())**2)
    except:
        sq_int()

sq_int()
    




# 22. Find all of the numbers from 1-1000 that are divisible by any single digit besides 1 (2-9). 
# Use results as the name of the list 


def div_by_over1(n):
    for div in range(2,10):
        if n % div ==0:
            return True
    #return False (this code is not needed for the exercise)

results = [n for n in range(1,1001) if div_by_over1(n)]
print(results)

#results2 = [n for n in range(1,1001) if div_by_over1(n)]

# 23. Define a customised exception to handle not accepted values. 
# You have the following user inputs and the Num_of_sections can not be less than 2.
# Hint: Create a class derived from the pre-defined Exception class in Python

class ValueNotAccepted(Exception):
    pass

try:
    Total_Marks = int(input("Enter Total Marks Scored: "))
except:
    print("We cannot accept that value, type in an int")
    raise ValueNotAccepted
    



Num_of_Sections = int(input("Enter Num of Sections: "))


