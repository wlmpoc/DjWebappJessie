FROM debian:jessie
RUN apt-get update
RUN adduser --disabled-password --gecos "" wlmdevops
RUN apt-get -y install build-essential python-dev libmysqlclient-dev
RUN apt-get -y install python3 python-pip 
RUN mkdir /home/wlmpoc
RUN chown -R wlmdevops:wlmdevops /home/wlmpoc
RUN mkdir /home/wlmpoc/DjWebJessie
ADD requirements.txt manage.py mysite /home/wlmpoc/DjWebJessie/
RUN pip install -r requirements.txt
WORKDIR /home/wlmpoc/DjWebJessie
