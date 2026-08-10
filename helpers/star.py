def sum(a, b, c, d):
    return a + b + c +d

print(sum(1, 2, 3, 4))
print(sum(b=2, c=1, a=3, d=4))
print(sum(1, 2, d=3, c=4))

print('============')

def sum_star(a, b, *, c, d): # * inseamna ca din dreapta stelutei toti parametrii trebuie specificati cu numele lor (nu mai pot fi folositi ca parametri pozitionali)
    return a + b + c +d

# print(sum_star(1, 2, 3, 4)) # sum_star() takes 2 positional arguments but 4 were given
print(sum_star(1, 2, d=3, c=4))
print(sum_star(b=2, c=1, a=3, d=4))

def sum_slash_star(a, b, /, *, c, d): # / inseamna ca din stanga slash-ului toti parametrii trebuie specificati doar pozitional (nu mai pot fi folositi ca parametri cu nume)
    return a + b + c +d

# print(sum_slash_star(1, 2, 3, 4)) # sum_slash_star() takes 2 positional arguments but 4 were given
print(sum_slash_star(2, 3, c=1, d=4))

def sum_something(a, /, b, c, *, d):
    return a + b + c +d

print('============')

# print(sum_something(1, 2, 3, 4)) # sum_something() takes 3 positional arguments but 4 were given
print(sum_something(1, 2, 3, d=4))
# print(sum_something(a=1, b=2, c=3, d=4)) # sum_something() got some positional-only arguments passed as keyword arguments: 'a'
print(sum_something(1, 2, c=3, d=4))
print(sum_something(1, c=2, b=3, d=4))

ploua_afara = True
e_frig = True

print(f'E toamna? {ploua_afara & e_frig}')
