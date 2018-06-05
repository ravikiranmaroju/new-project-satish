FROM tomcat8

COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY grants.war /usr/local/tomcat/webapps/
RUN sh /usr/local/tomcat/bin/catalina.sh stop
RUN sleep 30
RUN sh /usr/local/tomcat/bin/catalina.sh start
