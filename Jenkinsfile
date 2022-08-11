pipeline {
    // add your slave label name
    agent { label 'my_slave1'}
    tools{
        maven 'maven3.8.6'
    }
    stages {
        stage ('Checkout SCM') {

            steps {
			    git branch: 'main', url: 'https://github.com/sushmitha2506/skydevops-maven-repo.git'
            }
        }

        stage ('Build') {

            steps {
               sh 'mvn clean package'
            }
        }
        
        stage ('deploy') {

            steps {
               // update your tomcat server ip accordingly in below command
               sh "scp target/maven-web-application.war  ec2-user@34.224.26.69:/opt/tomcat9/webapps/"
                    
            }
        }

        
    }
}
