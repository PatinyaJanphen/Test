n= int(input('Number: '))
print('n:',n)

for i in range(1,n+1):
    for x in range(n-i):
        print(' ',end='')
    for y in range(1,i+1):
        print('*',end='')
    print()