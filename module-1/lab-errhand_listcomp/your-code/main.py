#Example: 

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

print(my_listComprehension)

#Insert here the module/library import statements 

import math as m
import glob
import os
import random as rd
import sys

#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results

square = [m.pow(i, 2) for i in range(1, 21)]
print(f"1. square: {square}")

#2. Calculate the first 50 power of two. Use power_of_two as the name of the list.
# Remember to use list comprehensions and to print your results

powerOfTo = [m.pow(2, i) for i in range(1, 51)]
print(f"2. powerOfTo: {powerOfTo}")

#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.
# Remember to use list comprehensions and to print your results

sqrt = [m.sqrt(i) for i in range(1, 101)]
print(f"3. sqrt: {sqrt}")

#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results

myList = [i for i in range(-10, 1)]
print(f"4. myList: {myList}")

#5. Find the odd numbers from 1-100. Use odds as the name of the list.
# Remember to use list comprehensions and to print your results

odds = [i for i in range(1, 101, 2)]
print(f"5. odds: {odds}")

#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results

divisibleBySeven = [i for i in range(7, 101, 7)]
print(f"6. divisibleBySeven: {divisibleBySeven}")

#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience

vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
teststring = 'Find all of the words in a string that are monosyllabic'
nonVowels = [i for i in teststring if i not in vowels]
print("7. nonVowels:", " ".join(nonVowels))

#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'.
# Use capital_letters as the name of the list.
# Remember to use list comprehensions and to print your results

teststring2 = 'The Quick Brown Fox Jumped Over The Lazy Dog'
capitalLetters = [i for i in teststring2 if i.isupper()]
print("8. capitalLetters:", " ".join(capitalLetters))

#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.

teststring3 = 'The quick brown fox jumped over the lazy dog'
consonants = [i for i in teststring3 if i not in vowels]
print("9. consonantes:", "".join(consonants))

#10. Find the folders you have in your madrid-oct-2018 local repo. Use files as name of the list.
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.

files = [i.split("\\")[-1] for i in glob.glob(r"C:\Users\Eduardo\Desktop\iron-hack\datamad0120\*") if os.path.isdir(i)]
print("10. files:", ", ".join(files))

#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list.
#You will probably need to import random module
# Remember to use list comprehensions and to print your results

randomLists = [[rd.randint(0, 100) for i in range(10)] for i in range(4)]
print(f"11. randomLists: {randomLists}")

#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results

list_of_lists = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
flatteList = [e for i in list_of_lists for e in i]
"""
for i in list_of_lists:
    for e in i:
        print(e)
"""
print(f"12. flatteList: {flatteList}")


#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list.
# Remember to use list comprehensions and to print your results.

list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], \
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]
floats = [float(e) for i in list_of_lists for e in i]
print(f"13. floats: {floats}")

#14. Handle the exception thrown by the code below by using try and except blocks.

try:
    for i in ['a','b','c']:
        print(pow(i, 2))
except Exception as e:
    print(f"14. Excepción ejercicio 14 capturada: {e}")

#15. Handle the exception thrown by the code below by using try and except blocks.
#Then use a finally block to print 'All Done.'
# Check in provided resources the type of error you may use.

try:
    x = 5
    y = 0
    z = x / y
except Exception as e:
    print(f"15. Excepción ejercicio 15 capturada: {e}")
finally:
    print("All Done")

#16. Handle the exception thrown by the code below by using try and except blocks.
# Check in provided resources the type of error you may use.

try:
    abc = [10, 20, 20]
    print(abc[3])
except Exception as e:
    print(f"16. Excepción ejercicio 16 capturada: {e}")

#17. Handle at least two kind of different exceptions when dividing a couple of numbers provided by the user.
# Hint: take a look on python input function.
# Check in provided resources the type of error you may use.

while(1):
    try:
        dividendo = int(input("Introduccir dividendo: "))
        divisor = int(input("Introduccir divisor: "))
        print(f"17. Resultado división: {dividendo / divisor}")
        break
    except ValueError:
        print("Debe introduccir un número")
    except ZeroDivisionError:
        print("No se puede dividir por 0")

#18. Handle the exception thrown by the code below by using try and except blocks.
# Check in provided resources the type of error you may use.

try:
    f = open('testfile', 'r')
    f.write('Test write this')
except Exception as e:
    print(f"18. Excepción ejercicio 18 capturada: {e}")

#19. Handle the exceptions that can be thrown by the code below using try and except blocks.
#Hint: the file could not exist and the data could not be convertable to int

try:
    fp = open('myfile.txt')
    line = f.readline()
    i = int(s.strip())
except Exception as e:
    print(f"19. Excepción ejercicio 19 capturada: {e}")

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
    print(f"20. Excepción ejercicio 19 capturada: {e}")

# Bonus Questions:

# You will need to make some research on dictionary comprehension to solve the following questions

#21.  Write a function that asks for an integer and prints the square of it.
# Hint: we need to continually keep checking until we get an integer.
# Use a while loop with a try,except, else block to account for incorrect inputs.

while(1):
    try:
        number = int(input("Introduccir un número: "))
        print(f"21. La raíz cuadrada de {number} es {m.sqrt(number)}")
        break
    except Exception:
        print("Debes introduccir un número")

# 22. Find all of the numbers from 1-1000 that are divisible by any single digit besides 1 (2-9).
# Use results as the name of the list

def numberDivisible(number):
    for i in range(2, 10):
        if number % i == 0:
            return True
    return False

results = [i for i in range(1, 1001) if numberDivisible(i)]
print(results)

# 23. Define a customised exception to handle not accepted values.
# You have the following user inputs and the Num_of_sections can not be less than 2.
# Hint: Create a class derived from the pre-defined Exception class in Python

class MyException(Exception):
    def __init__(self):
        Exception.__init__(self, "Num of Sections no puede ser menor que 2")

try:
    Total_Marks = int(input("Enter Total Marks Scored: "))
    Num_of_Sections = int(input("Enter Num of Sections: "))
    if Num_of_Sections < 2:
        raise MyException
except MyException as e:
    print(f"23. {e}")

