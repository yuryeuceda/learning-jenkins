pipeline {

    agent any
    environment {
        PASS = credentials('DOCKERHUB-PASSWORD')
    }    
    stages {
        stage('Build') {
            steps {
                sh '''
                    echo '[JENKINS] building'
                    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build.sh
                '''
            }
        }
        stage('Test') {
            steps {
                sh '''
                    echo [JENKINS] testing
                    /pipeline/jenkins/test/test.sh mvn test
                '''

            }
        }
        stage('Push') {
            steps {
                sh '''
                    echo [JENKINS] pushing
                    /pipeline/jenkins/push/push.sh
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                    echo [JENKINS] deploying last time
                    /pipeline/jenkins/deploy/deploy.sh
                '''
            }
        }
    }
}
