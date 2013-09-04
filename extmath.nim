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


# randomRange(int x, int y)
# ARGUMENTS:
# x - int
# y - int
# RETURNS:
# random float between x and y
proc randomRange(x : int, y : int): float =
    return (random2() * toFloat((y - x + 1))) + toFloat(x)


# randomRange(float x, float y)
# ARGUMENTS:
# x - float
# y - float
# RETURNS:
# random float between x and y
proc randomRange(x : float, y : float): float = 
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


# randomRangeInt(int x, int y)
# ARGUMENTS:
# x - int
# y - int
# RETURNS:
# random int between x and y
proc randomRangeInt(x : int, y : int): int = 
    return math.round(randomRange(x, y))


# randomRangeInt(float x, float y)
# ARGUMENTS:
# x - float
# y - float
# RETURNS:
# random int between x and y
proc randomRangeInt(x : float, y : float): int = 
    return math.round(randomRange(x, y))


# pythagorean(float a, float b, float c)
# ARGUMENTS:
# a - float
# b - float
# c - float
# RETURNS:
# one of the arguments must be 0.0. This value will be returned,
# based on the other two values.
proc pythagorean(a : float, b : float, c : float): float = 
    if c == 10:
        return math.sqrt((a * a) + (b * b))
    else:
        var x : float = b
        if b == 0:
            x = a
        return math.sqrt((c * c) - (x * x))


# distance(float x, float y)
# ARGUMENTS:
# x - [float, float]
# y - [float, float]
# RETURNS:
# distance between the two points x and y
proc distance(x : openarray[float], y : openarray[float]): float = 
    return math.sqrt(math.pow((x[0] - y[0]), 2) + math.pow((x[1] - y[1]), 2))


# midpointX(float x, float y)
# ARGUMENTS:
# x - [float, float]
# y - [float, float]
# RETURNS:
# x point of the midpoint of the points x and y
proc midpointX(x : openarray[float], y : openarray[float]): float = 
    return (x[0] + y[0]) / 2


# midpointY(float x, float y)
# ARGUMENTS:
# x - [float, float]
# y - [float, float]
# RETURNS:
# y point of the midpoint of the points x and y
proc midpointY(x : openarray[float], y : openarray[float]): float = 
    return (x[1] + y[1]) / 2


# slope(float x, float y)
# ARGUMENTS:
# x - [float, float]
# y - [float, float]
# RETURNS:
# slope of the line that contains the two points x and y
proc slope(x : openarray[float], y : openarray[float]): float = 
    return (x[1] - y[1]) / (x[0] - y[0])


# areaRect(float x, float y)
# ARGUMENTS:
# x - float
# y - float
# RETURNS:
# area of the rectangle with width x and length y
proc areaRect(x : float, y : float): float = 
    return x * y


# areaTri(float b, float h) 
# ARGUMENTS:
# b - float
# h - float
# RETURNS:
# area of the triangle with base length b and height h
proc areaTri(b : float, h : float): float = 
    return 0.5 * b * h


# areaCircle(float r)
# ARGUMENTS:
# r - float
# RETURNS:
# area of the circle with radius r
proc areaCircle(r : float): float = 
    return math.PI * r * r


# areaParallel(float x, float h)
# ARGUMENTS:
# x - float
# h - float
# RETURNS:
# area of the parallelogram with length x and height h
proc areaParallel(x : float, h : float): float =
    return x * h


# areaTrap(float b1, float b2, float h)
# ARGUMENTS:
# b1 - float
# b2 - float
# h - float
# RETURNS:
# area of the trapezoid with base lengths b1 and b2 and height h
proc areaTrap(b1 : float, b2: float, h : float): float =
    return 0.5 * h * (b1 + b2)


# areaRhom(float d1, float d2)
# ARGUMENTS:
# d1 - float
# d2 - float
# RETURNS:
# area of the rhombus with diagonal lengths d1 and d2
proc areaRhom(d1 : float, d2: float): float = 
    return 0.5 * d1 * d2


# areaEllipse(float a, float b)
# ARGUMENTS:
# a - float
# b - float
# RETURNS:
# area of the ellipse with radii a and b
proc areaEllipse(a : float, b : float): float = 
    return math.PI * a * b


# areaSphere(float r)
# ARGUMENTS:
# r - float
# RETURNS:
# surface area of a sphere with radius r
proc areaSphere(r : float): float = 
    return 4.0 * math.PI * r * r


