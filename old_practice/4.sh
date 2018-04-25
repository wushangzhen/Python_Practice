#!/usr/bin/python

year = int (raw_input("Input a specific year: "))
month = int (raw_input("Input a specific month: "))
day = int (raw_input("Input a specific day: "))
total_day = 0
month_day_normal_year = ('31', '28', '31', '30', '31', '30', '31', '31', '30', '31', '30', '31')
month_day_not_normal_year = ('31', '29', '31', '30', '31', '30', '31', '31', '30', '31', '30', '31')
for i in range(1, month):
		if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
				total_day += int (month_day_not_normal_year[i-1])
		else:
				total_day += int (month_day_normal_year[i-1])
total_day = total_day + day
print total_day
