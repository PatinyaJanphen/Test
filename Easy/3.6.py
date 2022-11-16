n= int(input('Number: '))
print('n:',n)
t=1

if n!=1:
  for y in range(1,n):
    if y==1:
      print(('A'*(n-y)) + '+' + ('B'*(n-y)))
    else:
      print(('A'*(n-y)) + '+' + ('E'*t) + '+' + ('B'*(n-y)))
      t=t+2      
    
  print('+'+'E'*((n*2)-3)+'+')
  
  t=t-2
  for y in range(1,n):
      if n-y>1:
        print(('C'*y) + '+' + ('E'*t) + '+' + ('D'*y))
      else:
        print(('C'*y) + '+' + ('D'*y))
      t=t-2 
else:
  print('+')
