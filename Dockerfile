FROM ubuntu:20.04

WORKDIR /opt/todo

COPY requirements.txt requirements-prod.txt .
RUN  python -m pip install -r requirements.txt requirements-prod.txt 

COPY . .

ENTRYPOINT ["./run_server.sh"]
