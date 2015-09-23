FROM debian:jessie
RUN apt-get update
RUN adduser --disabled-password --gecos "" wlmdevops
RUN apt-get -y install build-essential python-dev libmysqlclient-dev
RUN apt-get -y install python3 python-pip 
RUN mkdir /home/wlmpoc
RUN chown -R wlmdevops:wlmdevops /home/wlmpoc
RUN mkdir /home/wlmpoc/DjWebJessie
RUN cd /home/wlmpoc/DjWebJessie/
ADD requirements.txt ./
ADD manage.py ./
ADD mysite ./
RUN pip install -r requirements.txt
EXPOSE 8080
WORKDIR /home/wlmpoc/DjWebJessie
