pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''docker-compose build'''
            }
        }
        stage('Test') {
            steps {
                sh '''docker image tag hello-gradle:latest hello-gradle:MAIN-1.0.${BUILD_NUMBER}-${GIT_COMMIT}'''
            }
        }
        stage('Deploy') {
            steps {
                sh '''docker compose up -d'''
            }
        }
    }
}