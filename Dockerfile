FROM debian:jessie
RUN mkdir /home/wlmdevops/; \
    adduser --disabled-password --gecos "" --home /home/wlmdevops wlmdevops;
RUN apt-get update; \
    apt-get -y install wget unzip build-essential python-dev libmysqlclient-dev mysql-client python3 python-pip
RUN cd /home/wlmdevops/; \ 
    wget https://github.com/wlmpoc/DjWebappJessie/archive/master.zip -O application.zip;\
    unzip application.zip; \
    mv DjWebappJessie-master DjWebappJessie; \
    cd DjWebappJessie;mkdir backupdir; \
    chown -R wlmdevops:wlmdevops /home/wlmdevops/
RUN pip install -r /home/wlmdevops/DjWebappJessie/requirements.txt
RUN su - wlmdevops
WORKDIR /home/wlmdevops/DjWebappJessie
EXPOSE 8082
