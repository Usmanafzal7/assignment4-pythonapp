FROM python:3.10.13-alpine

LABEL name="Python Application" \  
     maintainer="Usman Afzal <usmanafzal587@gmail.com>" \
     summary="Dockerizing this Python Flask Application"

WORKDIR /app

COPY ./requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 8080

CMD ["python", "app.py"]

