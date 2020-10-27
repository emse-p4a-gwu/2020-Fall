# ------------------------------------------------
# Example function in Python

def isEven(n):
    if (n % 2 == 0):
        return(True)
    return(False)

# ------------------------------------------------
# Quick practice 1:

# Write Python code to do the following:

# 1. Create an object x that stores the value "123"

x = "123"

# 2. Create an object y that is x converted to an integer

y = int(x)

# 3. Write code to confirm that y is indeed an integer

type(y) == int

# 4. Write a logical statement to determine if y is odd or even

(y % 2) == 0


# ------------------------------------------------
# Think-Pair-Share 1

# Write the following two functions in Python code:

# 1. hypotenuse(a, b): Returns the hypotenuse of the two lines of
#    length a and b.


# 2. isRightTriangle(a, b, c): Returns True if the triangle formed by
#    the lines of length a, b, and c is a right triangle and False otherwise.
#    **Hint**: you may not know which value (a, b, or c) is the hypotenuse.


def hypotenuse(a, b):
    return((a**2 + b**2)**0.5)

def isRightTriangle(a, b, c):
    test1 = (c == hypotenuse(a, b))
    test2 = (b == hypotenuse(a, c))
    test3 = (a == hypotenuse(b, c))
    return(test1 or test2 or test3)





# ------------------------------------------------
# Think-Pair-Share 2

# Write the following two functions in Python code:

# 1. factorial(n): Returns the factorial of n, e.g. 3! = 3*2*1 = 6.
#    Note that 0 is a special case, and 0! = 1. Assume n >= 0.

# 2. nthHighestValue(n, x): Returns the nth highest value in a list of
#    numbers. For example, if x = [5, 1, 3], then nthHighestValue(1, x)
#    should return 5, because 5 is the 1st highest value in x, and
#    nthHighestValue(2, x) should return 3 because it's the 2nd highest
#    value in x. Assume that n <= len(x).


def factorial(n):
    if (n == 0):
        return(1)
    result = 1
    for i in range(n-1):
        result = result*i
    return(result)

def nthHighestValue(n, x):
    y = sorted(x, reverse = True)
    return(y[n - 1])


# ------------------------------------------------
# Think-Pair-Share 3

# Write the following two functions in Python code:

# 1. sortString(s): Takes a string s and returns back an alphabetically
#    sorted string. **Hint**: Use list(s) to break a string into a list
#    of letters.

def sortString(s):
    chars = sorted(s)
    return("".join(chars))

sortString("cba") == "abc"
sortString("abedhg") == "abdegh"
sortString("AbacBc") == "ABabcc"

# 2. areAnagrams(s1, s2): Takes two strings, s1 and s2, and returns True if
#    the strings are anagrams, and False otherwise. **Treat lower and upper
#    case as the same letters**.

def areAnagrams(s1, s2):
    s1 = s1.lower()
    s2 = s2.lower()
    return(sortString(s1) == sortString(s2))

areAnagrams("", "") == True
areAnagrams("aabbccdd", "bbccddee") == False
areAnagrams("TomMarvoloRiddle", "IAmLordVoldemort") == True
