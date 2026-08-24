import matplotlib.pyplot as plt

def func_args(*args): # multiple /positional/ arguments
    print(args, type(args))
    for arg in args:
        print(arg)
    print(f'args[3]: {args[3]}')

# func_args(90, 10, 13)
# func_args(90, 10, 13, 'vasile', True)
# func_args(90, 10, 'vasile', 13, True)

def func_args(test, *args):
    print(test, type(test))
    print(args, type(args))
    for arg in args:
        print(arg)

# func_args(90, 10, 13)
# func_args(90, 10, 13, 'vasile', True)
# func_args(90, 10, 'vasile', 13, True)
# func_args(test=90, 10, 13) # does not work (cannot have positional arguments after named arguments)
# func_args(90, 10, test=13) # does not work (doesnt know if test is 90 or 13)

def func_args(*args, test):
    print(test, type(test))
    print(args, type(args))
    for arg in args:
        print(arg)

# func_args(90, 10, 13)
# func_args(90, 10, test=13) # test parameter is now available as named parameter
# func_args(test=90, 10, 13) # does not work (cannot have positional arguments after named arguments)

def key_args(**kwargs): # multiple /named/ arguments
    print(kwargs, type(kwargs))
    if 'casatorit' in kwargs:
        print('am primit casatorit')
    else:
        print('n-am primit casatorit')

# def key_args(nume, varsta, casatorit): 

# key_args(nume='Vasile', varsta=30, casatorit=True)
# key_args(varsta='Vasile', casatorit=30, nume=True)
# key_args(varsta='Gifel', aljdajdajdloasjdlajdad=31)

# key_args('Vasile', varsta=30, casatorit=True) # does not work

def key_args(name, **kwargs):
    print(f'Nume: {name}')
    print(kwargs)

# key_args(name='Vasile', varsta=30, casatorit=True)
# key_args('Gigel', varsta=30, casatorit=True)
# key_args(varsta=30, casatorit=False, name='Teo')

# key_args(varsta=30, casatorit=True, 'dadadas') # does not work

# def both_args(**kwargs, *args): # does not work (cannot have positional arguments after named arguments)
    # pass

# def both_args(*args, **kwargs):
#     print(args, type(args))
#     print(kwargs, type(kwargs))

# both_args(90, 10, 13, nume='Vasile', varsta=30, casatorit=True)
# both_args(90, 10, 13, 'vasile', True,  nume='Vasile', varsta=30, casatorit=True)
# both_args(90, 10, 13, 'vasile', True,  nume='Vasile', varsta=30, casatorit=True, dkahdakjhdkahdhkahkd=434)

def both_args(name, *args, **kwargs):
    print(args, type(args))
    print(kwargs, type(kwargs))

# both_args(90, 10, 13, nume='Vasile', varsta=30, casatorit=True)
# both_args(name=90, 10, 13, nume='Vasile', varsta=30, casatorit=True) # does not work (cannot have positional arguments after named arguments)
# both_args(10, 13, name=90, nume='Vasile', varsta=30, casatorit=True) # does not work (doesnt know if test is 90 or 10)

def both_args(*args, name, **kwargs):
    print(name)
    print(args, type(args))
    print(kwargs, type(kwargs))

# both_args(90, 10, 13, nume='Vasile', varsta=30, casatorit=True) # does not work (missing 1 required keyword-only argument: 'name')
# both_args(90, 10, 13, name='1332', nume='Vasile', varsta=30, casatorit=True)
# both_args(90, 10, 13,  nume='Vasile', varsta=30, name='1332', casatorit=True)
# both_args(90, 10, 13,  nume='Vasile', varsta=30, name='1332', casatorit=True, daldakjhdjahdjahdjkahjkdhakdha=False)

def my_plot(*args, scalex=True, **kwargs):
    print(args, type(args))
    if isinstance(args[0], list):
        print(f'am primit lista: {args[0]}')
    else:
        print(f'Am primit altceva pe pozitia 0')

    if scalex == False:
        print('scalex a venit False')

    accepted_named_params = ['agg_filter']

    if bool(kwargs) != False:
        chei = list(kwargs.keys())
        for cheie in chei:
            if cheie not in accepted_named_params:
                raise AttributeError(f"Line2D.set() got an unexpected keyword argument '{cheie}'")

    
my_plot(90, 10)
my_plot([90, 82], [10, 17], scalex=False)
# my_plot(90, 10, dafafaafaf='Test') # throws error because this is how body of function is implemented
# my_plot([90, 82], [10, 17], scalex=False, dafafaafaf='Test') # throws error because this is how body of function is implemented
my_plot([90, 82], [10, 17], scalex=False, agg_filter='Test')

def my_bar(x, height, width=1, /, bottom=None, *, align='center', data=None, **kwargs):
    pass

my_bar(3, 100)
my_bar(3, 100, 1, 2)
my_bar(3, 100, 1, 2, align='left')
# my_bar(x=3, height=100, width=1, bottom=2, align='left') # x and height are only positional because of /

# TODO: Add * and / 