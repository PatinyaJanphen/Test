n= int(input('Number: '))
print('n:',n)

for i in range(1,n+1):
    for y in range(1,n-i+1):
        print(' ',end='')
    print('*',end='')

    for y in range(1,(i*2)-2):
        print(' ',end='')
    if i!=1:
        print('*',end='')
    print()    