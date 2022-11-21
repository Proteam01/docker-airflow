FROM python:3.9.15-bullseye

COPY requirements.txt .

RUN  pip install -r requirements.txt

RUN airflow db init

COPY airflow.cfg /root/airflow

RUN airflow users create --username admin --firstname Admin --lastname Admin --role Admin --email admin@admin.com --password admin

WORKDIR /app

