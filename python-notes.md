# Stat 992 notes for coding in Python

odds = [1,3,5]


# adding to lists
odds = odds + [7,9]
odds += [7,9]


# but better to use "append"
odds.append(11)


# making a new list containing old values and a new one
odds = [odds, 13]


# then odds = a list containing 2 objects: [1,3,5,7,9,11] and [13]
# so `print(odds)` would result in:
odds= [[1, 3, 5, 7, 9, 11], 13]


# ways of removing elements from a list
odds = [1, 3, 5, 7, 9]
del odds[0]
print(odds)
odds = [3, 5, 7, 9]

a = odds.pop()
print(a)  ## a = 9
print(odds)  ## odds = [3, 5, 7]


# reverse order of a list
odds.reverse()
odds  ## [7, 5, 3]


# splitting a string
taxon = "Drosophila melanogaster"
genus = taxon[0:10]
print("genus:", genus)  ## genus: Drosophila
species = taxon[11:]
print("species:", species)  ## species: melanogaster


gslist = taxon.split(' ')
print(gslist)  ## ['Drosophila', 'melanogaster']


print(taxon)                   ## Drosophila melanogaster
print(taxon.replace(' ','_'))  ## Drosophila_melanogaster
print(taxon)                   ## Drosophila melanogaster


mystring = "\t hello world\n \n"
mystring  ##'\t hello world\n \n'


print('mystring.strip(): "' + mystring.rstrip() + '"')


chromosomes = ["X", "Y", "2", "3", "4"]
last = chromosomes[-1]
print("last:", last)


last = 21
print("last:", last)
print(chromosomes)


# Tuples
# Immutable
# ex: array sizes, function arguments
a = (1.2, "hello world")
a[0] = 1.5  ## results in TypeError 'tuple' object does not support item assignment


left = 'L'
right = 'R'

temp = left
left = right
right = temp


(left, right) = (right, left)  ## can flip what values are equal to more easily/efficiently with tuples
left, right = right, left  ## can omit parentheses


# adding and multiplying lists
odds = [1, 3, 5, 7]
primes = odds
primes + [2]


primes += [2]
print('primes:', primes)  ## primes: [1, 3, 5, 7, 2]
print('odds:', odds)      ## odds: [1, 3, 5, 7, 2]


odds = [1, 3, 5, 7]
primes = list(odds)
primes += [11]

print(primes)  ## [1, 3, 5, 7, 11]
print(odds)    ## [1, 3, 5, 7]


counts = [2, 4, 6, 8, 10]
counts * 2  ## [2, 4, 6, 8, 10, 2, 4, 6, 8, 10]
sorted(counts * 2)  ## [2, 2, 4, 4, 6, 6, 8, 8, 10, 10]


[num*2 for num in counts]  ## [4, 8, 12, 16, 20]


# same thing for addition
counts + 5  ## Nothing
counts + [5]  ## [2, 4, 6, 8, 10, 5]

newlist = [x+5 for x in counts]  ## [7, 9, 11, 13, 15]

<same as>

newlist = []
for x in counts:
	newlist.append(x+5)
newlist  ## [7, 9, 11, 13, 15]


# if / else statements
num = -3
if num < 0 or "ab"+5 :
	print(num, "is negative")

## this if statement evaluates to "-3 is negative" because it stops before "ab"+5 tries to run

"ab"+5  ## this will not evaluate becuase string and int type opbjects can't be added
