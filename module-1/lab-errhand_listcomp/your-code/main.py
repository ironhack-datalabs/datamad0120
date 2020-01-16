#Example: 

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

print(my_listComprehension)

#Insert here the module/library import statements 

import math as m
import os
import random as rd
import sys


#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results

square = [int(m.pow(2,e)) for e in range(1,21)]
print(int(1.))
print(square)  


#2. Calculate the first 50 power of two. Use power_of_two as the name of the list.
# Remember to use list comprehensions and to print your results

power_of_two = [int(m.pow(e,2)) for e in range(1,51)]
print(int(2.))
print(power_of_two)

#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.  
# Remember to use list comprehensions and to print your results

sqrt = [m.sqrt(e) for e in range(1,100)]
print(int(3.))
print(sqrt)

#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results

my_list = [e for e in range(-10,1)]
print(int(4.))
print(my_list)

#5. Find the odd numbers from 1-100. Use odds as the name of the list. 
# Remember to use list comprehensions and to print your results

odds = [e for e in range(1,100) if e%2 != 0]
print(int(5.))
print(odds)

#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results

divisible_by_seven = [e for e in range(1,1000) if e%7 == 0]
print(int(6.))
print(divisible_by_seven)


#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience

teststring = 'Find all of the words in a string that are monosyllabic'

volwes = ('a','e','i','o','u')
non_vowels = [e for e in teststring if e not in volwes]
print(int(7.))
print(non_vowels)


#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'. 
# Use capital_letters as the name of the list.  
# Remember to use list comprehensions and to print your results

sentence = 'The Quick Brown Fox Jumped Over The Lazy Dog'
capital_letters = [e for e in sentence if e == e.upper() and e != ' ']
print(int(8.))
print(capital_letters)


#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.

sentence2 = 'The quick brown fox jumped over the lazy dog'
consonants = [e for e in sentence2 if e not in volwes and e != ' ']
print(int(9.))
print(consonants)


#10. Find the folders you have in your madrid-oct-2018 local repo. Use files as name of the list.  
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.

import glob
files = [i.split('/')[-1] for i in glob.glob('/Users/marilomolinacandela/*') if os.path.isdir(i)]
print(int(10.))
print(files)

#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list. 
#You will probably need to import random module
# Remember to use list comprehensions and to print your results

random_list = [[rd.randint(0,100) for e in range(0,10)] for e in range(4)]
print(int(11.))
print(random_list)


#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results

list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]
flatten_list = [n for l in list_of_lists for n in l]

print(int(12.))
print(flatten_list)


#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list. 
# Remember to use list comprehensions and to print your results.

list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], \
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]

floats = [float(n) for l in list_of_lists for n in l]
print(int(13.))
print(floats)


#14. Handle the exception thrown by the code below by using try and except blocks. 

print(int(14.))
try:
    for i in ['a','b','c']:
        print(pow(2,i))
except Exception as e:
    print(e)

#15. Handle the exception thrown by the code below by using try and except blocks. 
#Then use a finally block to print 'All Done.'
# Check in provided resources the type of error you may use. 

x = 5
y = 0
print(int(15.))

try:
    z = x/y
except Exception as e:
    print(e)

finally:
    print('All Done')



#16. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

print(int(16.))
try:
    abc=[10,20,20]
    print(abc[3])
except Exception as e:
    print(e)


#17. Handle at least two kind of different exceptions when dividing a couple of numbers provided by the user. 
# Hint: take a look on python input function. 
# Check in provided resources the type of error you may use. 

print(int(17.))

while True:
    try:
        dividendo = int(input("Elige un dividendo -> "))
        divisor = int(input("Elige un divisor -> "))
        division = dividendo / divisor
        print(division)
        break
    except ZeroDivisionError as z:
        print(z)
    except ValueError as v:
        print(v)  

#18. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

print(int(18.))
try:
    f = open('testfile','r')
    f.write('Test write this')
except Exception as e:
    print(e)



#19. Handle the exceptions that can be thrown by the code below using try and except blocks. 
#Hint: the file could not exist and the data could not be convertable to int

print(int(19.))
try:
    fp = open('myfile.txt')
    line = f.readline()
    i = int(s.strip())
except Exception as e:
    print(e)



#20. The following function can only run on a Linux system. 
# The assert in this function will throw an exception if you call it on an operating system other than Linux. 
# Handle this exception using try and except blocks. 
# You will probably need to import sys 

def linux_interaction():
    try:
        assert ('linux' in sys.platform), "Function can only run on Linux systems."
        print('Doing something.')
    except Exception as e:
        raise(e)
try:
    linux_interaction()
except Exception as e:
    print(e)

"""
# Bonus Questions:

# You will need to make some research on dictionary comprehension to solve the following questions

#21.  Write a function that asks for an integer and prints the square of it. 
# Hint: we need to continually keep checking until we get an integer.
# Use a while loop with a try,except, else block to account for incorrect inputs.




# 22. Find all of the numbers from 1-1000 that are divisible by any single digit besides 1 (2-9). 
# Use results as the name of the list 




# 23. Define a customised exception to handle not accepted values. 
# You have the following user inputs and the Num_of_sections can not be less than 2.
# Hint: Create a class derived from the pre-defined Exception class in Python

Total_Marks = int(input("Enter Total Marks Scored: ")) 
Num_of_Sections = int(input("Enter Num of Sections: "))


"""