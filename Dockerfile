
FROM python:3

RUN  apt-get update 
RUN apt-get -y install python3 python3-dev python3-pip build-essential libgmp-dev libmpfr-dev libmpc-dev \
&& pip3 install Flask \
&& pip3 install netifaces \



EXPOSE 8080
COPY /app /app

ENTRYPOINT ["/usr/bin/python3", "/app/app.py"]
