n= int(input('Number: '))
print('n:',n)

# even number
if n%2==0:
    z=int((n/2)+1)
    # top
    for i in range(1,n):
        if i%2!=0:
            for x in range(1,z-1):
                print(' ',end='')
            for y in range(1,i+1):
                print('*',end='')    
            z=z-1
            print()

    # bottom
    for i in range(1,n):
        if i%2!=0:
            for x in range(1,z):
                print(' ',end='')
            for y in range(1,n-i+1):
                print('*',end='')    
            z=z+1
            print()
# even number
elif n%2!=0:
    z=int((n/2)+1)
    # odd number
    # top
    for i in range(1,n):
        if i%2==0:
            for x in range(1,z):
                print(' ',end='')
            for y in range(1,i):
                print('*',end='')    
            z=z-1
            print()

    # bottom
    for i in range(1,n+2):
        if i%2==0:
            for x in range(1,z):
                print(' ',end='')
            for y in range(1,n-i+3):
                print('*',end='')    
            z=z+1
            print()