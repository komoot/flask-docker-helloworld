FROM python:3.8-slim-buster

RUN apt-get update && apt-get -y upgrade

ADD requirements.txt /srv/helloworld/
RUN pip install --no-cache-dir -r /srv/helloworld/requirements.txt

ADD . /srv/helloworld/

EXPOSE 5000
CMD python /srv/helloworld/application.py
