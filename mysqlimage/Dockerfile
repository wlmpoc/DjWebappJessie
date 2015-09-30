FROM centos:6
MAINTAINER Sathya Raghunathan
RUN yum -y update;yum -y upgrade
RUN yum -y install mysql-server mysql-client
RUN nohup /usr/bin/mysqld_safe --bind-address=0.0.0.0 &
