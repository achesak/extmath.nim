# extmath.nim is a math library for the Nimrod programming language.
# It is a port of the extmath.js JavaScript library, and was made as a way to
# help teach myself to program in Nimrod. It should work fully, but as I'm new
# to this language I can't guarantee that it will always follow the best practices.

# Code released under the MIT open source license.


# Import the existing math module.
import math


# add([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# sum of all the ints in x
proc add(x : openarray[int]): int =
    var a : int = 0
    for i in low(x)..high(x):
        a += x[i]
    return a


# add([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# sum of all the floats in x
proc add(x : openarray[float]): float =
    var a : float = 0
    for i in low(x)..high(x):
        a += x[i]
    return a


# subtract([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# difference of all the ints in x
proc subtract(x : openarray[int]): int =
    var a : int = x[0]
    for i in (low(x)+1)..high(x):
        a -= x[i]
    return a


# subtract([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# difference of all the floats in x
proc subtract(x : openarray[float]): float =
    var a : float = x[0]
    for i in (low(x)+1)..high(x):
        a -= x[i]
    return a


# multiply([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# product of all the ints in x
proc multiply(x : openarray[int]): int =
    var a : int = 1
    for i in low(x)..high(x):
        a *= x[i]
    return a


# multiply([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# product of all the floats in x
proc multiply(x : openarray[float]): float =
    var a : float = 1
    for i in low(x)..high(x):
        a *= x[i]
    return a


# divide([int])
# ARGUMENTS:
# x - array of inta
# RETURNS:
# quotient of all the ints in x
proc divide(x : openarray[int]): float =
    var a : float = toFloat(x[0])
    for i in (low(x)+1)..high(x):
        a /= toFloat(x[i])
    return a


# divide([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# quotient of all the floats in x
proc divide(x : openarray[float]): float =
    var a : float = x[0]
    for i in (low(x)+1)..high(x):
        a /= x[i]
    return a


# modulus([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# modulus of all the ints in x
proc modulus(x : openarray[int]): int =
    var a : int = x[0]
    for i in (low(x)+1)..high(x):
        a = a mod x[i]
    return a


# modulus([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# modulus of all the floats in x
proc modulus(x : openarray[float]): int =
    var a : int = toInt(x[0])
    for i in (low(x)+1)..high(x):
        a = a mod toInt(x[i])
    return a


# factorial(int)
# ARGUMENTS:
# x - int
# RETURNS:
# factorial of x
proc factorial(x : int): int = 
    if x  <= 1:
        return 1
    else:
        return x * factorial(x - 1)


# range([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# range of all the ints in x
proc range2(x : openarray[int]): int = 
    return max(x) - min(x)


# range([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# range of all the floats in x
proc range2(x : openarray[float]): float = 
    return max(x) - min(x)


# mean([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# mean of all the ints in x
proc mean(x : openarray[int]): float =
    return add(x) / len(x)


# mean([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# mean of all the floats in x
proc mean(x : openarray[float]): float =
    return add(x) / toFloat(len(x))


# isInRange(int x, int y, int z)
# ARGUMENTS:
# x - int
# y - int
# z - int
# RETURNS:
# true if x is greater than or equal to y and less than or equal to z, false otherwise
proc isInRange(x : int, y : int, z : int): bool = 
    if x >= y and x <= z:
        return true
    else:
        return false


# isInRange(float x, float y, float z)
# ARGUMENTS:
# x - float
# y - float
# z - float
# RETURNS:
# true if x is greater than or equal to y and less than or equal to z, false otherwise
proc isInRange(x : float, y : float, z : float): bool = 
    if x >= y and x <= z:
        return true
    else:
        return false


# isInRange2(int x, int y, int z)
# ARGUMENTS:
# x - int
# y - int
# z - int
# RETURNS:
# true if x is greater than y and less than z, false otherwise
proc isInRange2(x : int, y : int, z : int): bool = 
    if x > y and x < z:
        return true
    else:
        return false


# isInRange2(float x, float y, float z)
# ARGUMENTS:
# x - float
# y - float
# z - float
# RETURNS:
# true if x is greater than y and less than z, false otherwise
proc isInRange2(x : float, y : float, z : float): bool = 
    if x > y and x < z:
        return true
    else:
        return false


# sign(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# 0 if x is 0, -1 if x is negative, and 1 if x is positive
proc sign(x : int): int =
    if x > 0:
        return 1
    elif x < 0:
        return -1
    else:
        return 0


