# Use Tomcat 9 as base image
FROM tomcat:9.0

RUN rm -rf /usr/loacl/tomcat/webapps/ROOT
# Copy your built WAR into Tomcat’s webapps folder
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