# areaRectPrism(float x, float y, float z)
# ARGUMENTS:
# x - float
# y - float
# z - float
# RETURNS:
# surface area of the rectangular prism with sides x, y, and z
proc areaRectPrism(x : float, y : float, z : float): float = 
    return 2 * ((x * y) + (x * z) + (y * z))


# areaCone(float r, float h)
# ARGUMENTS:
# r - float
# h - float
# RETURNS:
# surface area of the cone with base radius r and height h
proc areaCone(r : float, h : float): float = 
    return (math.PI * r * math.sqrt((r * r) + (h * h))) + (math.PI * r * r)


# areaPyramid(float x, float h)
# ARGUMENTS:
# x - float
# h - float
# RETURNS:
# surface area of the pyramid with base length x and height h
# NOTE:
# this only works for 4-sided pyramids
proc areaPyramid(x : float, h : float): float = 
    return (x * x) + ((0.5 * math.sqrt((x * x) + (h * h)) * x) * 4.0)


# areaCylinder(float r, float h)
# ARGUMENTS:
# r - float
# h - float
# RETURNS:
# surface area of the cylinder with radius r and height h
proc areaCylinder(r : float, h : float): float =
    return (math.PI * r * r * 2.0) + (h * r * 2.0 * math.PI)


# volRectPrism(float x, float y, float z)
# ARGUMENTS:
# x - float
# y - float
# z - float
# RETURNS:
# volume of the rectangular prism with sides x, y, and z
proc volRectPrism(x : float, y : float, z : float): float = 
    return x * y * z


# volSphere(r)
# ARGUMENTS:
# r - float
# RETURNS:
# volume of the sphere with radius r
proc volSphere(r : float): float =
    return (4 / 3) * math.PI * r * r * r


# volCone(float r, float h)
# ARGUMENTS:
# r - float
# h - float
# RETURNS:
# volume of the cone with base radius r and height h
proc volCone(r : float, h : float): float =
    return (1 / 3) * math.PI * r * r * h


# volPyramid(float x, float h)
# ARGUMENTS:
# x - float
# h - float
# RETURNS:
# volume of the pyramid with base side x and height h
# NOTE:
# this only works for 4-sided pyramids
proc volPyramid(x : float, h : float): float = 
    return (1 / 3) * x * x * h


# volCylinder(float r, float h)
# ARGUMENTS:
# r - float
# h - float
# RETURNS:
# volume of the cylinder with radius r and height h
proc volCylinder(r : float, h : float): float = 
    return math.Pi * r * r * h


# midpoint3X(x, y)
# ARGUMENTS:
# x - [float, float, float]
# y - [float, float, float]
# RETURNS:
# x part of the midpoint of the two points x and y
proc midpoint3X(x : openarray[float], y : openarray[float]): float = 
    return (x[0] + y[0]) / 2


# midpoint3Y(x, y)
# ARGUMENTS:
# x - [float, float, float]
# y - [float, float, float]
# RETURNS:
# y part of the midpoint of the two points x and y
proc midpoint3Y(x : openarray[float], y : openarray[float]): float = 
    return (x[1] + y[1]) / 2


# midpoint3Z(x, y)
# ARGUMENTS:
# x - [float, float, float]
# y - [float, float, float]
# RETURNS:
# z part of the midpoint of the two points x and y
proc midpoint3Z(x : openarray[float], y : openarray[float]): float = 
    return (x[2] + y[2]) / 2


# distance3(x, y)
# ARGUMENTS:
# x - [float, float, float]
# y - [float, float, float]
# RETURNS:
# distance between the two points x and y
proc distance3(x : openarray[float], y : openarray[float]): float = 
    return math.sqrt(math.pow((x[0] - y[0]), 2) + math.pow((x[1] - y[1]), 2) + math.pow((x[2] - y[2]), 2))


# areaSector(float a, float r)
# ARGUMENTS:
# a - float
# r - float
# RETURNS:
# area of the sector with arc length a and radius r
proc areaSector(a : float, r : float): float = 
    return 0.5 * a * r * r


# areaHemi(float r)
# ARGUMENTS:
# r - float
# RETURNS:
# area of the hemisphere with radius r
proc areaHemi(r : float): float = 
    return areaSphere(r) / 2


# volHemi(float r)
# ARGUMENTS:
# r - float
# RETURNS:
# volume of the hemisphere with radius r
proc volHemi(r : float): float = 
    return volSphere(r) / 2


