prime_numbers= [2,3,5,7]

for i in range(2,100+1):
    if i%2!=0 and i%3!=0 and i%5!=0 and i%7!=0:
        prime_numbers.append(i)

for i in prime_numbers:
    print(i,end=', ')
print()
print('Prime numbers:',len(prime_numbers))