FROM python:3.7

WORKDIR /lbgapp

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT [ "python", "lbg.py" ]