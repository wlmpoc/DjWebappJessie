FROM centos:6
MAINTAINER Sathya Raghunathan
RUN yum -y update;yum -y upgrade
RUN yum -y install mysql-server mysql-client
RUN sed -i "s/.sock$/.sock\nbind-address=0.0.0.0/" /etc/my.cnf
RUN echo "/usr/bin/mysqld_safe;tail -f /dev/null" >> /root/startdb.sh 
RUN chmod ugo+x /root/startdb.sh
CMD [ "/usr/bin/mysqld_safe" , "-DFOREGROUND" ]
