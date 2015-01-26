# extmath.nim is a math library for the Nim programming language.

# Code released under the MIT open source license.


# Import the existing math module.
import math


# add([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# sum of all the ints in x
proc add*(x : openarray[int]): int =
    ## Returns the sum of the ints in x.
    var a : int = 0
    for i in low(x)..high(x):
        a += x[i]
    return a


# add([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# sum of all the floats in x
proc add*(x : openarray[float]): float =
    ## Returns the sum of the floats in x.
    var a : float = 0
    for i in low(x)..high(x):
        a += x[i]
    return a


# subtract([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# difference of all the ints in x
proc subtract*(x : openarray[int]): int =
    ## Returns the difference of the ints in x.
    var a : int = x[0]
    for i in (low(x)+1)..high(x):
        a -= x[i]
    return a


# subtract([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# difference of all the floats in x
proc subtract*(x : openarray[float]): float =
    ## Return the difference of the floats in x.
    var a : float = x[0]
    for i in (low(x)+1)..high(x):
        a -= x[i]
    return a


# multiply([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# product of all the ints in x
proc multiply*(x : openarray[int]): int =
    ## Returns the product of the ints in x.
    var a : int = 1
    for i in low(x)..high(x):
        a *= x[i]
    return a


# multiply([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# product of all the floats in x
proc multiply*(x : openarray[float]): float =
    ## Returns the product of the floats in x.
    var a : float = 1
    for i in low(x)..high(x):
        a *= x[i]
    return a


# divide([int])
# ARGUMENTS:
# x - array of inta
# RETURNS:
# quotient of all the ints in x
proc divide*(x : openarray[int]): float =
    ## Returns the quotient of the ints in x.
    var a : float = toFloat(x[0])
    for i in (low(x)+1)..high(x):
        a /= toFloat(x[i])
    return a


# divide([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# quotient of all the floats in x
proc divide*(x : openarray[float]): float =
    ## Returns the quotient of the floats in x.
    var a : float = x[0]
    for i in (low(x)+1)..high(x):
        a /= x[i]
    return a


# modulus([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# modulus of all the ints in x
proc modulus*(x : openarray[int]): int =
    ## Returns the modulus of the ints in x.
    var a : int = x[0]
    for i in (low(x)+1)..high(x):
        a = a mod x[i]
    return a


# modulus([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# modulus of all the floats in x
proc modulus*(x : openarray[float]): float =
    ## Returns the modulus of the floats in x.
    var a : float = x[0]
    for i in (low(x)+1)..high(x):
        a = a mod x[i]
    return a


# factorial(int)
# ARGUMENTS:
# x - int
# RETURNS:
# factorial of x
proc factorial*(x : int): int = 
    ## Returns the factorial of x.
    if x  <= 1:
        return 1
    else:
        return x * factorial(x - 1)


# range2([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# range of all the ints in x
proc range2*(x : openarray[int]): int =
    ## Returns the range of the ints in x.
    return max(x) - min(x)


# range2([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# range of all the floats in x
proc range2*(x : openarray[float]): float = 
    ## Returns the range of the floats in x.
    return max(x) - min(x)


# mean([int])
# ARGUMENTS:
# x - array of ints
# RETURNS:
# mean of all the ints in x
proc mean*(x : openarray[int]): float =
    ## Returns the mean of the ints in x.
    return add(x) / len(x)


# weightedMean([[float],..,[float]])
# ARGUMENTS:
# x - array of arrays, each with two floats
# RETURNS:
# weighted mean, calculated from the values of the first value
# of the array as the number and the second value as the percentage
proc weightedMean*(x : openarray[array[0..1, float]]): float = 
    ## Returns the weighted mean. The first value of each array must be the number, and the second must be the percentage as a decimal.
    var s : float = 0.0
    for i in low(x)..high(x):
        s += x[i][0] * x[i][1]
    return s


