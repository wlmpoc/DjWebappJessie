FROM debian:latest
RUN apt-get update
RUN mkdir /home/wlmdevops/
RUN adduser --disabled-password --gecos "" --home /home/wlmdevops wlmdevops
RUN apt-get -y install wget unzip build-essential python-dev libmysqlclient-dev mysql-client
RUN apt-get -y install python3 python-pip 
RUN cd /home/wlmdevops/;wget https://github.com/wlmpoc/DjWebappJessie/archive/master.zip -O application.zip
RUN cd /home/wlmdevops/;unzip application.zip
RUN cd /home/wlmdevops/;mv DjWebappJessie-master DjWebappJessie
RUN pip install -r /home/wlmdevops/DjWebappJessie/requirements.txt
RUN mkdir /home/wlmdevops/DjWebappJessie/backupdir/
RUN chown -R wlmdevops:wlmdevops /home/wlmdevops/
WORKDIR /home/wlmdevops/DjWebappJessie
EXPOSE 8081
