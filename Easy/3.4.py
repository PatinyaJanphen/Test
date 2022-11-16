n= int(input('Number: '))
print('n:',n)

for i in range(0,n):
    for x in range(0,n):
        if(i==x or x==n-1-i):
            print('*',end='')
        else:
            print(' ',end='')
    print()