# isInRange(int x, int y, int z)
# ARGUMENTS:
# x - int
# y - int
# z - int
# RETURNS:
# true if x is greater than or equal to y and less than or equal to z, false otherwise
proc isInRange*(x : int, y : int, z : int): bool =
    ## Returns true if x is greater than or equal to y and less than or equal to z, and false otherwise.
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
proc isInRange*(x : float, y : float, z : float): bool = 
    ## Returns true if x is greater than or equal to y and less than or equal to z, and false otherwise.
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
proc isInRange2*(x : int, y : int, z : int): bool = 
    ## Returns true if x is greater than y and less than z, and false otherwise.
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
proc isInRange2*(x : float, y : float, z : float): bool = 
    ## Returns true if x is greater than y and less than z, and false otherwise.
    if x > y and x < z:
        return true
    else:
        return false


# sign(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# 0 if x is 0, -1 if x is negative, and 1 if x is positive
proc sign*(x : int): int =
    ## Returns 0 if x is 0, -1 if x is negative, and 1 if x is positive.
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
proc sign*(x : float): int =
    ## Returns 0 if x is 0, -1 if x is negative, and 1 if x is positive.
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
proc crt*(x : int): float =
    ## Returns the cube root of x.
    return math.pow(toFloat(x), (1 / 3))


# crt(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# cube root of x
proc crt*(x : float): float =
    ## Returns the cube root of x.
    return math.pow(x, (1 / 3))


# rt(int x, float y)
# ARGUMENTS:
# x - int
# y - float
# RETURNS:
# x to the y power
proc rt*(x : int, y : float): float =
    ## Returns x to the y power.
    return math.pow(toFloat(x), (1 / y))


# rt(float x, float y)
# ARGUMENTS:
# x - float
# y - float
# RETURNS:
# x to the y power
proc rt*(x : float, y : float): float =
    ## Returns x to the y power.
    return math.pow(x, (1 / y))


# isEven(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# true if x is even, and false otherwise
proc isEven*(x : int): bool =
    ## Returns true if x is even, and false otherwise.
    return x mod 2 == 0


# isOdd(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# true if x is odd, and false otherwise
proc isOdd*(x : int): bool = 
    ## Returns true if x is odd, and false otherwise.
    return x mod 2 != 0


# isPrime(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# true if x is prime, and false otherwise
proc isPrime*(x : int): bool = 
    ## Returns true if x is prime, and false otherwise.
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
proc median*(x : openarray[float]): float =
    ## Returns the median of floats in x.
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
proc random2*(): float =
    ## Returns random float between 0 and 1.
    return math.random(1.0)


# randomRange(int x, int y)
# ARGUMENTS:
# x - int
# y - int
# RETURNS:
# random float between x and y
proc randomRange*(x : int, y : int): float =
    ## Returns random float between x and y.
    return (random2() * toFloat((y - x + 1))) + toFloat(x)


# randomRange(float x, float y)
# ARGUMENTS:
# x - float
# y - float
# RETURNS:
# random float between x and y
proc randomRange*(x : float, y : float): float = 
    ## Returns random float between x and y.
    return (random2() * (y - x + 1.0)) + x


# isInteger(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# true if x can be converted to an int exactly, and false otherwise
proc isInteger*(x : float): bool =
    ## Returns true if x can be converted to an int exactly, and false otherwise.
    return math.floor(x) == math.ceil(x)


# isNatural(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# true if x is natural, and false otherwise
proc isNatural*(x : int): bool = 
    ## Returns true if x is natural, and false otherwise.
    return x > 0


# stdDev([float])
# ARGUMENTS:
# x - array of floats
# RETURNS:
# standard deviation of the floats in x
proc stdDev*(x : openarray[float]): float = 
    ## Returns the standard deviation of the floats in x.
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
proc stdDev*(x : openarray[int]): float = 
    ## Returns the standard deviation of the ints in x.
    var a : int = add(x)
    var b : float = toFloat(a) / toFloat(len(x))
    var t : float = 0.0
    for i in low(x)..high(x):
        t += math.pow(toFloat(x[i]) - b, 2)
    var n : float = t / toFloat(len(x) - 1)
    return math.sqrt(n)


