pipeline {
    agent any

    options {
        ansiColor('xterm')
    }

    stages {
        stage('Build') {
            steps {
                echo '\033[34mHello\033[0m \033[33mcolorful\033[0m \033[35mworld!\033[0m'
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
                sh 'docker compose up -D'
            }
        }
    }
}