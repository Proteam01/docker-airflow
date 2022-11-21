from airflow.models.dag import DAG
from airflow.operators.empty import EmptyOperator
from datetime import datetime


default_args = {
    'owner': 'Carl',
    'schedule_interval': '0 0 19 * *',
    'start_date': datetime(2022, 11, 20),
}


with DAG(
    "example_carl",
    default_args=default_args,
    catchup=False,
) as dag:
    start = EmptyOperator(task_id='start')
    end = EmptyOperator(task_id='end')

start >> end