# quadEquation(float a, float b, float c)
# ARGUMENTS:
# a - float
# b - float
# c - float
# RETURNS:
# sequence containing the results of the quadratic equation with a, b, and c
proc quadEquation*(a : float, b : float, c : float): seq[float] = 
    ## Returns a sequence containing the results of the quadratic equation with a, b, and c.
    var s1 : float = (b * b) - (4.0 * a * c)
    var ans1 : float = (-b + math.sqrt(s1)) / (2.0 * a)
    var s2 : float = (b * b) - (4.0 * a * c)
    var ans2 : float = (-b - math.sqrt(s2)) / (2.0 * a)
    return @[ans1, ans2]


# randomRangeInt(int x, int y)
# ARGUMENTS:
# x - int
# y - int
# RETURNS:
# random int between x and y
proc randomRangeInt*(x : int, y : int): int = 
    ## Returns random int between x and y.
    return math.round(randomRange(x, y))


# randomRangeInt(float x, float y)
# ARGUMENTS:
# x - float
# y - float
# RETURNS:
# random int between x and y
proc randomRangeInt*(x : float, y : float): int = 
    ## Returns random int between x and y.
    return math.round(randomRange(x, y))


# pythagorean(float a, float b, float c)
# ARGUMENTS:
# a - float
# b - float
# c - float
# RETURNS:
# one of the arguments must be 0.0. This value will be returned,
# based on the other two values.
proc pythagorean*(a : float, b : float, c : float): float = 
    ## Returns the computed value. One of the arguments must be 0.0, this value will be returned, based on the other two values.
    if c == 0:
        return math.sqrt((a * a) + (b * b))
    else:
        var x : float = b
        if b == 0:
            x = a
        return math.sqrt((c * c) - (x * x))


# distance(float x[], float y[])
# ARGUMENTS:
# x - [float, float]
# y - [float, float]
# RETURNS:
# distance between the two points x and y
proc distance*(x : openarray[float], y : openarray[float]): float = 
    ## Returns the distance between the points x and y.
    return math.sqrt(math.pow((x[0] - y[0]), 2) + math.pow((x[1] - y[1]), 2))


# distance(int x[], int y[])
# ARGUMENTS:
# x - [int, int]
# y - [int, int]
# RETURNS:
# distance between the two points x and y
proc distance*(x : openarray[int], y : openarray[int]): float = 
    ## Returns the distance between the points x and y.
    return math.sqrt(math.pow((toFloat(x[0]) - toFloat(y[0])), 2) + math.pow((toFloat(x[1]) - toFloat(y[1])), 2))


# midpoint(float x[], float y[])
# ARGUMENTS:
# x - [float, float]
# y - [float, float]
# RETURNS:
# sequence with the midpoint of two points x and y
proc midpoint*(x : openarray[float], y : openarray[float]): seq[float] = 
    ## Returns the midpoint of the points x and y.
    return @[(x[0] + y[0]) / 2, (x[1] + y[1]) / 2]


# midpoint(int x[], int y[])
# ARGUMENTS:
# x - [int, int]
# y - [int, int]
# RETURNS:
# sequence with the midpoint of two points x and y
proc midpoint*(x : openarray[int], y : openarray[int]): seq[float] = 
    ## Returns the midpoint of the points x and y.
    return @[(toFloat(x[0]) + toFloat(y[0])) / 2, (toFloat(x[1]) + toFloat(y[1])) / 2]


# slope(float x, float y)
# ARGUMENTS:
# x - [float, float]
# y - [float, float]
# RETURNS:
# slope of the line that contains the two points x and y
proc slope*(x : openarray[float], y : openarray[float]): float = 
    ## Returns the slope of the line that contains the points x and y.
    return (x[1] - y[1]) / (x[0] - y[0])


# slope(int x, int y)
# ARGUMENTS:
# x - [int, int]
# y - [int, int]
# RETURNS:
# slope of the line that contains the two points x and y
proc slope*(x : openarray[int], y : openarray[int]): float = 
    ## Returns the slope of the line that contains the points x and y.
    return (toFloat(x[1]) - toFloat(y[1])) / (toFloat(x[0]) - toFloat(y[0]))


# midpoint3(x, y)
# ARGUMENTS:
# x - [float, float, float]
# y - [float, float, float]
# RETURNS:
# midpoint of the two points x and y
proc midpoint3*(x : openarray[float], y : openarray[float]): seq[float] = 
    ## Returns the midpoint of the points x and y.
    return @[(x[0] + y[0]) / 2, (x[1] + y[1]) / 2, (x[2] + y[2]) / 2]


