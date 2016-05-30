################
# Docker file to build a hardened Apache Tomcat image
################

FROM tomcat:jre8
MAINTAINER Eyal Dahari <https://github.com/eyaldahari>
ENV TERM=xterm

#Put more secured server.xml
# Removed server banner
# Added Secure flag in cookie
# Changed SHUTDOWN port and Command
ADD server.xml /usr/local/tomcat/conf/

#Put more secured web.xml
# Replaced default 404, 403, 500 pages
# Will not show server version info up  on errors and exceptions
ADD web.xml /usr/local/tomcat/conf/

#Remove version string from HTTP error messages
#override ServerInfo.properties in catalina.jar
RUN mkdir -p /usr/local/tomcat/lib/org/apache/catalina/util
ADD ServerInfo.properties /usr/local/tomcat/lib/org/apache/catalina/util/ServerInfo.properties

#remove redundant apps and unsecure configurations
RUN rm -rf /usr/local/tomcat/webapps/* ; \
    rm -rf /usr/local/tomcat/work/Catalina/localhost/* ; \
    rm -rf /usr/local/tomcat/conf/Catalina/localhost/*

#make tomcat conf dir read only
RUN chmod -R 400 /usr/local/tomcat/conf

EXPOSE 8080
CMD ["catalina.sh", "run"]