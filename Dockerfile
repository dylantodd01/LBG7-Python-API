FROM python:latest

WORKDIR /lbgapp

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT [ "python", "lbg.py" ]