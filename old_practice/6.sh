#!/usr/bin/python

def fib(n):
    a, b = 0, 1
    fib = [a, ]
    for i in range(n):
        a, b = b, a+b
        fib.append(a)
    print fib
fib(10)

def fib2(n):
		if n == 0: 
		    return 0
		if n == 1:
		    return 1
		return fib2(n-1)+fib2(n-2)
print fib2(10)

def fib3(n):
		if n == 0:
		    return 0
		if n == 1:
		    return [0, 1]
		fibs = [0, 1]
		for i in range(1, n):
			  fibs.append(fibs[-1]+fibs[-2])
		return fibs
print fib3(10)	 
