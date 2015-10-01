FROM debian:jessie

RUN apt-get update; \
    apt-get -y install wget unzip python-dev libmysqlclient-dev python-pip; \
    mkdir /home/wlmdevops/; \
    adduser --disabled-password --gecos "" --home /home/wlmdevops wlmdevops;

RUN cd /home/wlmdevops/; \ 
    wget https://github.com/wlmpoc/DjWebappJessie/archive/master.zip -O application.zip;\
    unzip application.zip; \
    mv DjWebappJessie-master DjWebappJessie; \
    cd DjWebappJessie;mkdir backupdir; \
    chown -R wlmdevops:wlmdevops /home/wlmdevops/; \
    pip install -r /home/wlmdevops/DjWebappJessie/requirements.txt; \
    su - wlmdevops; \
    echo "python manage.py migrate; python manage.py runserver 0.0.0.0:8082" > startup.sh

WORKDIR /home/wlmdevops/DjWebappJessie
EXPOSE 8082
