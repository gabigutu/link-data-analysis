from airflow import DAG
from airflow.providers.standard.operators.python import PythonOperator
from google.cloud import bigquery
from datetime import timedelta, datetime

PROJECT_ID = 'link-hello-gcs'
client = bigquery.Client(project='link_customers')

def load_1k_customers(**kwargs):
    print('Rulez load_1k')
    q_customers = "SELECT * FROM `link-hello-gcs.link_customers.all_customers_native` LIMIT 1000" # 2M entries
    df_first_1000 = client.query(q_customers, project=PROJECT_ID).to_dataframe()
    print(f'Am rulat load_1k, am scos {df_first_1000.size}')

    job_load = client.load_table_from_dataframe(df_first_1000, 'link-hello-gcs.link_customers.all_customers_native')
    print('Am trecut de apelul de load')

    while job_load.state == 'RUNNING':
        print('Jobul de scriere intrari din DF ruleaza')
        job_load.reload()
    print(f'Task-ul de scoatere si insert 1000 de intrari s-a terminat. Acum jobul are starea {job_load.state}')

default_args = {
    'owner': 'link_academy',
    'depends_on_past': False,
    'email_on_failure': False,
    'retries': 2,                   # Incearca de 2 ori daca pica
    'retry_delay': timedelta(minutes=1),    # Pauza de 5 minute intre reincercari
}

with DAG(
    dag_id='load_1000_customers',
    default_args=default_args,
    description='Pipeline ETL de import si load 1000 customers',
    schedule_interval='@daily', # Ruleaza in fiecare zi la 0:00
    start_date=datetime(2026, 1, 1),
    catchup=False, # Nu rula trecutul retroactiv
) as dag:

    task_etl = PythonOperator(
        task_id='load_1k_customers',
        python_callable=load_1k_customers,
    )

    # task_2 = PythonOperator(
    #     task_id='nume_task',
    #     python_callable=nume_functie,
    # )

    # task_2
    task_etl