# areaPipe(float r1, float r2, float h)
# ARGUMENTS:
# r1 - float
# r2 - float
# h - float
# RETURNS:
# area of the pipe with outside radius r1, inside radius r2, and height h
proc areaPipe(r1 : float, r2 : float, h : float): float = 
    var a1 : float = math.PI * r1 * 2 * h
    var a2 : float = math.PI * r2 * 2 * h
    var a3 : float = 2 * (areaCircle(r1) - areaCircle(r2))
    return a3 + a1 + a2


# volPipe(float r1, float r2, float h)
# ARGUMENTS:
# r1 - float
# r2 - float
# h - float
# RETURNS:
# volume of the pipe with outside radius r1, inside radius r2, and height h
proc volPipe(r1 : float, r2 : float, h : float): float = 
    return volCylinder(r1, h) - volCylinder(r2, h)


# areaKite(float x, float y)
# ARGUMENTS:
# x - number
# y - number
# RETURNS:
# area of the kite with diagonals x and y
proc areaKite(x : float, y : float): float = 
    return (x * y) / 2


# areaKiteTrig(float x, float y, float theta)
# ARGUMENTS:
# x - float
# y - float
# theta - float
# RETURNS:
# area of the kite with sides x and y (these must be unequal) and included angle theta
proc areaKiteTrig(x : float, y : float, theta: float): float = 
    return x * y * math.sin(theta)


# volPyramid4(float x, float h)
# ARGUMENTS:
# x - float
# h - float
# RETURNS:
# volume of the regular square pyramid with base side x and height h
proc volPyramid4(x : float, h : float): float = 
    return (1 / 3) * x * x * h


# volPyramid3(float x, float h)
# ARGUMENTS:
# x - float
# h - float
# RETURNS:
# volume of the regular triangular pyramid with base side x and height h
proc volPyramid3(x : float, h : float): float = 
    return ((x * ((math.sqrt(3) / 2) * x)) / 2) * (1 / 3) * h


# volPyramid5(float x, float y, float h)
# ARGUMENTS:
# x - float
# y - float
# h - float
# RETURNS:
# volume of the regular pentagonal pyramid with apothem x, base side y, and height h
proc volPyramid5(x : float, y : float, h : float): float = 
    return (5 / 6) * x * y * h


# volPyramidAny(float a, float h)
# ARGUMENTS:
# a - float
# h - float
# RETURNS:
# volume of the pyramid with area a and height h
proc volPyramidAny(a : float, h : float): float = 
    return (1 / 3) * a * h


# gcd(int x, int y)
# ARGUMENTS:
# x - int
# y - int
# RETURNS:
# greatest common divisor of x and y
proc gcd(x : int, y : int): int = 
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
proc lcm(x : int, y : int): float = 
    return x * y / gcd(x, y)


# deg2rad(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# radian equivalent of x degrees
proc deg2rad(x : float): float = 
    return x * (math.PI / 180)


# rad2deg(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# degree equivalent of x radians
proc rad2deg(x : float): float = 
    return x * (180 / math.PI)


# dividesEvenly(int x, int y)
# ARGUMENTS:
# x - int
# y - int
# RETURNS:
# true if x can be divided by y with no remainder, and false otherwise
proc dividesEvenly(x : int, y : int): bool = 
    return x mod y == 0


# polygonAngles(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# sum of the interior angles of a polygon with x sides
proc polygonAngles(x : int): int = 
    return (x - 2) * 180


# areaPyramid3(float x, float h)
# ARGUMENTS:
# x - float
# h - float
# RETURNS:
# area of the regular triangular pyramid with base side x and height h
proc areaPyramid3(x : float, h : float): float =
    return ((math.sqrt(3) * x * x) / 4) + (0.5 * (3 * x)) * math.sqrt(math.pow((math.sqrt(3) * x * x) / 6, 2) + (h * h))


# areaPyramid4(float x, float h)
# ARGUMENTS:
# x - float
# h - float
# RETURNS:
# area of the square pyramid with base side x and height h
proc areaPyramid4(x : float, h : float): float = 
    var s : float = math.sqrt((x * x) + (h * h))
    return (x * x) + ((0.5 * s * x) * 4)



# areaPyramid5(float x, float y, float h)
# ARGUMENTS:
# x - float
# y - float
# h - float
# RETURNS:
# area of the regular pentagonal pyramid with apothem x, base side y, and height h
proc areaPyramid5(x : float, y : float, h : float): float =
    return (0.5 * x * (5 * y)) + (0.5 * math.sqrt((x * x) + (h * h)) * (5 * y))


# reverseFactorial(int x)
# ARGUMENTS:
# x - int
# RETURNS:
# number that x is a factorial of, or 0 (zero) is it isn't
proc reverseFactorial(xx : int): int =
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
proc acosec(x : float): float = 
    return math.arcsin(1 / x)