# midpoint3(x, y)
# ARGUMENTS:
# x - [int, int, int]
# y - [int, int, int]
# RETURNS:
# midpoint of the two points x and y
proc midpoint3*(x : openarray[int], y : openarray[int]): seq[float] = 
    ## Returns the midpoint of the points x and y.
    return @[(toFloat(x[0]) + toFloat(y[0])) / 2, (toFloat(x[1]) + toFloat(y[1])) / 2, (toFloat(x[2]) + toFloat(y[2])) / 2]


# distance3(x, y)
# ARGUMENTS:
# x - [float, float, float]
# y - [float, float, float]
# RETURNS:
# distance between the two points x and y
proc distance3*(x : openarray[float], y : openarray[float]): float = 
    ## Returns the distance between the points x and y.
    return math.sqrt(math.pow((x[0] - y[0]), 2) + math.pow((x[1] - y[1]), 2) + math.pow((x[2] - y[2]), 2))


# distance3(x, y)
# ARGUMENTS:
# x - [int, int, int]
# y - [int, int, int]
# RETURNS:
# distance between the two points x and y
proc distance3*(x : openarray[int], y : openarray[int]): float = 
    ## Returns the distance between the points x and y.
    return math.sqrt(math.pow((toFloat(x[0]) - toFloat(y[0])), 2) + math.pow((toFloat(x[1]) - toFloat(y[1])), 2) + math.pow((toFloat(x[2]) - toFloat(y[2])), 2))


# gcd(int x, int y)
# ARGUMENTS:
# x - int
# y - int
# RETURNS:
# greatest common divisor of x and y
proc gcd*(x : int, y : int): int = 
    ## Returns the greatest common divisor of x and y.
    var t : int = 0
    var yy : int = y
    var xx : int = x
    while yy != 0:
        t = yy
        yy = xx mod yy
        xx = t
    return x


# lcm(int x, int y)
# ARGUMENTS:
# x - int
# y - int
# RETURNS:
# least common multiple of x and y
proc lcm*(x : int, y : int): float = 
    ## Returns the least common multiple of x and y.
    return x * y / gcd(x, y)


# deg2rad(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# radian equivalent of x degrees
proc deg2rad*(x : float): float = 
    ## Returns the radian equivalent of x degrees.
    return x * (math.PI / 180)


# rad2deg(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# degree equivalent of x radians
proc rad2deg*(x : float): float = 
    ## Returns the degree equivalent of x radians.
    return x * (180 / math.PI)


# dividesEvenly(int x, int y)
# ARGUMENTS:
# x - int
# y - int
# RETURNS:
# true if x can be divided by y with no remainder, and false otherwise
proc dividesEvenly*(x : int, y : int): bool = 
    ## Returns true if x can be divided by y with no remainder, and false otherwise.
    return x mod y == 0


# reverseFactorial(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# number that x is a factorial of, or 0 (zero) is it isn't
proc reverseFactorial*(xx : int): int =
    ## Returns the number that x is a factorial of, or 0 if x isn't a factorial of any number.
    var x : int = xx
    if x < 1:
        return 0
    if x == 1:
        return 1
    if not isEven(x):
        return 0
    var highest : int = 2
    var lastx : int = x
    while true:
        lastx = x
        if lastx mod highest != 0:
            return 0
        x = x div highest
        if x == 1:
            break
        highest += 1
    return highest


# acosec(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse cosecant of x
proc acosec*(x : float): float = 
    ## Returns the inverse cosecant of x.
    return math.arcsin(1 / x)


# acosech(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse hyperbolic cosecant of x
proc acosech*(x : float): float = 
    ## Returns the inverse hyperbolic cosecant of x.
    if x < 0:
        return math.ln((1 - math.sqrt(1 + x * x)) / x)
    else:
        return math.ln((1 + math.sqrt(1 + x * x)) / x)


# acosh(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse hyberbolic cosine of x
proc acosh*(x : float): float = 
    ## Returns the inverse hyperbolic cosine of x.
    return math.ln(x + math.sqrt(x * x - 1))


