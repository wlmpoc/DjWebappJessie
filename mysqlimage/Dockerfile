FROM centos:6
MAINTAINER Sathya Raghunathan
RUN yum -y update;yum -y upgrade
RUN yum -y install mysql-server mysql-client
RUN service mysqld start
EXPOSE 3306
RUN bash
