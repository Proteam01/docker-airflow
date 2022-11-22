FROM python:3.9.15-bullseye

COPY requirements.txt .

RUN pip3 install -r requirements.txt

RUN mkdir /root/airflow -p

COPY airflow.cfg /root/airflow

RUN airflow db init

# RUN airflow users create --username admin --firstname Admin --lastname Admin --role Admin --email admin@admin.com --password admin

WORKDIR /app
