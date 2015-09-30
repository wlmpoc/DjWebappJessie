FROM centos:6
MAINTAINER Sathya Raghunathan
RUN yum -y update;yum -y upgrade
RUN yum -y install mysql-server mysql-client
RUN sed -i "s/.sock$/.sock\nbind-address=0.0.0.0/" /etc/my.cnf
RUN service mysqld start;echo "create database emp;CREATE USER 'djwebappjessie'@'%' IDENTIFIED BY 'djwebappjessie';GRANT ALL PRIVILEGES ON emp.* to 'djwebappjessie'@'%';FLUSH PRIVILEGES;" >> /root/empdb.sql
RUN cat /root/empdb.sql
RUN service mysqld start;mysql -u root -h localhost < /root/empdb.sql
RUN echo "service mysqld start;/usr/bin/mysqladmin -u root password 'wlmdevops';/usr/bin/mysqladmin -u root --password='wlmdevops' -h employeedb 'wlmdevops' " >> /root/startdb.sh 
RUN cat /root/startdb.sh
