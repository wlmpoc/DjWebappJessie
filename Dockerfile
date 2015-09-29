OM debian:latest
RUN apt-get update
RUN mkdir /home/wlmdevops/
RUN adduser --disabled-password --gecos "" --home /home/wlmdevops wlmdevops
RUN apt-get -y install wget unzip build-essential python-dev libmysqlclient-dev
RUN apt-get -y install python3 python-pip 
RUN cd /home/wlmdevops/
RUN wget https://github.com/wlmpoc/DjWebappJessie/archive/master.zip -O application.zip
RUN unzip application.zip
RUN mv DjWebappJessie-master DjWebappJessie
RUN pip install -r DjWebappJessie/requirements.txt
RUN chown -R wlmdevops:wlmdevops /home/wlmdevops/
WORKDIR /home/wlmdevops/DjWebappJessie