# acosech(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse hyperbolic cosecant of x
proc acosech(x : float): float = 
    if x < 0:
        return math.ln((1 - Math.sqrt(1 + x * x)) / x)
    else:
        return math.ln((1 + Math.sqrt(1 + x * x)) / x)


# acosh(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse hyberbolic cosine of x
proc acosh(x : float): float = 
    return math.ln(x + math.sqrt(x * x - 1))


# acot(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse cotangent of x
proc acot(x : float): float = 
    return math.PI / 2 - math.arctan(x)


# acoth(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse hyperbolic cotangent of x
proc acoth(x : float): float = 
    return math.ln((x + 1) / (x - 1)) / 2


# asec(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse secant of x
proc asec(x : float): float = 
    return math.PI / 2 - math.arcsin(1 / x)


# asech(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse hyperbolic secant of x
proc asech(x : float): float = 
    return math.ln((1 + math.sqrt(1 - x * x)) / x)


# asinh(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse hyperbolic sine of x
proc asinh(x : float): float = 
    return math.ln(x + math.sqrt(x * x + 1))


# atanh(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# inverse hyperbolic tangent of x
proc atanh(x : float): float = 
    return math.ln((1 + x) / (1 - x)) / 2


# cosec(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# cosecant of x
proc cosec(x : float): float = 
    return 1 / math.sin(x)


# cosech(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# hyperbolic cosecant of x
proc cosech(x : float): float = 
    return 2 / (math.exp(x) - math.exp(-x))


# cosh(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# hyperbolic cosine of x
proc cosh(x : float): float = 
    return (math.exp(x) + math.exp(-x)) / 2


# cot(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# cotangent of x
proc cot(x : float): float = 
    return 1 / math.tan(x)


# coth(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# hyperbolic cotangent of x
proc coth(x : float): float = 
    return (math.exp(x) + math.exp(-x)) / (math.exp(x) - math.exp(-x))


# sec(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# secant of x
proc sec(x : float): float = 
    return 1 / math.cos(x)


# sech(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# hyperbolic secant of x
proc sech(x : float): float = 
    return 2 / (math.exp(x) + math.exp(-x))


# sinh(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# hyperbolic sine of x
proc sinh(x : float): float = 
    return (math.exp(x) - math.exp(-x)) / 2;


# tanh(float x)
# ARGUMENTS:
# x - float
# RETURNS:
# hyperbolic tangent of x
proc tanh(x : float): float = 
    return (math.exp(x) - math.exp(-x)) / (math.exp(x) + math.exp(-x))


# SQRT3: square root of three
let SQRT3 : float = math.sqrt(3)
# GOLDEN: golden ratio
let GOLDEN : float = (1.0 + math.sqrt(5.0)) / 2.0
# DELIAN: Delian constant
let DELIAN : float = math.pow(2, (1 / 3))
# SIN45: sine of 45 degrees
let SIN45 : float = math.sqrt(2) / 2
# COS45: cosine of 45 degrees
let COS45 : float = math.sqrt(2) / 2
# TAN45: tangent of 45 degrees
let TAN45 : float = 1
# SIN30: sine of 30 degrees
let SIN30 : float = 1 / 2
# COS30: cosine of 30 degrees
let COS30 : float = math.sqrt(3) / 2
# TAN30: tangent of 30 degrees
let TAN30 : float = 1 / math.sqrt(3)
# SIN60: sine of 60 degrees
let SIN60 : float = math.sqrt(3) / 3
# COS60: cosine of 60 degrees
let COS60 : float = 1 / 2
# TAN60: tangent of 60 degrees
let TAN60 : float = math.sqrt(3)
# SIN90: sine of 90 degrees
let SIN90 : float = 1
# COS90: cosine of 90 degrees
let COS90 : float = 0
# TAN90: tangent of 90 degrees
let TAN90 : float = NaN
# SIN180: sine of 180 degrees
let SIN180 : float = 0
# COS180: cosine of 180 degrees
let COS180 : float = -1
# TAN180: tangent of 180 degrees
let TAN180 : float = 0
# SIN270: sine of 270 degrees
let SIN270 : float = -1
# COS270: cosine of 270 degrees
let COS270 : float = 0
# TAN270: tangent of 270 degrees
let TAN270 : float = NaN
# SIN360: sine of 360 degrees
let SIN360 : float = 0
# COS360: cosine of 360 degrees
let COS360 : float = 1
# TAN360: tangent of 360 degrees
let TAN360 : float = 0