# sign(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# 0 if x is 0, -1 if x is negative, and 1 if x is positive
proc sign(x : float): int =
    if x > 0:
        return 1
    elif x < 0:
        return -1
    else:
        return 0


# crt(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# cube root of x
proc crt(x : int): float =
    return math.pow(toFloat(x), (1 / 3))


# crt(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# cube root of x
proc crt(x : float): float =
    return math.pow(x, (1 / 3))


# rt(int x, float y)
# ARGUMENTS:
# x - int
# y - float
# RETURNS:
# x to the y power
proc rt(x : int, y : float): float =
    return math.pow(toFloat(x), (1 / y))


# rt(float x, float y)
# ARGUMENTS:
# x - float
# y - float
# RETURNS:
# x to the y power
proc rt(x : float, y : float): float =
    return math.pow(x, (1 / y))


# isEven(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# true if x is even, and false otherwise
proc isEven(x : int): bool =
    return x mod 2 == 0


# isOdd(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# true if x is odd, and false otherwise
proc isOdd(x : int): bool = 
    return x mod 2 != 0


# isPrime(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# true if x is prime, and false otherwise
proc isPrime(x : int): bool = 
    if x mod 2 == 0:
        return x == 2
    if x mod 3 == 0:
        return x == 3
    var m : float = math.sqrt(toFloat(x))
    var i : int = 5;
    while toFloat(i) <= m:
        if x mod i == 0:
            return false
        if x mod (i + 2) == 0:
            return false
        i += 6
    return true


# median([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# median of numbers in x; median is the middle number, or average of the two middle numbers
proc median(x : openarray[float]): float =
    if isOdd(len(x)):
        echo(math.floor(len(x) / 2))
        return x[toInt(math.floor(len(x) / 2))]
    else:
        var a : float = x[toInt(len(x) / 2)]
        var b : float = x[toInt((len(x) / 2) - 1)]
        return (a + b) / 2


# random2()
# ARGUMENTS:
# [none]
# RETURNS:
# random float between 0 and 1
proc random2(): float = 
    return math.random(1.0)


# random_range(int x, int y)
# ARGUMENTS:
# x - int
# y - int
# RETURNS:
# random float between x and y
proc random_range(x : int, y : int): float =
    return (random2() * toFloat((y - x + 1))) + toFloat(x)


# random_range(float x, float y)
# ARGUMENTS:
# x - float
# y - float
# RETURNS:
# random float between x and y
proc random_range(x : float, y : float): float = 
    return (random2() * (y - x + 1.0)) + x


# isInteger(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# true if x can be converted to an int exactly, and false otherwise
proc isInteger(x : float): bool =
    return math.floor(x) == math.ceil(x)


# isNatural(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# true if x is an integer, and false otherwise
proc isNatural(x : int): bool = 
    return x > 0


# stdDev([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# standard deviation of the floats in x
proc stdDev(x : openarray[float]): float = 
    var a : float = add(x)
    var b : float = a / toFloat(len(x))
    var t : float = 0.0
    for i in low(x)..high(x):
        t += math.pow(x[i] - b, 2)
    var n : float = t / toFloat(len(x) - 1)
    return math.sqrt(n)


# stdDev([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# standard deviation of the ints in x
proc stdDev(x : openarray[int]): float = 
    var a : int = add(x)
    var b : float = toFloat(a) / toFloat(len(x))
    var t : float = 0.0
    for i in low(x)..high(x):
        t += math.pow(toFloat(x[i]) - b, 2)
    var n : float = t / toFloat(len(x) - 1)
    return math.sqrt(n)


# quadEquation1(float a, float b, float c)
# ARGUMENTS:
# a - float
# b - float
# c - float
# RETURNS:
# first result of the quadratic equation with a, b, and c
proc quadEquation1(a : float, b : float, c : float): float = 
    var s : float = (b * b) - (4.0 * a * c)
    var ans : float = (-b + math.sqrt(s)) / (2.0 * a)
    return ans


# quadEquation2(float a, float b, float c)
# ARGUMENTS:
# a - float
# b - float
# c - float
# RETURNS:
# second result of the quadratic equation with a, b, and c
proc quadEquation2(a : float, b : float, c : float): float = 
    var s : float = (b * b) - (4.0 * a * c)
    var ans : float = (-b - math.sqrt(s)) / (2.0 * a)
    return ans

























# ALL THE ARCTAN AND ASIN AND EVERYTHING NEED TO GET DONE
# ALSO WRITE MODE
# EVERYTHING ABOVE THIS POINT IS DONE