# acot(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse cotangent of x
proc acot*(x : float): float = 
    ## Returns the inverse cotangent of x.
    return math.PI / 2 - math.arctan(x)


# acoth(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse hyperbolic cotangent of x
proc acoth*(x : float): float = 
    ## Returns the inverse hyperbolic cotangent.
    return math.ln((x + 1) / (x - 1)) / 2


# asec(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse secant of x
proc asec*(x : float): float =
    ## Returns the inverse secant of x.
    return math.PI / 2 - math.arcsin(1 / x)


# asech(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse hyperbolic secant of x
proc asech*(x : float): float = 
    ## Returns the inverse hyperbolic secant of x.
    return math.ln((1 + math.sqrt(1 - x * x)) / x)


# asinh(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse hyperbolic sine of x
proc asinh*(x : float): float = 
    ## Returns the inverse hyperbolic sine of x.
    return math.ln(x + math.sqrt(x * x + 1))


# atanh(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse hyperbolic tangent of x
proc atanh*(x : float): float = 
    ## Returns the inverse hyperbolic tangent of x.
    return math.ln((1 + x) / (1 - x)) / 2


# cosec(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# cosecant of x
proc cosec*(x : float): float = 
    ## Returns the cosecant of x.
    return 1 / math.sin(x)


# cosech(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# hyperbolic cosecant of x
proc cosech*(x : float): float = 
    ## Returns the hyperbolic cosecant of x.
    return 2 / (math.exp(x) - math.exp(-x))


# cot(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# cotangent of x
proc cot*(x : float): float = 
    ## Returns the cotangent of x.
    return 1 / math.tan(x)


# coth(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# hyperbolic cotangent of x
proc coth*(x : float): float = 
    ## Returns the hyperbolic cotangent of x.
    return (math.exp(x) + math.exp(-x)) / (math.exp(x) - math.exp(-x))


# sec(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# secant of x
proc sec*(x : float): float = 
    ## Returns the secant of x.
    return 1 / math.cos(x)


# sech(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# hyperbolic secant of x
proc sech*(x : float): float = 
    ## Returns the hyperbolic secant of x.
    return 2 / (math.exp(x) + math.exp(-x))


# SQRT3: square root of three
let SQRT3* : float = math.sqrt(3)
# GOLDEN: golden ratio
let GOLDEN* : float = (1 + math.sqrt(5)) / 2
# DELIAN: Delian constant
let DELIAN* : float = math.pow(2, (1 / 3))
# SIN45: sine of 45 degrees
let SIN45* : float = math.sqrt(2) / 2
# COS45: cosine of 45 degrees
let COS45* : float = math.sqrt(2) / 2
# TAN45: tangent of 45 degrees
let TAN45* : float = 1
# SIN30: sine of 30 degrees
let SIN30* : float = 1 / 2
# COS30: cosine of 30 degrees
let COS30* : float = math.sqrt(3) / 2
# TAN30: tangent of 30 degrees
let TAN30* : float = 1 / math.sqrt(3)
# SIN60: sine of 60 degrees
let SIN60* : float = math.sqrt(3) / 3
# COS60: cosine of 60 degrees
let COS60* : float = 1 / 2
# TAN60: tangent of 60 degrees
let TAN60* : float = math.sqrt(3)
# SIN90: sine of 90 degrees
let SIN90* : float = 1
# COS90: cosine of 90 degrees
let COS90* : float = 0
# TAN90: tangent of 90 degrees
let TAN90* : float = NaN
# SIN180: sine of 180 degrees
let SIN180* : float = 0
# COS180: cosine of 180 degrees
let COS180* : float = -1
# TAN180: tangent of 180 degrees
let TAN180* : float = 0
# SIN270: sine of 270 degrees
let SIN270* : float = -1
# COS270: cosine of 270 degrees
let COS270* : float = 0
# TAN270: tangent of 270 degrees
let TAN270* : float = NaN
# SIN360: sine of 360 degrees
let SIN360* : float = 0
# COS360: cosine of 360 degrees
let COS360* : float = 1
# TAN360: tangent of 360 degrees
let TAN360* : float = 0
