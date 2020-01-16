#Example:  

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

print(my_listComprehension)

#Insert here the module/library import statements 
import math
#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results
cuadrados = [i**2 for i in range(1,20)]
print(cuadrados)

#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.  
# Remember to use list comprehensions and to print your results

raices = [math.sqrt(i) for i in range(1,100)]
print(raices)

#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results

my_list = [i for i in (range(-10,1))]
print(my_list)

#5. Find the odd numbers from 1-100. Use odds as the name of the list. 
# Remember to use list comprehensions and to print your results

odds = [i for i in range (0,100) if i%2 == 0]
print(odds)

#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results

divisible_by_seven = [i for i in range (0,100) if i%7 == 0]
print(divisible_by_seven)

#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience
teststring = 'Find all of the words in a string that are monosyllabic'

vocales = ["a", "e", "i", "o", "u"," "]
non_vowels = "".join([i for i in teststring if i not in vocales])
print(non_vowels)

#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'. 
# Use capital_letters as the name of the list.  
# Remember to use list comprehensions and to print your results

frase = "The Quick Brown Fox Jumped Over The Lazy Dog"
capital_letters = [i for i in frase if i.isupper()]
print(capital_letters)

#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.

frase = "The Quick Brown Fox Jumped Over The Lazy Dog"
vocales = ["a", "e", "i", "o", "u"," "]
consonantes = "".join([i for i in frase if i not in vocales])
print(consonantes)

#10. Find the folders you have in your datamad0120 local repo. Use files as name of the list.  
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.

import os

files = os.listdir("/Users/soyungalgo/documents/github/datamad0120")
print(files)

#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list. 
#You will probably need to import random module
# Remember to use list comprehensions and to print your results

import random
random_lists = [random.sample(range(100),10) for _ in range(4)]
print (random_lists)

#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results

list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]
flatten_list = [b for a in list_of_lists for b in a]
print(flatten_list)

#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list. 
# Remember to use list comprehensions and to print your results.

list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], \
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]
floats = [float(b) for a in list_of_lists for b in a]
print(floats)

#14. Handle the exception thrown by the code below by using try and except blocks. 

for i in ['a','b','c']:
    print i**2