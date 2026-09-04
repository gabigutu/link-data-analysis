# This script expects the number of iterations you want to run and an output folder
# Example run: python histogram_subset.py 5 output percentage
import pandas as pd
import matplotlib.pyplot as plt
import sys
from db_connection import connection

my_cursor = connection.cursor(dictionary=True)

no_runs = 1
output_folder = 'output'
percentage = 100

no_params = len(sys.argv)
if (no_params > 1):
    no_runs = int(sys.argv[1])
    if (no_params > 2):
        output_folder = sys.argv[2]
        if (no_params > 3):
            percentage = min(int(sys.argv[3]), 100)

my_cursor.execute("SELECT COUNT(*) AS total FROM store.payments")
count = my_cursor.fetchone()
# percentage = 30
subtotal = count['total'] * (percentage/100) # 30K

for i in range(no_runs): # [0; no_runs - 1]
    my_cursor.execute(f"(SELECT * FROM store.payments WHERE channel = 'Physical - Downtown' ORDER BY RAND() LIMIT 0,{int(subtotal//3)}) " \
    "UNION" \
    f"(SELECT * FROM store.payments WHERE channel = 'Physical - Suburban' ORDER BY RAND() LIMIT 0,{int(subtotal//3)}) " \
    "UNION" \
    f"(SELECT * FROM store.payments WHERE channel = 'Online' ORDER BY RAND() LIMIT 0,{int(subtotal//3)})")
    df_2k = pd.DataFrame(my_cursor.fetchall())
    df_2k_cheap = df_2k [ df_2k['amount'].between(0, 213.6) ] 

    plt.hist(list(df_2k_cheap['amount']), bins=15)
    plt.title(f'Histogram of {percentage}% of payments')
    plt.savefig(f'{output_folder}/payments_{percentage}_percentage_{i + 1}.svg')
    plt.clf()
