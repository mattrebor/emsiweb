pipeline {
    agent any
    tools {
        maven 'Maven 3.6.0'
    }
    stages {
        stage('Build') {
            steps {
                /* unix
                sh 'env'
                sh 'mvn -B clean package'
                */
                
                bat 'set'
                bat 'mvn -B clean package'
            }
        }

        stage('Deploy') {
            steps {
               /* unix
               sh 'mvn -X tomcat7:deploy-only'
               */
                
               bat 'mvn -X tomcat7:deploy-only' 
            }
        }

        stage('Validate') {
            steps {
                sleep "${EMSIWEB_SLEEP_INTERVAL}"

                httpRequest consoleLogResponseBody: true,
                url: "${EMSIWEB_VALIDATION_URL}",
                validResponseCodes: '200',
                validResponseContent: "Deployed Tag: ${env.TAG_NAME}"
            }
        }

    }
    post {
            always {

                emailext to: "jenkins", body: "${currentBuild.currentResult}: Job ${env.JOB_NAME} build ${env.BUILD_NUMBER}\nDuration: ${currentBuild.duration} ms",
                recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']],
                subject: "Jenkins Build : ${currentBuild.currentResult} ${env.JOB_NAME}"

            }
    }
}
