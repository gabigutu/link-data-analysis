import pandas as pd

df = pd.read_csv('data/books.csv')
# print(df, type(df))
# print(df.columns, type(df.columns))
# print(df.columns.to_list())
print(df.dtypes) # TODO: Many of them are objects; change them
# print(df['author'], type(df['author'])) # Series
# print(df['Times borrowed'], type(df['Times borrowed']))
# print(df['Times borrowed'].sum())
# print(df[0], type(df[0]))
# print(df.iloc[281])
# df['Year Published New'] = df['Year Published'].astype(float, errors='ignore')
# print(df['Year Published'].filter(items=[1478, 1863]))
print(f"Initial sunt {df['Year Published'].count()} ani")
# print(f"Dupa filtrare sunt {df['Year Published'].filter(regex='([0-9]{4})').count()} ani")
# print(f"Dupa filtrare sunt {df['Year Published'].filter(regex='([0-9]{2}th)').count()} ani")
df['Year Published'] = df['Year Published'].str.extract(pat=r'([0-9]{4})')
df['Year Published'] = df['Year Published'].astype(float, errors='ignore')
# print(df_new.iloc[281])

# print(df['Times borrowed'].isna().sum())
# df['Times borrowed'] = df['Times borrowed'].astype(int)
df['Times borrowed'] = df['Times borrowed'].astype("Int64")
print(df.dtypes)
# df.to_csv('books_new.csv')
print(df['Times borrowed'].map(type).value_counts())

print(df.groupby('Times borrowed').size().plot())