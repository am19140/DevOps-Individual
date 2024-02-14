FROM python:3.7

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY python-flask-server-generated /usr/src/app/

RUN pip3 install --no-cache-dir -r requirements.txt
RUN python setup.py install

COPY . /usr/src/app

EXPOSE 8080

ENTRYPOINT ["python3"]

CMD ["-m", "swagger_server"]


