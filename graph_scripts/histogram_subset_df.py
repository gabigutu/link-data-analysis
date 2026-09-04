# This script expects the number of iterations you want to run and an output folder
# Example run: python histogram_subset.py 5 output
import pandas as pd
import matplotlib.pyplot as plt
import sys
from db_connection import connection

my_cursor = connection.cursor(dictionary=True)

no_runs = 1
output_folder = 'output'

no_params = len(sys.argv)
if (no_params > 1):
    no_runs = int(sys.argv[1])
    if (no_params > 2):
        output_folder = sys.argv[2]

for i in range(no_runs): # [0; no_runs - 1]
    my_cursor.execute("SELECT * FROM store.payments WHERE channel = 'Physical - Downtown' ORDER BY RAND() LIMIT 0,666")
    df_downtown = pd.DataFrame(my_cursor.fetchall())
    my_cursor.execute("SELECT * FROM store.payments WHERE channel = 'Physical - Suburban' ORDER BY RAND() LIMIT 0,667")
    df_suburban = pd.DataFrame(my_cursor.fetchall())
    my_cursor.execute("SELECT * FROM store.payments WHERE channel = 'Online' ORDER BY RAND() LIMIT 0,667")
    df_online = pd.DataFrame(my_cursor.fetchall())
    df_2k = pd.concat([df_downtown, df_suburban, df_online], ignore_index=True)
    df_2k_cheap = df_2k [ df_2k['amount'].between(0, 213.6) ] 

    plt.hist(list(df_2k_cheap['amount']), bins=15)
    plt.savefig(f'{output_folder}/payments_2000_script_{i + 1}.svg')
    plt.clf()
