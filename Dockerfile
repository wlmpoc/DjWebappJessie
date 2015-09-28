FROM debian:latest
RUN apt-get update
RUN adduser --disabled-password --gecos "" --home /home/wlmdevops wlmdevops
RUN apt-get -y install wget unzip build-essential python-dev libmysqlclient-dev
RUN apt-get -y install python3 python-pip 
RUN chown -R wlmdevops:wlmdevops /home/wlmdevops/
RUN mkdir /home/wlmdevops/DjWebappJessie/
RUN cd /home/wlmdevops/DjWebappJessie/
RUN wget https://github.com/wlmpoc/DjWebappJessie/archive/master.zip -O DjWebappJessie.zip
RUN unzip DjWebappJessie.zip
RUN pip install -r requirements.txt
RUN su - wlmpoc
WORKDIR /home/wlmdevops/DjWebappJessie/
