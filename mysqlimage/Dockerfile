FROM centos:6
MAINTAINER Sathya Raghunathan
RUN yum -y update;yum -y upgrade
RUN yum -y install mysql-server mysql-client
RUN sed -i "s/.sock$/.sock\nbind-address=0.0.0.0/" /etc/my.cnf
RUN service mysqld start;echo "create database emp;CREATE USER 'djwebappjessie'@'%' IDENTIFIED BY 'djwebappjessie';GRANT ALL PRIVILEGES ON emp.* to 'djwebappjessie'@'%';FLUSH PRIVILEGES;use mysql;UPDATE user SET Password=PASSWORD('wlmdevops') WHERE User='root';" >> /root/empdb.sql
RUN cat /root/empdb.sql
RUN echo "/etc/init.d/mysqld \$1;mysql -u root -h localhost < /root/empdb.sql;tailf /dev/null " >> /root/startdb.sh 
RUN cat /root/startdb.sh
RUN chmod ugo+x /root/startdb.sh
EXPOSE 3306
