FROM tomee
COPY /var/jenkins_home/workspace/jenkins-CI-job/target/maven-web-application.war /usr/local/tomee/webapps/
EXPOSE 8080
