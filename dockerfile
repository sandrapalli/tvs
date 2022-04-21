FROM ubuntu: latest
RUN apt-get update
RUN apt-get install wget
RUN /opt/tomcat/
RUN wget http://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz -P /tmp
RUN tar -xvf apache-tomcat-9.0.27.tar.gz
RUN mv apache-tomcat-9.0.27 tomcat9 
EXPOSE 8080
CMD /opt/tomcat/tomcat9/bin/catalina.sh run
COPY /target/webapp.war /opt/tomcat/tomcat9/bin/webapps
