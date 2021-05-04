pipeline{
    agent any
        environment {
        AWS_ACCESS_KEY_ID = credentials('ACCESS_KEY')
        AWS_SECRET_ACCESS_KEY = credentials('SECRET_ACCESS_KEY')
    }
    tools {
        maven 'Maven 3.6.3'
        jdk 'jdk9'
        nodejs 'node 15.11'
    }
    stages {
        stage('Stage 1 - Build ') {
            steps {
                script {
                        sh 'docker-compose build'
                }
            }
        }
        stage('Stage 2 - Up') {
            steps {
                script {
                        sh 'docker-compose up -d'
                }
            }

       stage('Clean ') {
            steps {
                script {
                        sh 'docker-compose down'
                }
            }
        }
    }
