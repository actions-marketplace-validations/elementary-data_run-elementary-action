FROM python:3.8

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY edr_stager_dbt_project edr_stager_dbt_project
COPY entrypoint.py entrypoint.py

CMD [ "python", "entrypoint.py" ]
