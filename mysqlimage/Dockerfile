FROM centos:6
MAINTAINER Sathya Raghunathan
RUN yum -y update;yum -y upgrade
RUN yum -y install mysql-server mysql-client
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
RUN nohup /usr/bin/mysqld_safe &
