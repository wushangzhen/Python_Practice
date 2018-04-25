#!/usr/bin/python
array = []
while True:
    number = raw_input("input number")
    if number == 'n':
        break
    else:
        array.append(int(number))
array.sort()
print array
#x = int(raw_input("input x"))
#y = int(raw_input("input y"))
#z = int(raw_input("input z"))
print len(array)
for i in range(len(array)):
    for j in range(i, len(array)):
        if array[i] > array[j]: 
            temp = array[i]
            array[i] = array[j]
            array[j] = temp

print array	
