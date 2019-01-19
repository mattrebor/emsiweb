pipeline {
    agent any
    stages {
        stage('Build') { 
            steps {
                sh '/Users/rob/Downloads/apache-maven-3.6.0/bin/mvn -B clean package' 
            }
        }
        stage('Deploy') {
            steps {
                sh '/Users/rob/Downloads/apache-maven-3.6.0/bin/mvn tomcat7:deploy-only -Dmaven.tomcat.update=true' 
            }
        }
    }
}
