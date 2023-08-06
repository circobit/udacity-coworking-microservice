FROM python:3.10-slim-buster

ADD . /app
WORKDIR /app

RUN apt-get update -y && pip install -r requirements.txt

EXPOSE 5153

ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["python3"]

CMD ["app.py"] 
