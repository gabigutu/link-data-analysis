def increment(x): # nume formal al parametrului
    return x + 1

increment_l = lambda x : x + 1 # x este un nume formal al parametrului

def nume_fata(nume):
    # adauga 'a' la finalul unui nume doar daca nu se termina in 'a'
    return str(nume) + 'a' if nume[-1] != 'a' else nume

def nume_fata_extins(nume):
    if nume[-1] == 'a':
        return nume
    return str(nume) + 'a'

nume_fata_l = lambda nume : str(nume) + 'a' if nume[-1] != 'a' else nume

z = 7
z = increment(z)
print(f'z dupa ce aplicam increment: {z}')

z = 7
z = increment_l(z)
print(f'z dupa ce aplicam increment_l: {z}')

print(f'Incrementand 100 cu functia increment obtinem: {increment(100)}')
print(f'Incrementand 100 cu lambda expression increment_l obtinem: {increment_l(100)}')

print(f'Numele Stefan convertit cu functia nume_fata devine: {nume_fata("Stefan")}')
print(f'Numele Stefan convertit cu lambda expression nume_fata_l devine: {nume_fata_l("Stefan")}')

print(f'Tipul functiei nume_fata este {type(nume_fata)}')
print(f'Tipul lambda expression nume_fata_l este {type(nume_fata_l)}')

print(f'Numele Stefana convertit cu functia nume_fata devine: {nume_fata("Stefana")}')
print(f'Numele Stefana convertit cu lambda expression nume_fata_l devine: {nume_fata_l("Stefana")}')


def afisare(x):
    return print(f'Afisare din functia afisare: {x}')

afisare_l = lambda x : print(f'Afisare din lambda expression afisare_l: {x}')

afisare('Bine ati venit!')
afisare_l('La revedere!')

mesaj = 'Buna seara!'
mesaj = afisare(mesaj)
print(f'mesaj dupa ce aplicam functia afisare: {mesaj}')

mesaj = 'Buna ziua!'
mesaj = afisare_l(mesaj)
print(f'mesaj dupa ce aplicam lambda expression afisare_l: {mesaj}')

nume_fata_l_new = lambda prenume : nume_fata(prenume) + '_F'

# def nume_fata_new(prenume):
#     return nume_fata(prenume)

marcel = 'Marcel'
marcel = nume_fata_l_new(marcel)
print(f'Numele lui Marcel dupa ce am rulat lambda expression nume_fata_l_new: {marcel}')

# lambda param : expression
# lambda param1, param2 : expression

def adunare(a, b = 1):
    return a + b

adunare_l = lambda a, b = 1: a + b

print(f'5 + 4 = {adunare(5, 4)}')
print(f'5 + 4 = {adunare_l(5, 4)}')

print(f'5 + 1 = {adunare(5)}')
print(f'5 + 1 = {adunare_l(5)}')

max_l = lambda a, b: a if a > b else b
print(f'Maxim dintre 700 si 10099391 este {max_l(700, 10099391)}')

# print(f'Minim dintre 700 si 10099391 este {lambda a, b: a if a < b else b}')

numere = [9, 1, 4, 6]

numere_rez = map(increment, numere)
# while True:
#     elem = next(numere_rez)
#     if elem == None:
#         break
#     print(f'Elementul curent: {elem}')

for elem in numere_rez:
    print(f'(1) Noul element curent: {elem}')

for elem in map(increment_l, numere):
    print(f'(2) Noul element curent: {elem}')

for elem in map(lambda x : x + 1, numere):
    print(f'(3) Noul element curent: {elem}')

print(type(numere))
# numere.sort() # sortare in place
# print(numere)

numere = sorted(numere)
print(numere)

catalog = ['Vasile', 'Ionel', 'Paul', 'Adriana', 'Gigel']
print(catalog)
catalog.sort()
print(catalog)

books = [
    ('Harry Potter and the Sorcerres Stone', 350), # '350'
    ('Python Handbook', 314), # '314'
    ('Lord of the Rings', 623) # 'Lord of the Rings'
]
print(books)

def dahkdkadhkad(x):
    return x[1]

# books.sort(key=lambda x : x[1]) # sortare dupa numarul de pagini
# books.sort(key=dahkdkadhkad)
# books.sort(key=lambda x : x[1], reverse=True) # sortare dupa numarul de pagini descrescator
# books.sort(key=dahkdkadhkad, reverse=True)
# books.sort(key=lambda x : len(x[0])) # sortare dupa lungimea titlului
# books.sort(key=lambda x : len(x[0]), reverse=True) # sortare dupa lungimea titlului descrescator
# books.sort(key=lambda x : x[0]) # sortare alfabetica dupa titlu
books.sort(key=lambda x : x[0], reverse=True) # sortare alfabetica dupa titlu descrescator
print(books)

def our_sort(book):
    no_pages = book[1]
    if no_pages % 2 == 0:
        return len(book[0])
    return no_pages
books.sort(key=our_sort)
print(books)

def other_sort(book):
    if book[1] % 2 == 0: # numar de pagini par
        return str(book[1])
    return book[0]
# books.sort(key=other_sort)
books.sort(key=lambda x : str(x[1]) if x[1] % 2 == 0 else x[0])
print(books)

# Pare, impara


persoane = [
    {
        'varsta': 40,
        'prenume': 'Vasile',
        'nume': 'Popescu'
    },
    {
        'varsta': 19,
        'prenume': 'Ionel',
        'nume': 'Anghelescu'
    },
    {
        'varsta': 24,
        'prenume': 'Paul',
        'nume': 'Gheorghe'
    },
    {
        'varsta': 29,
        'prenume': 'Andrei',
        'nume': 'Popescu'
    },
    {
        'varsta': 20,
        'prenume': 'Vasile',
        'nume': 'Popescu'
    },
    {
        'varsta': 55,
        'prenume': 'Adriana',
        'nume': 'Ionescu'
    },
    {
        'varsta': 14,
        'prenume': 'Gigel',
        'nume': 'Frone'
    }
]

def cheie_sortare_persoane(persoana):
    print(f'Am primit: {persoana}')
    return (persoana['nume'], persoana['prenume'], persoana['varsta']) # sortare dupa nume; acolo unde numele este acelasi, dupa prenume; acolo unde numele si prenumele sunt aceleasi, dupa varsta

persoane_new = sorted(persoane, key=cheie_sortare_persoane)
print(persoane_new)

print('===================')

print(persoane)
persoane.sort(key=lambda p : (p['nume'], p['prenume'], p['varsta']) )
print(persoane)

def identity(numar):
    return numar

alte_numere = [87.14, 13.54, 23.96]
alte_numere.sort(key=lambda x : x)
print(alte_numere)

def comparatie(x, y, comp):
    return comp(x, y)

def mai_mic(x, y):
    return x < y

def mai_mare(x, y):
    return x > y

print(comparatie(10, 13, mai_mic))
print(comparatie(20, 13, mai_mare))
print(comparatie(15, 23, lambda x, y: x > y))

numere = [9, 1, 4, 6]

def e_par(x):
    return x % 2 == 0

numere_pare = filter(e_par, numere)
for numar in numere_pare:
    print(numar)

numere_pare = list(filter(lambda x : x % 2 == 0, numere))
print(numere_pare)

numere_pare_incrementate = list(map(lambda x : x + 1, numere_pare))
print(numere_pare_incrementate)
