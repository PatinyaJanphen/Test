print('Is it a leap year?')
year= int(input('Year: '))

if year%400==0 or (year%4==0 and year%400!=0 and year%100!=0):
    print('Result: Ture')
else :
    print('Result: False')