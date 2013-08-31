# extmath.nim is a math library for the Nimrod programming language.
# It is a port of the extmath.js JavaScript library, and was made as a way to
# help teach myself to program in Nimrod. It should work fully, but as I'm new
# to this language I can't guarantee that it will always follow the best practices.

# Code released under the MIT open source license.


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
    return add(x) / toFloat(len(x))


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
proc isInRange(x : int, y : int, z : int): bool = 
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
proc isInRange(x : float, y : float, z : float): bool = 
    if x > y and x < z:
        return true
    else:
        return false























# EVERYTHING ABOVE THIS POINT IS DONE