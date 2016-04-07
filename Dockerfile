FROM centos:6.6
MAINTAINER The CentOS Project
ADD http://10.0.10.121:8080/view/Demo/job/Demo-ngClassifieds/lastSuccessfulBuild/artifact/ngClassifieds.tar.gz /var/www/html/
RUN yum -y install httpd tar
RUN cd /var/www/html/ && tar -zxf ngClassifieds.tar.gz
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]