FROM python:3.10-slim-buster

RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y gcc python3-dev

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]