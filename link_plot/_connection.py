# Connect to MySQL
from mysql.connector import connect as mysql_connect

connection = mysql_connect(
    host='127.0.0.1',
    port=3307,
    user='root', # 'root'
    password='', # ''
    database='academy'
)
